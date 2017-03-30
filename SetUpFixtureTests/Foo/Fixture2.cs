using NUnit.Framework;
using System;

namespace SetUpFixtureTests.Foo
{
    [TestFixture]
    [Category(NamespaceSetUpFixture.Key)]
    public class Fixture2
    {

        [Test]
        public void Test1()
        {
            Console.WriteLine("Test {0} - {1}", TestContext.CurrentContext.Test.FullName, State.Value);
            Assert.AreEqual(NamespaceSetUpFixture.Key, State.Value);
        }

        [Test]
        public void Test2()
        {
            Console.WriteLine("Test {0} - {1}", TestContext.CurrentContext.Test.FullName, State.Value);
            Assert.AreEqual(NamespaceSetUpFixture.Key, State.Value);
        }
    }
}
