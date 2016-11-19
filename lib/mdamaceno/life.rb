require 'mdamaceno/life/version'

module Mdamaceno
  module Life
    FULLNAME = 'MARCO ANTONIO ANIBAL DAMACENO'.freeze
    COOLNAME = 'Marco Damaceno'.freeze
    AGE = 28

    # Retorna a data de nascimento
    def birthdate
      '17/10/1988'
    end

    # Retorna a profissão
    def occupation
      'Desenvolvedor web'
    end

    # Retorna a escolaridade
    def scholarity
      'Ensino Superior Completo'
    end

    # Retorna o nome comepleto
    def fullname
      FULLNAME
    end

    # Retorna um nome mais legal e mais curto
    def coolname
      COOLNAME
    end

    # Retorna a idade
    def age
      AGE.to_s
    end

    # Retorna um evento quando passado um número correspondente a idade.
    #
    # Este número deve ser maior que 0 (zero) e menor que a idade atual de Marco Damaceno (28)
    def event(number)
      return 'Digite um número válido!' unless number.is_a? Integer
      return "#{COOLNAME} ainda tem #{AGE} anos" if number.to_i > AGE
      return 'Ninguèm tem menos que 0 anos né.' if number.to_i < 0

      n = number.to_i

      if n == 0
        "#{COOLNAME} era um bebê nascido em Volta Redonda - RJ."
      elsif n == 5
        "#{COOLNAME} começou a estudar no primário."
      elsif n == 6
        "#{COOLNAME} ganhou seu primeiro vídeo game: Super Nintendo."
      elsif n == 10
        "#{COOLNAME} começou a estudar na 5ª série."
      elsif n == 13
        "#{COOLNAME} se mudou para Macaé - RJ com os pais."
      elsif n == 14
        "#{COOLNAME} se mudou de volta para Volta Redonda - RJ."
      elsif n == 15
        "#{COOLNAME} começou a estudar telecomunicações no SENAI em Volta Redonda - RJ."
      elsif n == 18
        "#{COOLNAME} se mudou para Juiz de Fora - MG com os pais."
      elsif n == 20
        "#{COOLNAME} criou seu primeiro blog: Geralidades da Vida."
      elsif n == 24
        "#{COOLNAME} começou a fazer faculdade. Curso de Sistemas para Internet."
      elsif n == 27
        "#{COOLNAME} formou-se no curso de Sistemas para Internet."
      elsif n == 28
        "#{COOLNAME} casou-se com Thamiris Dornelas."
      else
        'Não há evento registrado para esta idade.'
      end
    end

    # Classe responsável por instanciar e usar os métodos do módulo **Mdamaceno::Life**
    class Show
      include Mdamaceno::Life
    end
  end
end
