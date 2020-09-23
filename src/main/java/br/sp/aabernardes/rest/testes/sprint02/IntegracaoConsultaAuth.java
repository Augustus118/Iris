package br.sp.aabernardes.rest.testes.sprint02;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers. *;

import java.util.HashMap;
import java.util.Map;

import org.junit.BeforeClass;
import org.junit.Test;
import br.sp.aabernardes.rest.core.BaseTest;
import io.restassured.RestAssured;

public class IntegracaoConsultaAuth extends BaseTest {
	
	@BeforeClass
	public static void login() {
		
		// login e extrair token - perfil não pode ser de Administrador
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
	public void consultaEmpresasCadastradasAuth(){
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(401)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaBancosCadastradosAuth(){
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(401)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	
}
