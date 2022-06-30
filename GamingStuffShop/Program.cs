using System.Data.SqlClient;
using Dapper;
using GamingStuffShop.Model;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();
app.UseHttpsRedirection();
const string connection = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Shop;Integrated Security=True";
app.MapGet("/items", async () =>
{
    var cnt = new SqlConnection(connection);
    const string query = "SELECT * FROM Item";
    var items = await cnt.QueryAsync<Items>(query);
    Console.WriteLine(items);
    return items;
});
app.UseStaticFiles();
app.Run();