require 'test_helper'

class PropostasControllerTest < ActionDispatch::IntegrationTest
    test "Proposta para um cliente que fatura entre 50.000 e 100.000" do
        proposta = Proposta.new(faturamento: "75000", prazo: "28", valordotitulo: "1500")
        proposta.save
        visit "/propostas/#{proposta.id}"
        
        assert_equal 200, page.status_code
      end
end