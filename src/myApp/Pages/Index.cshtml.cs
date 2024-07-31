using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace myApp.Pages;

public class IndexModel : PageModel
{
    private readonly ILogger<IndexModel> _logger;
	private readonly IWebHostEnvironment _env;
	private readonly IConfiguration _config;

	public IndexModel(IWebHostEnvironment env, ILogger<IndexModel> logger, IConfiguration config)
	{
		_config = config;
		_env = env;
		_logger = logger;
	}

	public string HtmlContent { get; private set; }

	public void OnGet([FromQuery] string page)
	{
		var startPage = string.IsNullOrEmpty(page) ? _config["StartPage"] : page;
		var filePath = Path.Combine(_env.ContentRootPath, "wwwroot", startPage);
		if (System.IO.File.Exists(filePath))
		{
			var markdown = System.IO.File.ReadAllText(filePath);
			HtmlContent = MyMarkdownParser.ConvertMarkdownToHtml(markdown);
		}
		else
		{
			HtmlContent = $"No content found at {filePath}";
		}
	}

}
