package intermediario.collections.gerenation;

public class Aluno {

	private int idade;
	private String nome;
	
	public Aluno(int idade, String nome) {
		super();
		this.idade = idade;
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String toString() {
		return "[Idade: " + this.idade + ", Nome: " + this.nome + "]";
	}
	
	
}
