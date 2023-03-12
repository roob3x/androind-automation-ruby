# frozen_string_literal: true

Dado('que carrego a home do sowe') do
  $logger.info('Inicializando os testes')
  @sowe = SowePage.new
  @sowe.sowe_home_page?
end

Dado('Clico em cadastrar') do
    @sowe.click_btn_register
end

Quando('Preencho os dados necessarios para cadastrar') do |table|
    table.hashes.each do |row|
      @telefone = row['telefone']
      @nome = row['nome']
    end
    @sowe.send_keys_phone(@telefone)
    @sowe.click_phone_avancar_btn
    @sowe.send_keys_name(@nome)
    @sowe.click_name_avancar_btn
end

Quando('ativo minha localizacao automatica') do
    @sowe.click_on_localization_btn
    @sowe.click_on_localization_answer_yes_btn
end

Entao('valido que fui direcionado para tela de sowe com a temperatura atual') do
    @sowe.sowe_home_temperature_page?
end