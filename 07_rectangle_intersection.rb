def rectangle_intersection(rect1, rect2)
  # a million variables
  rect1_x_values = []
  rect2_x_values = []
  left_most_x_values = []
  right_most_x_values = []
  rect1_y_values = []
  rect2_y_values = []
  top_most_y_values = []
  bottom_most_y_values = []
  #x min calc
  rect1_x_values << rect1.flatten[0] << rect1.flatten[2]
  rect2_x_values << rect2.flatten[0] << rect2.flatten[2]
  left_most_x_values << rect1_x_values.min << rect2_x_values.min
  
  #x max calc
  rect1_x_values << rect1.flatten[0] << rect1.flatten[2]
  rect2_x_values << rect2.flatten[0] << rect2.flatten[2]
  right_most_x_values << rect1_x_values.max << rect2_x_values.max

  #y min calc
  rect1_y_values << rect1.flatten[1] << rect1.flatten[3]
  rect2_y_values << rect2.flatten[1] << rect2.flatten[3]
  bottom_most_y_values << rect1_y_values.min << rect2_y_values.min

  #y max calc
  rect1_y_values << rect1.flatten[1] << rect1.flatten[3]
  rect2_y_values << rect2.flatten[1] << rect2.flatten[3]
  top_most_y_values << rect1_y_values.max << rect2_y_values.max
  
  [[left_most_x_values.max, bottom_most_y_values.max], [right_most_x_values.min, top_most_y_values.min ]]
 
end
