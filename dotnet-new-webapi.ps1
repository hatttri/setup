# webapi
dotnet new sln `
    --output "webapi-sln01"

dotnet new webapi `
    --use-controllers `
    --language "C#" `
    --framework "net8.0" `
    --output "webapi-sln01/webapi-project01"

dotnet new webapi `
    --use-controllers `
    --language "C#" `
    --framework "net8.0" `
    --output "webapi-sln01/webapi-project02"

dotnet sln "webapi-sln01" add "webapi-sln01/webapi-project01"
dotnet sln "webapi-sln01" add "webapi-sln01/webapi-project02"
