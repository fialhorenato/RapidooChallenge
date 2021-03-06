class Proposta < ApplicationRecord

    validates :valordotitulo, numericality: { greater_than_or_equal_to: 500, message: "informado deve ser maior que 500 reais" }
    validates :prazo, numericality: { greater_than: 10, message: "mínimo é de 10 dias" }

    validates :faturamento, presence: { message: "deve ser preenchido" }
    validates :valordotitulo, presence:{ message: "deve ser preenchido" }
    validates :prazo, presence: { message: "deve ser preenchido" }

    def calcular
        if self.valid?
            if self.faturamento < 50000
                self.taxa = 1.8
            else 
                self.faturamento > 100000 ? self.taxa = 1.5 : self.taxa = 1.65
            end
            
            if self.prazo % 10 >= 1 ? diferencial = 1 : diferencial = 0
            end

            vezes = (self.prazo / 10) + diferencial
            self.taxatotal = (self.taxa * vezes).round(2)
            self.valorareceber  = (self.valordotitulo* ((100 - self.taxatotal) / 100)).round(2)
        end
    end

    def save
        self.calcular()
        super
    end
end
