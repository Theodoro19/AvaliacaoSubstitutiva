package br.com.theodoro.avaliacao.acesso.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.gov.sp.tce.dti.nemesis.pauta.acesso.model.Usuario;

/**Classe para objetos do tipo AuthRulesService, onde serao contidos, informacoes e metodos para o mesmo.
* 
* @version 1.0
* 
*/
@Service
public class AuthRulesService {
	
	@Autowired
	private AuthService authService;


	/**
	 * 
	 * Method - getCurrentUser
	 * Return - Usuario
	 * @return
	 *
	 */
	public Usuario getCurrentUser(){
		return authService.getCurrent();
	}
}
