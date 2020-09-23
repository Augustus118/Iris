package br.sp.aabernardes.rest.testes.sprint02;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers. *;
import java.util.HashMap;
import java.util.Map;
import org.junit.BeforeClass;
import org.junit.Test;
import br.sp.aabernardes.rest.core.BaseTest;
import io.restassured.RestAssured;

public class GestaoErpAnalistaContasReceber extends BaseTest {
	
	@BeforeClass
	public static void login() {
		
		// login e extrair token - Perfil Analista de Contas a Receber
		Map<String, String> login = new HashMap<>();
		login.put("email", "agostinho@gmail.com");
		login.put("senha", "123456");
		
		String TOKEN = given()
			.body(login)
		.when()
			.post("/signin")
		.then()
			.statusCode(200)
			.extract().path("token");
			
			RestAssured.requestSpecification.header("Authorization", "JWT " + TOKEN); // para apis mais recentes, trocar JWT por bearer
	
	}
	
		
	@Test
	public void listarErpAnalistaContasReceber(){
		
		given()
		.when()
			.get("/listar")
		.then()
			.statusCode(200)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void cadastrarErpAnalistaContasReceber() {
		
		Insercao cad = new Insercao();
		cad.setIdentificacao("Sistema X");
		cad.setAdc_remessa_destino("dir remessa destino");
		cad.setAdc_remessa_erro("dir remessa erro");
		cad.setAdc_remessa_origem("dir remessa origem");
		cad.setData_fim("2020-02-23");
		cad.setData_inicio("2020-02-11");

		
		given()
			.body(cad)
		.when()
		  	.post("/cadastro")
		.then()
			.statusCode(403)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void editarErpAnalistaContasReceber() {
		
		Insercao edit = new Insercao();
		edit.setIdentificacao("Sistema X");
		edit.setAdc_remessa_destino("dir remessa destino");
		edit.setAdc_remessa_erro("dir remessa erro");
		edit.setAdc_remessa_origem("dir remessa origem");
		edit.setData_fim("2020-02-23");
		edit.setData_inicio("2020-02-11");

		
		given()
			.body(edit)
		.when()
		  	.put("/edicao")
		.then()
			.statusCode(403)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	
}
