
#r "Microsoft.Azure.Management.Compute"
#r "Microsoft.Rest.ClientRuntime"

using System.Net;
using Microsoft.Azure.Management.Compute;
using Microsoft.Rest;
using Newtonsoft.Json;

public static async Task<HttpResponseMessage> Run(HttpRequestMessage req, TraceWriter log)
{
    dynamic data = await req.Content.ReadAsAsync<object>();
    string vmName = data?.vmName;
    string resourceGroup = data?.resourceGroup;

    // Assume authentication already handled
    // Restart logic goes here (use SDK or REST)

    return req.CreateResponse(HttpStatusCode.OK, $"VM {vmName} in {resourceGroup} will be restarted.");
}
