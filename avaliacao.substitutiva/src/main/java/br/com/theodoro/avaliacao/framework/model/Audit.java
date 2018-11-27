package br.com.theodoro.avaliacao.framework.model;

import java.time.LocalDateTime;

import br.gov.sp.tce.dti.nemesis.pauta.acesso.model.Usuario;

public interface Audit<T extends BaseEntity> {
	T addInsertAudit();
	T addEditAudit();
	T addDeleteAudit();
	
	LocalDateTime getUltimaAlteracao();
	void setUltimaAlteracao(LocalDateTime ultimaAlteracao);
	
	Usuario getUsuario();
	void setUsuario(Usuario usuario) ;
	
	void setDeleted(boolean val);
}
