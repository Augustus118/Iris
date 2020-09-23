package br.sp.aabernardes.rest.testes.suite;



import org.junit.runner.RunWith;
import org.junit.runners.Suite.SuiteClasses;
import br.sp.aabernardes.rest.core.BaseTest;
import br.sp.aabernardes.rest.testes.sprint02.GestaoErp;
import br.sp.aabernardes.rest.testes.sprint02.GestaoErpAnalistaContasPagar;
import br.sp.aabernardes.rest.testes.sprint02.GestaoErpAnalistaContasReceber;
import br.sp.aabernardes.rest.testes.sprint02.GestaoErpAprovador;
import br.sp.aabernardes.rest.testes.sprint02.GestaoErpGestor;
import br.sp.aabernardes.rest.testes.sprint02.IntegracaoConsulta;
import br.sp.aabernardes.rest.testes.sprint02.IntegracaoConsultaAuth;


@RunWith(org.junit.runners.Suite.class)
@SuiteClasses({
	
	GestaoErp.class,
	GestaoErpGestor.class,
	GestaoErpAprovador.class,
	GestaoErpAnalistaContasPagar.class,
	GestaoErpAnalistaContasReceber.class,
	IntegracaoConsulta.class,
	IntegracaoConsultaAuth.class
	
	
})

public class SuiteSprint02 extends BaseTest {
	


}
