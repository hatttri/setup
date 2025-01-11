# webapi
$solution = "webapi-sln01"
$project01 = "webapi-project01"
$project02 = "webapi-project02"

dotnet new gitignore `
    --output $solution

dotnet new editorconfig `
    --output $solution

dotnet new sln `
    --output $solution

dotnet new webapi `
    --use-controllers `
    --language "C#" `
    --framework "net8.0" `
    --output (Join-Path $solution $project01)

dotnet new webapi `
    --use-controllers `
    --language "C#" `
    --framework "net8.0" `
    --output (Join-Path $solution $project02)

dotnet sln $solution add (Join-Path $solution $project01)
dotnet sln $solution add (Join-Path $solution $project02)
