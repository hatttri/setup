# webapi
$solution = "webapi-sln01"
$project01 = "webapi-project01"
$project02 = "webapi-project02"
$language = "C#"
$framework = "net8.0"

# solution
dotnet new sln `
    --output $solution

# project01
dotnet new webapi `
    --use-controllers `
    --language $language `
    --framework $framework `
    --output (Join-Path $solution $project01)

dotnet new gitignore `
    --output (Join-Path $solution $project01)

dotnet new editorconfig `
    --output (Join-Path $solution $project01)

dotnet sln $solution add (Join-Path $solution $project01)

# project02
dotnet new webapi `
    --use-controllers `
    --language $language `
    --framework $framework `
    --output (Join-Path $solution $project02)

dotnet new gitignore `
    --output (Join-Path $solution $project02)

dotnet new editorconfig `
    --output (Join-Path $solution $project02)

dotnet sln $solution add (Join-Path $solution $project02)