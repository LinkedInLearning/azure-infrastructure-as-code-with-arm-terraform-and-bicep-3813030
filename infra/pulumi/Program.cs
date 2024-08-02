using Pulumi;
using Pulumi.Azure.Core;
using Pulumi.Azure.Storage;
using System.Collections.Generic;

return await Deployment.RunAsync<MyStack>();