module TrucksHelper

  def book_truck_helper(truck)
    case truck.state
    when 'available'
      text = 'Réserver'
      btn_class = 'btn-primary'
    when 'pending'
      text = 'En attente'
      btn_class = 'btn-pending'
    when 'booked'
      text = "Réservé"
      btn_class = 'btn-success'
    end

    content_tag 'span', text, 'data-truck-id': truck.id,
                              class: "btn #{btn_class} book-button-#{truck.state}"


  end
end
