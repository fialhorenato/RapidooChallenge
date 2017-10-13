require 'test_helper'

class PropostaTest < ActiveSupport::TestCase

  test "Taxa do cliente com faturamento acima de 100.000" do
    proposta = Proposta.new(faturamento: "100001", prazo: "28", valordotitulo: "1500")
    proposta.calcular()
    assert_equal 1.5, proposta.taxa
  end

  test "Taxa do cliente com faturamento menor que 50.000" do
    proposta = Proposta.new(faturamento: "49999", prazo: "28", valordotitulo: "1500")
    proposta.calcular()
    assert_equal 1.8, proposta.taxa
  end

  test "Taxa do cliente com faturamento entre 50.000 e 100.000" do
    proposta = Proposta.new(faturamento: "75000", prazo: "28", valordotitulo: "1500")
    proposta.calcular()
    assert_equal 1.65, proposta.taxa
  end

  test "Cenario proposto" do
    proposta = Proposta.new(faturamento: "75000", prazo: "28", valordotitulo: "1500")
    proposta.calcular()
    assert_equal 1425.75, proposta.valorareceber
  end

  test "Prazo menor que 10 dias" do
    proposta = Proposta.new(faturamento: "75000", prazo: "5", valordotitulo: "1500")
    assert !proposta.valid?
  end

  test "Faturamento menor que 500" do
    proposta = Proposta.new(faturamento: "75000", prazo: "28", valordotitulo: "499")
    assert !proposta.valid?
  end
end
