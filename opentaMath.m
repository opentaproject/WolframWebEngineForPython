  opentaMath[ x_] :=
    Module[ {q,y,res,ret,success,messages},
      q = ToExpression[ x ];
      res = EvaluationData[  Expand[ q ]  ];
      Print["RES = ", res ];
      y = Lookup[res, "Result"];
      success = Lookup[res,"Success"];
      messages = Lookup[res,"Messages"];
      ret = If[ success,  y ,  messages[[1]]  ];
      Print[ ret ];
      Print[ success ];
      Return[ ret ]
    ]

