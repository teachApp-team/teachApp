class TopController < ApplicationController
  def home
    @center_date = Date.new(2020, 1, 18)
    @date = @center_date - Date.current
    @date_of_examination = @date.to_i
    
    @scores = []
    @type_scores = {}
    
    @type_names = TestType.all
    
    @test_types = TestType.all
    
    # TestType.find_by(id: 1).tests.each do |test|
    #     test.scores.each do |score|
    #       @scores.push(score.score)
    #     end
    # end
    @test_types.each do |type|
      type.tests.each do |test|
        test.scores.each do |score|
          @scores.push(score.score)
        end
      end
      @type_scores[type.id] = @scores
      @scores = []
    end

    
    @total = 0
    @type_ave_scores = {}
    @type_scores.each do |i, val|
      val.each do |score|
        @total = @total + score
      end
      @ave_score = @total / val.length
      @type_ave_scores[i] = @ave_score
      @total = 0
      @ave_score = 0
    end
    # @test_types[1].each do |s|
    #   @total = @total + s
    # end
    @test_types = {}
     @test_types[1] = [2,2,2,2,2,2]
     @test_types[2] = [2,2,2,2,2,2]
     @test_types[3] = [2,2,2,2,2,2]
     @test_types[4] = [2,2,2,2,2,2]
    @ave_score = @total / 1
    
    @ranking_scores =  @scores.sort.reverse
  end
  
end

