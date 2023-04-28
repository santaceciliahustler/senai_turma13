using Xunit;
using TesteIMC;

namespace TesteIMCXunit
{
    public class ClassificarIMCTests
    {
        [Fact]
        public void ClassificarIMC_RetornaResultado()
        {
            //arrange
            double imc = 28;
            //act
            var resultado = Operacoes.ClassificarIMC(imc);
            //assert
            Assert.Equal("Sobrepeso", resultado);
        }
        [Theory]
        [InlineData(27, "Sobrepeso")]
        [InlineData(32, "Obesidade I")]
        public void ClassificarIMC_RetornaResultado_Para_Uma_ListaDeValores(double primeiroNumero, string resultadoEsperado)
        {
            var resultadoDoImc = Operacoes.ClassificarIMC(primeiroNumero);
            Assert.Equal(resultadoEsperado, resultadoDoImc);
        }
    }
}
