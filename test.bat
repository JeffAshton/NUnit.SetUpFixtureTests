nuget restore
msbuild SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll

.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe .\SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll -where "cat  == foo" -result foo.result.xml
.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe .\SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll -where "cat == bar" -result bar.result.xml
.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe .\SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll -where "cat == foo || cat == bar" -result all.result.xml

@pause