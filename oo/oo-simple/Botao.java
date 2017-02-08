public class Botao
{
    String formato;
    double tamanho;
    String simbolo;
    String numero;
    String funcao;
    
    public void press (){}
    public void release (){}
    public String sendSignal (){
        return funcao;
    }
    
    public Botao(String formato, String funcao){
    this.formato = formato;
    this.funcao = funcao;
    }
    public Botao(String formato, String funcao, String simbolo, String numero, double tamanho){
    this.formato = formato;
    this.funcao = funcao;
    this.simbolo = simbolo;
    this.numero = numero;
    this.tamanho = tamanho;
    }
    
    protected void finalize(){}
}
