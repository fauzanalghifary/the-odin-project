# frozen_string_literal: true

require_relative 'class/game.rb'
require_relative 'module/display.rb'
require_relative 'class/human_solver.rb'
require_relative 'class/computer_solver.rb'
require_relative 'module/game_logic.rb'
require_relative 'module/text_content.rb'
require_relative 'module/text_instructions.rb'

Game.new.play
