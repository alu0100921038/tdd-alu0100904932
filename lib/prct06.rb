require "prct06/version"

class InformacionNutricional
    attr_reader :nombre, :grasas, :grasasSat, :hidratos, :azucares, :proteinas, :sal
    
    def initialize (nombre, grasas, grasasSat, hidratos, azucares, proteinas, sal)
        @nombre = nombre
        @grasas = grasas
        @grasasSat = grasasSat
        @hidratos = hidratos
        @azucares = azucares
        @proteinas = proteinas
        @sal = sal
    end
    
    def valorEnergeticoKJ
        (@grasas * 37) + (@hidratos * 17) + (@proteinas * 17)
    end
    
    def valorEnergeticoKcal
        (@grasas * 9) + (@hidratos * 4) + (@proteinas * 4)
    end
    
    def to_s
        "Nombre: #{@nombre}\n" +
        "Grasas: #{@grasas}\n" +
        "Grasas saturadas: #{@grasasSat}\n" +
        "Hidratos: #{@hidratos}\n" +
        "Azucares:  #{@azucares}\n" +
        "Proteinas: #{@proteinas}\n" +
        "Sal: #{@sal}"
    end
end

class Node < Struct.new(:value, :next, :prev)
    include Comparable
    def <=> (another)
        self.value.nombre <=> another.value.nombre
    end
    def to_s
        self.value.nombre
    end
end
