# Simulation Banner
puts "\n\n"
puts "###############################################################################"
puts "#                                                                             #"
puts "# FOURIER HEAT CONDUCTION LAW version 01.05                                   #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Copyright 2011-13 by Mark Ciotola; available for use under GNU license      #"
puts "# Last revised on 25 October 2013                                             #" 
puts "# Website: http://www.heatsuite.com                                           #"
puts "# Source site: https://github.com/mciotola/fouriers_law_of_heat_conduction    #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Description:                                                                #"
puts "# This simulation calculates the flow of heat energy across a thermal         #"
puts "# conductor that connects a warmer object to a cooler object.                 #"
puts "#                                                                             #"
puts "###############################################################################"
puts "\n\n"

      ###############################################################################
      #                                                                             #
      # Developed with Ruby 1.9.2                                                   #
      # Takes the following parameters: temperature of reservoirs                   #
      #                                 conductor material                          #
      #                                 conductor area                              #
	  #                                 conductor length                            #
      #                                                                             #
      ###############################################################################


puts "================================== Background =================================\n\n"
  
  puts " Fourier's Law of Conduction describes the flow of heat     "
  puts " energy through a material across a temperature difference. "
  puts "\n"
  puts " dQ/dt = (k A ) (d T / d L) \n"  
  puts " k = thermal conductivity of material \n"  
  puts "\n\n"
  
# Include the Math library
  include Math  
  
  
# Initialize simulation parameters

  warmertemp = 500.0 # in C; decimal point added to tell Ruby to allow floating point calculations
  coolertemp = 300.0 # C
  material = 'copper' #'iron'
  thermalconductivity = 80.0 # for iron
  area = 1.0
  length = 1.0

# Display the parameters 

  puts "================================== Parameters =================================\n\n"

  puts sprintf "  Warmer temp (in K): \t\t %7.3f " , warmertemp.to_s
  puts sprintf "  Cooler temp (in K): \t\t %7.3f " , coolertemp.to_s
  puts sprintf "  Thermal conductivity: \t %7.3f %s" , thermalconductivity.to_s, " in Watts/meter/Kelvin"
  puts sprintf "  Area (in m^2): \t\t %7.3f " , area.to_s
  puts sprintf "  Length (in m): \t\t %7.3f " , length.to_s
  puts sprintf "  Material: \t\t\t %7s " , material
  puts "\n\n"  

# Run the simulation 

  if material == 'iron'
	thermalconductivity = 80.0
  elsif material == 'copper'
    thermalconductivity = 400.0
  elsif material == 'wood'
    thermalconductivity = 0.08
  end

  tempdiff = warmertemp - coolertemp
  heatenergyflow = ( (area * thermalconductivity) / length) * tempdiff


# Display the output 

  puts "==================================== Output ===================================\n\n"
  
  puts sprintf "  Thermal Conductivity of %s %s %4.3f", material, "is", thermalconductivity	
  puts sprintf "  Temp difference (in K): \t %10.3f " , tempdiff.to_s	
  puts sprintf "  Heat energy flow (in J/s): \t %10.3f " , heatenergyflow.to_s


  puts "\n\n"

  puts "================================== Units Key ==================================\n\n"
  puts "  Abbreviation: \t\t Unit:"
  puts "\n"
  puts "       J \t\t\t Joules, a unit of energy"
  puts "       K \t\t\t Kelvin, a unit of temperature"
  puts "       m \t\t\t meters, a unit of length"
  puts "       s \t\t\t seconds, a unit of time"
  puts "\n\n"


  puts "================================== References =================================\n\n"
  puts "Daniel V. Schroeder, 2000, \"An Introduction to Thermal Physics.\""
  puts "\n\n"


# Table of thermal conductivities (Watts/meter/Kelvin)

  # Material	Thermal Conductivity
  # air				  0.026
  # wood			  0.08
  # water			  0.6
  # iron			 80
  # copper			400

