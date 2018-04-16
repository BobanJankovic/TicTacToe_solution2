class TicTacToe #u ovom glavnom fajlu poziva metode i klase drugih fajlova i kad jednu pozove odmah se sve odatkle pozivaboja
  load 'grid.rb'
  load 'player.rb'
  load 'game.rb'

  def initialize
    @grid = Grid.new
    set_players
    @grid.pretty_print
    puts "Board is set let's play!!!"
    puts "Enter the no. respective the position you want to play"
    @game = Game.new(@grid, @player_1, @player_2)
  end

  def set_players
    puts "Hey! Player 1, please enter your name"
    @player_1 = Player.new(gets.chomp(), true) #ovde je true zato sto prvi moze da bira a drugi ne moze da bira token
    puts "Player 2, please Enter your name"
    @player_2 = Player.new(gets.chomp(), false)
  end




end
b=TicTacToe.new