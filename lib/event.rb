require "pry"
require "time"

class Event
  attr_accessor :start_date

  def initialize(start_date_to_save, duration_to_save, title_to_save, emails)
      @start_date = Time.parse(start_date_to_save)
      @duration = duration_to_save.to_i
      @title = title_to_save
      @attendees = emails
  end

  def postpone_24h
    @start_date = @start_date + (24*60*60)
  end

  def end_date
    return @start_date + @duration*60 
  end
  
  def is_past?
    if start_date < Time.now
      true
      puts "Évènement est passé"
    else 
      false
      puts "Évènement n'est pas encore passé"
    end
  end

  def is_future?
    if start_date > Time.now
      true
      puts "Évènement n'est pas passé"
    else 
      false
      puts "Évènement est passé"
    end
  end

  def is_soon?
    if Time.now - start_date < 30
      puts "Ton rdv est dans moins de 30 minutes !"
    else 
      puts "Ton rdv est dans plus de 30 minutes"
    end
  end

  def to_s 
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration} minutes"
    puts "Invités : " + @attendees.join(', ')
  end
end