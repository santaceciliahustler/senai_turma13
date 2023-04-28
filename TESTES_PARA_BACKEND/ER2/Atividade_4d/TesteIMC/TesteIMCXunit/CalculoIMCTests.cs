using Xunit;
using TesteIMC;


namespace TesteIMCXunit
{

    public class CalculoIMCTests
    {
        [Fact]
        public void CalcularIMC_RetornarResultado()
        {
            //arrange
            double peso = 110;
            double altura = 1.79;
            //act
            var resultado = Operacoes.CalcularIMC(peso, altura);
            //assert
            Assert.Equal(34.33, resultado);
        }

        [Theory]
        [InlineData(80, 1.79, 24.97)]
        [InlineData(100, 1.79, 31.21)]
        public void CalcularIMC_RetornaResultado_Para_Uma_ListaDeValores(double primeiroNumero, double segundoNumero, double resultadoEsperado)
        {
            var resultadoIMC = Operacoes.CalcularIMC(primeiroNumero, segundoNumero);
            Assert.Equal(resultadoEsperado, resultadoIMC);
        }
    }
    
}
