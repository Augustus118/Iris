package br.sp.aabernardes.rest.utils;

import io.restassured.RestAssured;

public class BarrigaUtils {
	
	public static Integer getIdPeloNome(String nome) {
		return RestAssured.get("/contas?name="+nome).then().extract().path("id[0]");
	}
	
	public static Integer getIdPelaMovimentacao(String desc) {
		return RestAssured.get("/transacoes?descricao="+desc).then().extract().path("id[0]");
	}

}
