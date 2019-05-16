module Formula
  def perimetro
    if self.class == Rectangulo
      puts "soy un Rectangulo de perimetro #{@largo*2 + @ancho*2}"
    elsif self.class == Cuadrado
      puts "soy un Cuadrado de perimetro #{@lado*4}"
    end
  end

  def area
    if self.class == Rectangulo
      puts "soy un Rectangulo de area= #{@largo * @ancho}"
    elsif self.class == Cuadrado
      puts "soy un Cuadrado de area = #{@lado**2}"
    end
  end
end

  class Rectangulo
    attr_reader :largo, :ancho
    include Formula
    def initialize(largo, ancho)
      @largo = largo
      @ancho = ancho
    end

    def lados
      print "#{largo} y #{ancho}"
    end
  end

  class Cuadrado
    attr_reader :lado
    include Formula
    def initialize(lado)
      @lado = lado
    end

    def lados
      print "#{lado}"
    end
  end


Rectangulo.new(10, 10).area
Cuadrado.new(5).area
Rectangulo.new(10, 10).perimetro
Cuadrado.new(5).perimetro
