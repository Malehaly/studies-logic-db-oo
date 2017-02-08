// aqui a classe character é abstrata, assim ela é a base para outras, ela nunca é feita instância(obj
// eto) - e sempre deverá ter filhos classes.
public abstract class Character
{
    private int pulo;
    private String nome;
    private double poderAtaque;
    private String genero;
    private double velocidade;
    private int quantVidas;
    private String habilidadeEspecial;
    private String magiaLv20;    
    // por prática, por todo atributo privado. para não desconfigurar ou inserir valor errado
    // assim, se cria no método os Set e Get para poderem alterar e recuperar valores dos atributos
    
    public abstract int alturaPulo();
    // se cria métodos abstratos, pra forçar as classes herdadas a redigitar o método e especificar
        
    public void setJump (int pulo) {
        this.pulo = pulo;
    }
    public void setName(String nome){
        this.nome = nome;
    }
    public void setAttack(double poderAtaque){
        this.poderAtaque = poderAtaque;
    }
    public void setGender(String genero){
        this.genero = genero;
    }
    public void setSpeed(double velocidade){
        this.velocidade = velocidade;
    }
    public void setLifes(int vidas){
        this.quantVidas = vidas;
    }
    public void setSpecial(String special){
        this.habilidadeEspecial = special;
    }
    public void setSpell(String spell){
        this.magiaLv20 = spell;
    }
    public int getJump (){
        return pulo;
    }
    public String getName (){
        return nome;
    }
    public double getAttack (){
        return poderAtaque;
    }
    public String getGender (){
        return genero;
    }
    public double getSpeed (){
        return velocidade;
    }
    public int getLifes (){
        return quantVidas;
    }
    public String getSpecial (){
        return habilidadeEspecial;
    }
    public String getSpell (){
        return magiaLv20;
    }
    
    
    
    public Character(){
    // sobrescrita polimorfica de construtor - sempre constroi um objeto vazio - herda da 
    // classe Character    
    }
    public Character(String name){
    this.setName(name);
    //sobrecarga de construtor (repassa algum atributo já para o construtor)
    }
    public Character(String name, int vidas){
    this.setName(name);
    this.setLifes(vidas);
    }
    public Character(String name, int vidas, String genero){
    this.setName(name);
    this.setLifes(vidas);
    this.setGender(genero);
    }
    public Character(String name, int vidas, double ataque){
    this.setName(name);
    this.setLifes(vidas);
    this.setAttack(ataque);
    }
    public Character(String name, int vidas, String genero, double ataque){
    this.setName(name);
    this.setLifes(vidas);
    this.setGender(genero);
    this.setAttack(ataque);
    }
    public Character(String name, int vidas, String genero, double ataque, double velo){
    this.setName(name);
    this.setLifes(vidas);
    this.setGender(genero);
    this.setAttack(ataque);
    this.setSpeed(velo);
    }
    
    
    
    protected void finalize(){
    // destrutor - não é que tiram a coisa da memória, mas preparam pra limpeza - ele
    // coloca como null as conexões, etc.
    }
}
