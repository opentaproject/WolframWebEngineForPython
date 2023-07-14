  opentaMath[ x_] :=
    Module[ {q,y,res,ret,success,messages},
      res0 = EvaluationData[ ToExpression[ x ] ];
      Print["RES0 = ", res0 ];
      success = Lookup[res0,"Success"];
      messages = Lookup[res0,"Messages"];
      If[ success, 
      	q = Lookup[res0,"Result"];
      	res = EvaluationData[ Simplify[   q    ] ];
      	Print["RES = ", res ];
      	y = Lookup[res, "Result"];
      	success = Lookup[res,"Success"];
      	messages = Lookup[res,"Messages"];
      	ret = If[ success,  y ,  messages[[1]]  ];
      	Print[ ret ];
      	Print[ success ];
	, ret = messages  ];
     Return[ ret ]
    ]

