import mx.collections.ArrayCollection;

import objetos.TermoDeProjeto;

[Bindable]
public var listaDeProjetos:ArrayCollection = new ArrayCollection();

public function abrirJanela():void{

	var t1:TermoDeProjeto = new TermoDeProjeto();
	t1.descricao = "Termo 1";
	t1.dias = 12;
	t1.valor = 1234.34;
	
	var t2:TermoDeProjeto = new TermoDeProjeto();
	t2.descricao = "Termo 2";
	t2.dias = 124;
	t2.valor = 747744.34;
	
	var t3:TermoDeProjeto = new TermoDeProjeto();
	t3.descricao = "Termo 3";
	t3.dias = 432;
	t3.valor = 879243.34;
	
	listaDeProjetos.addItem(t1);
	listaDeProjetos.addItem(t2);
	listaDeProjetos.addItem(t3);
	
	gridTermos.dataProvider = listaDeProjetos;
	
}

public function mostrarTermo():void{
	
	var termo:TermoDeProjeto = gridTermos.selectedItem as TermoDeProjeto;
	
	textArea.text = termo.descricao + "\n" +termo.dias +"\n"+ termo.valor;

}


