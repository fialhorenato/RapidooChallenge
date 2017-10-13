class PropostasController < ApplicationController

    def index
        @proposta = Proposta.new
        render 'new'
    end
    
    def new
        @proposta = Proposta.new
    end

    def create
        @proposta = Proposta.new(proposta_params)
        
        if @proposta.save
            redirect_to proposta_url(@proposta)
        else
            render 'new'
        end
        
    end

    def show
        @proposta = Proposta.find(params[:id])
    end

    private
    def proposta_params
      params.require(:proposta).permit(:nome, :nomedaempresa, :email, :faturamento, :valordotitulo, :prazo)
    end
end
