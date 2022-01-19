class ToyesController < ApplicationController
  def index
  end
  def electrical
    @toyes=Toye.all.select { |toy| toy.category == "electrical toy" }
  end
  def ride
    @toyes=Toye.all.select { |toy| toy.category == "ride toy" }
  end
  def teddy
    @toyes=Toye.all.select { |toy| toy.category == "teddy" }
  end
  def small
    @toyes=Toye.all.select { |toy| toy.category == "small toyes" }
  end
  def musical
    @toyes=Toye.all.select { |toy| toy.category == "musical instrument" }
  end
end
