def clear_step(steps)
    a = steps.select do |step|
        largo_original = step.length
        largo_calculado = step.to_i.to_s.length
        largo_original == largo_calculado
    end
    b = a.select do |x|
        x.to_i  > 200 && x.to_i < 100000
    end
    return b
    
end

print clear_step(['100', '21', '231as', '2031', '1052000', '213b', 'b123'])



