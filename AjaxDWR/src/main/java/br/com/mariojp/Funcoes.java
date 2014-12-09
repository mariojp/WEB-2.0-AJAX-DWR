package br.com.mariojp;


import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;

@RemoteProxy(name="Funcoes")
public class Funcoes {
	@RemoteMethod
	public int soma(int num1, int num2){
		return num1+num2;
	}
}
