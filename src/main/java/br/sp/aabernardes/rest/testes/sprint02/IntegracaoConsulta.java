package br.sp.aabernardes.rest.testes.sprint02;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers. *;

import java.util.HashMap;
import java.util.Map;

import org.junit.BeforeClass;
import org.junit.Test;
import br.sp.aabernardes.rest.core.BaseTest;
import io.restassured.RestAssured;

public class IntegracaoConsulta extends BaseTest {
	
	@BeforeClass
	public static void login() {
		
		// login e extrair token - Perfil Administrador
		Map<String, String> login = new HashMap<>();
		login.put("email", "agostinho@gmail.com"); // login
		login.put("senha", "123456"); // senha
		
		String TOKEN = given()
			.body(login)
		.when()
			.post("/signin")
		.then()
			.statusCode(200)
			.extract().path("token");
			
			RestAssured.requestSpecification.header("Authorization", "JWT " + TOKEN); // para apis mais recentes, trocar JWT por bearer
			RestAssured.get("/reset").then().statusCode(200); // resetar ao final
	}
	
		
	@Test
	public void consultaEmpresasCadastradas(){
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(200)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaEmpresasCadastradasAmbiente(){
		
		
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(500)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaEmpresasCadastradasErroApi(){
		
		
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(422)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaBancosCadastrados(){
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(200)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaBancosCadastradosAmbiente(){
		
		
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(500)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	@Test
	public void consultaBancosCadastradosErroApi(){
		
		
		
		given()
		.when()
			.get("//")
		.then()
			.statusCode(422)
			.body("mensagem", hasItem("mensagem"))
		;
		
	}
	
	
}
