class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end
  
  def wisest
    @oldest_director = Director.all.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    
    render({ :template => "director_templates/wisest.html.erb"})
  end

  def director_details
    #params
    
    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).at(0)
    
    @filmography = Movie.where({ :director_id => @the_director.id })

    render({ :template => "director_templates/show.html.erb"})
  end

  def coolest
    @coolest_director = Director.all.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    
    render({ :template => "director_templates/coolest.html.erb"})
  end

end