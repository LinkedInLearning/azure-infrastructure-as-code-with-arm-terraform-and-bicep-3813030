using System.Text.RegularExpressions;

public static class MyMarkdownParser
{
    public static string ConvertMarkdownToHtml(string markdown)
    {
        if (string.IsNullOrEmpty(markdown))
            return string.Empty;

        // Convert headers
        markdown = Regex.Replace(markdown, @"^# (.+)$", "<h1>$1</h1>", RegexOptions.Multiline);
        markdown = Regex.Replace(markdown, @"^## (.+)$", "<h2>$1</h2>", RegexOptions.Multiline);
        markdown = Regex.Replace(markdown, @"^### (.+)$", "<h3>$1</h3>", RegexOptions.Multiline);
        markdown = Regex.Replace(markdown, @"^#### (.+)$", "<h4>$1</h4>", RegexOptions.Multiline);
        markdown = Regex.Replace(markdown, @"^##### (.+)$", "<h5>$1</h5>", RegexOptions.Multiline);
        markdown = Regex.Replace(markdown, @"^###### (.+)$", "<h6>$1</h6>", RegexOptions.Multiline);

        // Convert bold text
        markdown = Regex.Replace(markdown, @"\*\*(.+?)\*\*", "<strong>$1</strong>");
        markdown = Regex.Replace(markdown, @"__(.+?)__", "<strong>$1</strong>");

        // Convert italic text
        markdown = Regex.Replace(markdown, @"\*(.+?)\*", "<em>$1</em>");
        markdown = Regex.Replace(markdown, @"_(.+?)_", "<em>$1</em>");
        
        // Convert pictures
        markdown = Regex.Replace(markdown, @"!\[(.+?)\]\((.+?)\)", "<img src=\"$2\" alt=\"$1\">");

        // Convert links
        markdown = Regex.Replace(markdown, @"\[(.+?)\]\((.+?)\)", "<a href=\"$2\">$1</a>");

        // Convert line breaks
        markdown = markdown.Replace("\n", "<br>");

        // Convert code blocks
        markdown = Regex.Replace(markdown, @"```(.*?)```", "<pre><code>$1</code></pre>", RegexOptions.Singleline);

        // Convert inline code
        markdown = Regex.Replace(markdown, @"`(.+?)`", "<code>$1</code>");


        return markdown;
    }
}
