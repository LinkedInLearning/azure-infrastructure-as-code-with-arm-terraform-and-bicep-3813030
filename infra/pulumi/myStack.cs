using System.Threading.Tasks;
using Pulumi;
using Pulumi.AzureNative.Resources;
using Pulumi.AzureNative.Storage;
using Pulumi.AzureNative.Storage.Inputs;
using Pulumi.AzureNative.Web;
using Pulumi.AzureNative.Web.Inputs;

class MyStack : Stack
{
    public MyStack()
    {
        var appName = "azIaC";
        var envName = "pulumi";
        var rgName = $"{appName}-{envName}-rg";
        var planName = $"{appName}-{envName}-plan";
        var siteName = $"{appName}-{envName}-site";
        
        
        // Create an Azure Resource Group
        var resourceGroup = new ResourceGroup(rgName);
        
        var appServicePlan = new AppServicePlan(planName, new AppServicePlanArgs
        {
        
            ResourceGroupName = resourceGroup.Name,
            Kind = "App",            
            Sku = new SkuDescriptionArgs
            {
                Tier = "Basic",
                Name = "B1",
            },
        });
        
        var app = new WebApp(siteName, new WebAppArgs
        {
            ResourceGroupName = resourceGroup.Name,
            ServerFarmId = appServicePlan.Id,
            SiteConfig = new SiteConfigArgs
            {
                AppSettings = {
                    new NameValuePairArgs{
                        Name = "EnvName",
                        Value = envName,
                    },
                    new NameValuePairArgs{
                        Name = "FavoriteColor",
                        Value = "darkorange"
                    },
                    new NameValuePairArgs{
                        Name = "WEBSITE_RUN_FROM_PACKAGE",
                        Value = "1"
                    },
                },
                ConnectionStrings = {
                },
            }
        });
    }
}