MODULE Module1
   
    CONST robtarget LimInf:=[[-1.268558474,-443.594527115,14.946918722],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup:=[[2.920655475,-964.874814922,14.510384672],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup4:=[[463.722752628,-820,30.05181616],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim3Sup:=[[735.880314711,71.133179396,32.548470254],[-0.000000014,0.707106783,0.707106779,0.000000019],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim2Inf:=[[46.954799307,367.02539237,17.249386066],[0,0.707106781,0.707106781,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickApp:=[[-110.342872773,120.113138802,-128.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base105:=[[-207.99,364.51,-30],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base10:=[[-207.99,364.511,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceApp:=[[-125.227,130.603,-65],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base205:=[[-125.227,130.604,-8.971],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base20:=[[-125.227,130.603,5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T105:=[[-210.324,237.721,-35],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T10:=[[-210.324,237.721,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TPick:=[[-80.342872773,280.113138802,-158.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TApp:=[[-90.227,130.604,-136.705],[0,0,0,1],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T205:=[[-171.711,130.604,-22.457885204],[0,0,0,1],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T20:=[[-171.711,130.603,0],[0,0,0,1],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1105:=[[-100.292,69.504,-30],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P110:=[[-100.292,69.504,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1App:=[[-125.227,130.604,-71.705],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P125:=[[-57.955,47.693,-20],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P120:=[[-57.956,47.692,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2Pick:=[[-121.178397921,126.307,-278.381942838],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2105:=[[-280.797,126.307,-35],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P210:=[[-280.797,126.307,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2App:=[[-142.214371526,187.704774603,-240.969916699],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P225:=[[-57.864,213.606,-34.204],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P220:=[[-57.956,213.515,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F15:=[[-137.666,214.247,-35],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F10:=[[-137.666,214.247,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F25:=[[-206.227,130.603,-35],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F20:=[[-206.231,130.606,-5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET215:=[[-36.814,394.504,-35],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET210:=[[-36.814,394.504,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET2App:=[[-141.14536065,182.779436275,-69.962726226],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET225:=[[-123.166,204.988,-40],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET220:=[[-123.36,204.828,-5.1],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET115:=[[-70.294,254.478,-35],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET110:=[[-70.293,254.479,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET1App:=[[-97.458484126,249.43301943,-141.897823694],[0.336487213,0,0,-0.941688035],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET125:=[[-123.284,56.288,-40],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET120:=[[-123.282,56.291,-5.75],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget Home:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget tool:=[[-89.3,42.5,-51.4,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick1:=[[190,-270,25],[0,0,1,0],[-2,1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick2:=[[510,-270,25],[0,0,1,0],[-1,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick25:=[[510,-270,265],[0,0,1,0],[-1,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick35:=[[510,-740,115],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick3:=[[510,-740,25],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place1:=[[500,80,40],[0,0,1,0],[0,-2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place2:=[[730,80,40],[0,0,1,0],[0,-2,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place3:=[[730,-180,40],[0,0,1,0],[-1,-3,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget HomeFinal:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
PROC main()
        Homing1;
        !ToolSet1;
        WaitDI DI_01,1;
        WaitTime 4;
        Set DO_03;
        MoveBase1;
        !WaitDI DI_01,1;
        MoveT1; 
        !WaitDI DI_01,1;
        MoveP11;
        !WaitDI DI_01,1;
        MoveP21;
        !WaitDI DI_01,1;
        MoveET11;
        !WaitDI DI_01,1;
        MoveET21;
        !WaitDI DI_01,1;
        MovePR1;
        !WaitDI DI_01,1;
        Homing1;
        Reset DO_03;
        WaitTime 5;
    ENDPROC
     PROC Limits1()
        MoveJ LimInf,v150,fine,NewChupa\WObj:=wobj0;
        MoveL LimSup,v150,fine,NewChupa\WObj:=wobj0;
        MoveL LimSup4,v150,fine,NewChupa\WObj:=wobj0;
        MoveL Lim3Sup,v150,fine,NewChupa\WObj:=wobj0;
        MoveL Lim2Inf,v150,fine,NewChupa\WObj:=wobj0;
        MoveJ LimInf,v150,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC MoveBase1()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL Base105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL Base10,v50,fine,NewChupa\WObj:=NewPick;
        Set B1;
        Set DO_01;
        WaitTime 0.5;
        MoveL Base105,v50,fine,NewChupa\WObj:=NewPick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL Base205,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL Base20,v50,fine,NewChupa\WObj:=NewPlace;
        Reset DO_01;
        Set B2;
        WaitTime 0.5;
        MoveL Base205,v50,fine,NewChupa\WObj:=NewPlace;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC MoveT1()
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL T105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL T10,v50,fine,NewChupa\WObj:=NewPick;
        Set D1;
        Set DO_01;
        WaitTime 0.5;
        MoveL T105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL TPick,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ TApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL T205,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL T20,v50,fine,NewChupa\WObj:=NewPlace;
        Set D2;
        Reset DO_01;
        WaitTime 0.5;
        WaitTime 0.5;
        MoveL T205,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL TApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveJ TPick,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC MoveP11()
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL P1105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL P110,v50,fine,NewChupa\WObj:=NewPick;
        Set PI11;
        Set DO_01;
        WaitTime 0.5;
        MoveL P1105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ P1App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P125,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P120,v50,fine,NewChupa\WObj:=NewPlace;
        Set PI12;
        Reset DO_01;
        WaitTime 0.5;
        MoveL P125,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P1App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC MoveP21()
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=NewPick;
        MoveL P2105,v100,fine,NewChupa\WObj:=NewPick;
        MoveL P210,v50,fine,NewChupa\WObj:=NewPick;
        Set PI21;
        Set DO_01;
        WaitTime 0.5;
        MoveL P2105,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ P2App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P225,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P220,v50,fine,NewChupa\WObj:=NewPlace;
        Set PI22;
        Reset DO_01;
        WaitTime 0.5;
        MoveL P225,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL P2App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC MovePR1()
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL F15,v100,fine,NewChupa\WObj:=NewPick;
        MoveL F10,v50,fine,NewChupa\WObj:=NewPick;
        Set F1;     
        Set DO_01;
        WaitTime 0.5;
        MoveL F15,v50,fine,NewChupa\WObj:=NewPick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL F25,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL F20,v50,fine,NewChupa\WObj:=NewPlace;
        Reset DO_01;
        Set F2;
        WaitTime 0.5;
        MoveL F25,v50,fine,NewChupa\WObj:=NewPlace;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;

    ENDPROC
    PROC MoveET21()
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL ET215,v100,fine,NewChupa\WObj:=NewPick;
        MoveL ET210,v50,fine,NewChupa\WObj:=NewPick;
        Set E21;
        Set DO_01;
        WaitTime 0.5;
        MoveL ET215,v50,fine,NewChupa\WObj:=NewPick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
        MoveL ET2App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL ET225,v50,fine,NewChupa\WObj:=NewPlace;
        MoveL ET220,v50,fine,NewChupa\WObj:=NewPlace;
        WaitTime 0.5;
        Set E22;
        Reset DO_01;
        WaitTime 0.5;
        MoveL ET225,v50,fine,NewChupa\WObj:=NewPlace;
        MoveL ET2App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL PickApp,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC MoveET11()
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=NewPick;
        MoveL ET115,v100,fine,NewChupa\WObj:=NewPick;
        MoveL ET110,v50,fine,NewChupa\WObj:=NewPick;
        WaitTime 0.5;
        Set E11;
        Set DO_01;
        WaitTime 0.5;
        MoveL ET115,v100,fine,NewChupa\WObj:=NewPick;
        MoveL P2Pick,v100,fine,NewChupa\WObj:=NewPick;
        MoveJ ET1App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL ET125,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL ET120,v50,fine,NewChupa\WObj:=NewPlace;
        WaitTime 0.5;
        Set E12;
        Reset DO_01;
        WaitTime 0.5;
        MoveL ET125,v100,fine,NewChupa\WObj:=NewPlace;
        MoveL ET1App,v100,fine,NewChupa\WObj:=NewPlace;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=NewPick;
    ENDPROC
    PROC Homing1()
        MoveAbsJ Home,v200,fine,NewChupa\WObj:=NewPlace;
        Reset B1;
        Reset B2;
        Reset D1;
        Reset D2;
        Reset E11;
        Reset E12;
        Reset E21;
        Reset E22;
        Reset PI11;
        Reset PI12;
        Reset PI21;
        Reset PI22;
        Reset F1;
        Reset F2;
        Reset DO_01;
    ENDPROC
    PROC ToolSet1()
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
        WaitDI DI_01,1;
        MoveAbsJ tool,v300,fine,NewChupa\WObj:=wobj0;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    
        PROC DefinePick()
        MoveJ pick1,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveL pick2,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveL pick25,v300,fine,NewChupa\WObj:=World;
        MoveJ pick35,v300,fine,NewChupa\WObj:=World;
        MoveL pick3,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC DefinePlace()
        MoveJ place1,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveL place2,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveL place3,v300,fine,NewChupa\WObj:=World;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC Final()
        MoveAbsJ HomeFinal,v300,fine,NewChupa\WObj:=NewPick;
        Reset DO_03;
    ENDPROC
ENDMODULE