globals [
  food-sources-coords
]

patches-own [
  food                 ;; amount of food on this patch (0, 1, or 2)
  nest?                ;; true on nest patches, false elsewhere
  nest-scent           ;; number that is higher closer to the nest
	food-source-number   ;; number to identify the food sources
]

to setup
  clear-all
  set-default-shape turtles "bug"
  create-turtles population
  [ set size 2         ;; easier to see
    set color red  ]   ;; red = not carrying food
  set food-sources-coords read-from-string (word "[" food-sources "]")
  setup-patches
  reset-ticks
end

to setup-patches
  ask patches
  [ setup-nest
    setup-food
    recolor-patch ]
end

to setup-nest  ;; patch procedure
  ;; set nest? variable to true inside the nest, false elsewhere
  set nest? (distancexy 0 0) < 5
  ;; spread a nest-scent over the whole world -- stronger near the nest
  set nest-scent 200 - distancexy 0 0
end

to setup-food  ;; patch procedure
  let counter 1
  foreach food-sources-coords [
    c -> 
    if (distancexy ((item 0 c) * max-pxcor) ((item 1 c) * max-pycor)) < 5
  	[ set food-source-number counter ]
    set counter counter + 1
  ]
  ;; set "food" at sources to either 1 or 2, randomly
  ;;if food-source-number > 0
  ;;[ set food one-of [1 2] ]
end

to recolor-patch  ;; patch procedure
  ;; give color to nest and food sources
  ifelse nest?
  [ set pcolor violet ]
  [ ifelse food-source-number > 0
    [
      if food-source-number mod 3 = 0 [ set pcolor cyan ]
      if food-source-number mod 3 = 1 [ set pcolor sky  ]
      if food-source-number mod 3 = 2 [ set pcolor blue ]
    ]
    [ set pcolor black ]
  ]
end

to go
  ask turtles
  [
    ifelse color = red
    [ look-for-food ]     ;; not carrying food => look for it
    [ return-to-nest ]    ;; carrying food? take it back to nest
    wiggle 
    fd 1
  ]

  ask patches
  [
    recolor-patch
  ]
end

to look-for-food  ;; turtle procedure
  if food-source-number > 0
  [
    set color orange                                ;; pick up food
    set food-source-number 0                        ;; remove food from ground
    rt 180                                          ;; turn around
    stop
  ]
end

to return-to-nest  ;; turtle procedure
  ifelse nest?
  [
    set color red
    rt 180
  ]
  [

  ]
end

to wiggle  ;; turtle procedure
  rt random 40
  lt random 40
  if not can-move? 1 [ rt 180 ]
end