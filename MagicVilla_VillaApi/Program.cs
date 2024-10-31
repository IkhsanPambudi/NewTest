using MagicVilla_VillaApi;
using MagicVilla_VillaApi.Data;
using MagicVilla_VillaApi.Repository;
using MagicVilla_VillaApi.Repository.IRepository;
using Microsoft.EntityFrameworkCore;
using Serilog;

var builder = WebApplication.CreateBuilder(args);

// create connection string
builder.Services.AddDbContext<ApplicationDbContext>(option =>
{
    option.UseSqlServer(builder.Configuration.GetConnectionString("DefaultSQLConnection"));
});

builder.Services.AddControllers(option =>
{
    //option.ReturnHttpNotAcceptable = true;
    // penambahan ini akan membuat request harus berdasarkan jason atau lebih
    //sesuai dengan pengaturan dibawah
    // AddXmlDataContractSerializerFormatters bertujuan pengembalian dengan xml
}).AddNewtonsoftJson().AddXmlDataContractSerializerFormatters();

builder.Services.AddScoped<IVillaRepository, VillaRepository>();
builder.Services.AddScoped<IVillaNumberRepository, VillaNumberRepository>();

builder.Services.AddAutoMapper(typeof(MappingConfig));
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
