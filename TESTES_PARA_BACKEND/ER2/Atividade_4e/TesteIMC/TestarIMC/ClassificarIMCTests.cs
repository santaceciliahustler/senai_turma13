using Microsoft.VisualStudio.TestTools.UnitTesting;
using TesteIMC;

namespace TestarIMC
{
    [TestClass]
    public class ClassificarIMCTests
    {
        [TestMethod]
        public void ClassificarIMC()
        {
            //arrange
            double imc = 29;
            //act
            var classificacaoIMC = Operacoes.ClassificarIMC(imc);
            //Assert
            Assert.AreEqual("Sobrepeso", classificacaoIMC);
        }
    }
}
