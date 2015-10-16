class BoggleBoard
  def initialize
    @board = []
    4.times do
      @board << Array.new(4, "_")
    end
  end

  def shake!
    d1 = "AAEEGN"
    d2 = "ELRTTY"
    d3 = "AOOTTW"
    d4 = "ABBJOO"
    d5 = "EHRTVW"
    d6 = "CIMOTU"
    d7 = "DISTTY"
    d8 = "EIOSST"
    d9 = "DELRVY"
    d10 = "ACHOPS"
    d11 = "HIMNQU"
    d12 = "EEINSU"
    d13 = "EEGHNW"
    d14 = "AFFKPS"
    d15 = "HLNNRZ"
    d16 = "DEILRX"
    

    dice_collection = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16]

    dice_collection.collect! do |die|
      die = die.chars
      die.collect! do |letter|
        if letter == "Q"
          letter = "Qu"
        else
          letter
        end
      end
      die.sample
    end
 
    dice_collection.shuffle

    if dice_collection.length > 0
      @board.collect! do |line|
        line.collect! do |place|
        place = dice_collection.pop
        end
      end
    end



  # @board.collect! do |line|
  #   line.collect! do |place|
  #     place = ('A'..'Z').to_a.map! {|letter| letter == "Q" ? "Qu" : letter }.sample
  #   end
  # end

  end


  def to_s
    # "omg what is this? try printing me."
    @board.map {|row|row.join("")}.join("\n")
    #"\n" joins in new line
  end
end

game = BoggleBoard.new
p game.shake!
puts game.to_s
