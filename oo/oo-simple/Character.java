
public class Character
{
    private int pulo;
    private String nome;
    private double poderAtaque;
    private String genero;
    private double velocidade;
    private int quantVidas;
    private String habilidadeEspecial;
    private String Magialv20;    
    // por prática, por todo atributo privado. para não desconfigurar ou inserir valor errado
    
    public int pular (){
        return 5;
    }
    public String falar(){
        return "Oi";
    }
    public void morrer(){
    }
    public int danoTotal(){
        return 5;
    }
    public int quantAtaques(){
        return 5;
    }
    public Character(){
    
    // sobrescrita polimorfica de construtor - sempre constroi um objeto vazio - herda da 
    // classe Character    
    }
    public Character(String name){
    this.nome = name;
    
    //sobrecarga de construtor (repassa algum atributo já para o construtor)
    }
    public Character(String name, int vidas){
    this.nome = name;
    this.quantVidas = vidas;
    }
    public Character(String name, int vidas, String genero){
    this.nome = name;
    this.quantVidas = vidas;
    this.genero = genero;
    }
    public Character(String name, int vidas, double ataque){
    this.nome = name;
    this.quantVidas = vidas;
    this.poderAtaque = ataque;
    }
    public Character(String name, int vidas, String genero, double ataque){
    this.nome = name;
    this.quantVidas = vidas;
    this.genero = genero;
    this.poderAtaque = ataque;
    }
    public Character(String name, int vidas, String genero, double ataque, double velo){
    this.nome = name;
    this.quantVidas = vidas;
    this.genero = genero;
    this.poderAtaque = ataque;
    this.velocidade = velo;
    }
    
    protected void finalize(){
    // destrutor - não é que tiram a coisa da memória, mas preparam pra limpeza - ele
    // coloca como null as conexões, etc.
    }
}
