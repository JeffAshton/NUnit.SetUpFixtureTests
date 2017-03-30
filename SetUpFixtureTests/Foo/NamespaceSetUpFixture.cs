using System;
using NUnit.Framework;

namespace SetUpFixtureTests.Foo
{
    [SetUpFixture]
    public class NamespaceSetUpFixture
    {
        public const string Key = "foo";

        [OneTimeSetUp]
        public void Setup()
        {
            Console.WriteLine("Namespace setup: {0}", Key);
            State.Value = Key;
        }

        [OneTimeTearDown]
        public void TearDown()
        {
            Console.WriteLine("Namespace teardown: {0}", Key);
            State.Value = Key;
        }
    }
}
