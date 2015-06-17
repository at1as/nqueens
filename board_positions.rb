module BoardPositions

  # Return array of board positions
  def BoardPositions.populate_board_array
    
    boards = []

    # 2 x 2 - there exist no valid solutions for 2x2
    
    boards <<  "Q- 
                -Q" # 2x2 Diagonal Conflict
    boards <<  "Q- 
                Q-" # 2x2 Column Conflict
    boards <<  "QQ 
                --" # 2x2 Row Conflict

    # 3 x 3 - there exist no valid solutions for 3x3
    
    boards <<  "-Q- 
                Q--
                --Q" # 3x3 Diagonal Conflict
    boards <<  "Q-- 
                Q-- 
                --Q" # 3x3 Column Conflict
    boards <<  "-QQ 
                --- 
                Q--" # 3x3 Row Conflict

    # 4 x 4 - there exist valid solutions for 4x4
    
    boards <<  "-Q--
                ---Q 
                Q--- 
                --Q-" # 4x4 Valid

    boards <<  "Q--- 
                Q---
                ---Q
                -Q--" # 4x4 Column Conflict

    boards <<  "QQ--
                ---Q
                --Q-
                ----" # 4x4 Row Conflict

    boards <<  "Q---
                -Q--
                --Q-
                ---Q" # 4x4 Diagonal Conflict ((+x,-y),(-x,+y) directions)

    boards <<  "---Q
                --Q-
                -Q--
                Q---" # 4x4 Diagonal Conflict ((-x,-y),(+x,+y) directions)

    # 5 x 5 - there exist valid solutions for 5x5
    
    boards <<  "Q----
                --Q--
                ----Q
                -Q---
                ---Q-" # 5x5 Valid

    boards <<  "QQQQQ
                -----
                -----
                -----
                -----" # 5x5 Row Conflict

    boards <<  "Q----
                Q----
                Q----
                Q----
                Q----" # 5x5 Column Conflict

    boards <<  "Q----
                -Q---
                --Q--
                ---Q-
                ----Q" # 5x5 Diagonal Conflict ((+x,-y),(-x,+y) directions)

    boards <<  "----Q
                ---Q-
                --Q--
                -Q---
                Q----" # 5x5 Diagonal Conflict ((-x,-y),(+x,+y) directions)
  end

end

