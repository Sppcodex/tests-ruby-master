def time_string(time)
    # divmod donne un array avec deux élements : le quotient et le reste
    # en divisant les secondes par 3600, le quotient est le nombre d'heures
    # les secondes restantes sont les minutes / secondes <3600 dont la somme est en dessous d'une heure
  
    heures = time.divmod(3600)
    # h[0] : quotient = nombre d'heures
    h = heures[0]
    # h[1] : reste = secondes restantes à répartir en minutes / secondes
    reste = heures[1]
  
  
    # on réitère avec les minutes en divisant le reste par 60
    minutes = reste.divmod(60)
    # le quotient, 1er élément array, donne les minutes
    m = minutes[0]
    # le reste, 2eme élément de l'array, donne les poussières restantes (secondes)
    s = minutes [1]
  
  
  # pour afficher 02 au lieu de 2 s'il y a 2h, ou 2 minutes, ou 2 secondes... on met une condition
  if h < 10 then h = "0#{h}" end
  if m < 10 then m = "0#{m}" end
  if s < 10 then s = "0#{s}" end
  
    return "#{h}:#{m}:#{s}"
  
  end
  
  time_string(0)
  time_string(4000)