public class ControleRemotoLoja
{
    String produtoEletronico;
    String cor;
    double tamanho;
    double espessura;
    double alcance;
    Botao[] botoes;
    
    public void ligar (){}
    public void desligar (){}
    public void trocarCanais(){}
    public int aumentarVolume(){
        return 1;
    }
        public int diminuirVolume(){
        return -1;
    }
    
    public ControleRemotoLoja(String produtoEletronico){
    this.produtoEletronico = produtoEletronico;
    }
    public ControleRemotoLoja(String produtoEletronico, String cor){
    this.produtoEletronico = produtoEletronico;
    this.cor = cor;
    }
    public ControleRemotoLoja(String produtoEletronico, String cor, double tamanho, double espessura){
    this.produtoEletronico = produtoEletronico;
    this.cor = cor;
    this.tamanho = tamanho;
    this.espessura = espessura;
    }
    public ControleRemotoLoja(String produtoEletronico, double alcance){
    this.produtoEletronico = produtoEletronico;
    this.alcance = alcance;
    }
    
    public void finalize(){        
    }
}
