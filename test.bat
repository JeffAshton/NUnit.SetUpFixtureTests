nuget restore
msbuild SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll

.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll  -where "namespace == SetUpFixtureTests.Foo" -result foo.result.xml
.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll  -where "namespace == SetUpFixtureTests.Bar" -result bar.result.xml
.\packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe SetUpFixtureTests\bin\Debug\SetUpFixtureTests.dll -result all.result.xml