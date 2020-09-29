package br.sp.aabernardes.rest.testes.sprint02;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import java.util.HashMap;
import java.util.Map;
import org.junit.BeforeClass;
import org.junit.Test;
import br.sp.aabernardes.rest.core.BaseTest;
import io.restassured.RestAssured;


public class GestaoErp extends BaseTest {
	
	private static Integer CONTA_ID;
	
	@BeforeClass
	public static void login() {
		
		// login e extrair token - Perfil Administrador
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
	
	
	// Cadastro ERP *validar necessidade de cadastro sem id
	
	@Test
	public void cadastroErpComSucesso() {
		
		
		CONTA_ID = given()
			.body("{\"identificacao\": \"Sistema X\"}")
			.body("{\"adc_remessa_destino\": \"dir remessa destino\"}")
			.body("{\"adc_remessa_erro\": \"dir remessa erro\"}")
			.body("{\"adc_remessa_origem\": \"dir remessa origem\"}")
			.body("{\"data_fim\": \"2020-02-23\"}")
			.body("{\"data_inicio\": \"2020-02-11\"}")
		.when()
			.post("/cadastro")
		.then()
			.statusCode(201)
			.body("mensagem", hasItem("mensagem"))
			.extract().path("id")
	;
		
	}
	
	@Test
	public void cadastroErpSemIdentificacao() {
		
		Insercao cad = new Insercao();
		cad.setIdentificacao(" ");
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
			.statusCode(400)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void cadastroErpSemAdcRemessaDestino() {
		
		Insercao cad = new Insercao();
		cad.setIdentificacao("Sistema X");
		cad.setAdc_remessa_destino(" ");
		cad.setAdc_remessa_erro("dir remessa erro");
		cad.setAdc_remessa_origem("dir remessa origem");
		cad.setData_fim("2020-02-23");
		cad.setData_inicio("2020-02-11");

		
		given()
			.body(cad)
		.when()
		  	.post("/cadastro")
		.then()
			.statusCode(400)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void cadastroErpSemAdcRemessaErro() {
		
		Insercao cad = new Insercao();
		cad.setIdentificacao("Sistema X");
		cad.setAdc_remessa_destino("dir remessa destino");
		cad.setAdc_remessa_erro(" ");
		cad.setAdc_remessa_origem("dir remessa origem");
		cad.setData_fim("2020-02-23");
		cad.setData_inicio("2020-02-11");

		
		given()
			.body(cad)
		.when()
		  	.post("/cadastro")
		.then()
			.statusCode(400)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void cadastroErpSemRemessaOrigem() {
		
		Insercao cad = new Insercao();
		cad.setIdentificacao("Sistema X");
		cad.setAdc_remessa_destino("dir remessa destino");
		cad.setAdc_remessa_erro("dir remessa erro");
		cad.setAdc_remessa_origem(" ");
		cad.setData_fim("2020-02-23");
		cad.setData_inicio("2020-02-11");

		
		given()
			.body(cad)
		.when()
		  	.post("/cadastro")
		.then()
			.statusCode(400)
			.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	
	// Edição de cadastro ERP
	
	@Test
	public void edicaoErpComSucesso() {
		
	
		given()
			.body("{\"identificacao\": \"Sistema Y\" }")
			.pathParam("id", CONTA_ID)
		.when()
			.put("/edicao/erp/{id}")
		.then()
			.statusCode(201)
			.body("identificacao", is("Sistema Y"))

	;
		
	}
	
	@Test
	public void edicaoErpComSucesso2() {
		
		given()
		.body("{\"identificacao\": \"Sistema Y\" }")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/edicao/erp/{id}")
	.then()
		.statusCode(201)
		.body("identificacao", is("Sistema Y"))


	;
		
	}
	
	@Test
	public void edicaoErpSemIdentificacao() {
		
		given()
		.body("{\"identificacao\": \"  \" }")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/edicao/erp/{id}")
	.then()
		.statusCode(400)
		.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void edicaoErpSemAdcRemessaDestino() {
		
		given()
		.body("{\"adc_remessa_destino\": \"  \"}")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/edicao/erp/{id}")
	.then()
		.statusCode(400)
		.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void edicaoErpSemAdcRemessaOrigem() {
		
		given()
		.body("{\"adc_remessa_origem\": \"  \"}")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/edicao/erp/{id}")
	.then()
		.statusCode(400)
		.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
	@Test
	public void edicaoErpSemAdcRemessaErro() {
		
		given()
		.body("{\"adc_remessa_erro\": \"  \"}")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/edicao/erp/{id}")
	.then()
		.statusCode(400)
		.body("mensagem", hasItem("mensagem"))


	;
		
	}
	
		
	// Inativacao Cadastro ERP
	
	@Test
	public void inativaERP() {
		
	given()
		.body("{\"status\": \"false\"}")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/inativa/erp/{id}")
	.then()
		.statusCode(200)
		.body("mensagem", hasItem("mensagem"))
		.body("status", is(false))
		
	;
	}

		
	@Test
	public void ativaERP() {
			
	given()
		.body("{\"status\": \"true\"}")
		.pathParam("id", CONTA_ID)
	.when()
		.put("/inativa/erp/{id}")
	.then()
		.statusCode(200)
		.body("mensagem", hasItem("mensagem"))
		.body("status", is(true))


	;
		
		
		
	}
	
		
}
