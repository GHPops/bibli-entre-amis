module LivreConcern
  def booked_dates
    # renvoie un array d'array des dates de debut et de fin de tous les bookings du pokemon
    reservations.pluck(:debut, :fin)
  end

  def simple_format_booked_dates
    # renvoie un array d'array des dates de debut et de fin
    # de tous les bookings du pokemon mais sous la forme stringifiée : "1991-12-28"
    booked_dates.deep_map(&:to_s)
  end

  def booked_dates_json_objects
    keys = [:from, :to]
    simple_format_booked_dates.map do |dates_arr|
      Hash[keys.zip(dates_arr)]
    end
  end

  def flatpickr_booked_dates_object
    {
      dateFormat: "Y-m-d",
      disable: booked_dates_json_objects
    }
  end
end
