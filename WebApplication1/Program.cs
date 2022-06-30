using RestSharp;
using WebApplication1;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();
app.UseHttpsRedirection();

app.MapGet("/joke", async () =>
{
    var client = new RestClient("https://api.chucknorris.io/jokes/random");
    var request = new RestRequest();
    var joke = await client.GetAsync<ApiJoke>(request);

    return new ApiJoke {JokeText = joke.value };
});
app.UseStaticFiles();
app.Run();
