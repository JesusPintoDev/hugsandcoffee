class MultipliersController < ApplicationController
    before_action :set_multiplier

private

    def set_multiplier
      @multiplier = Multiplier.find_by(profile_id: @profile[:id])
    end

end
