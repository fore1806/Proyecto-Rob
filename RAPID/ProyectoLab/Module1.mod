MODULE Module1
    CONST robtarget LimInf:=[[-1.268558474,-443.594527115,14.946918722],[0,0.707106781,0.707106781,0],[1,0,1,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup:=[[2.920655475,-964.874814922,14.510384672],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup4:=[[463.722752628,-820,30.05181616],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim3Sup:=[[735.880314711,71.133179396,32.548470254],[-0.000000014,0.707106783,0.707106779,0.000000019],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim2Inf:=[[50.955,350.025,17.249],[0,0.707106781,0.707106781,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickApp:=[[-110.342872773,120.113138802,-128.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base105:=[[-207.99,364.51,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base10:=[[-207.99,364.51,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceApp:=[[-125.227,130.603,-70],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base205:=[[-125.23,130.6,-50],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base20:=[[-125.23,130.6,5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T105:=[[-210.324,237.721,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T10:=[[-210.32,237.72,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TPick:=[[-80.342872773,280.113138802,-158.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TApp:=[[-90.227,130.604,-136.705],[0,0,0,1],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T205:=[[-171.71,130.6,-50],[0,0,0,1],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T20:=[[-171.71,130.6,0],[0,0,0,1],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1105:=[[-100.29,69.5,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P110:=[[-100.29,69.5,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1App:=[[-125.227,130.604,-71.705],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P125:=[[-57.96,47.69,-50],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P120:=[[-57.96,47.69,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2Pick:=[[-121.178397921,126.307,-278.381942838],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2105:=[[-280.8,126.31,-25],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P210:=[[-280.8,126.31,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2App:=[[-142.214371526,187.704774603,-240.969916699],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P225:=[[-57.96,213.51,-50],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P220:=[[-57.96,213.51,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F15:=[[-137.67,214.25,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F10:=[[-137.67,214.25,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F25:=[[-206.24,130.61,-50],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F20:=[[-206.24,130.61,-5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET215:=[[-36.81,394.5,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET210:=[[-36.81,394.5,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET2App:=[[-141.14536065,182.779436275,-69.962726226],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET225:=[[-123.36,204.82,-50],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET220:=[[-123.36,204.82,-5],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET115:=[[-70.29,254.48,-25],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET110:=[[-70.29,254.48,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET1App:=[[-97.458484126,249.43301943,-141.897823694],[0.336487213,0,0,-0.941688035],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET125:=[[-123.28,56.29,-50],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET120:=[[-123.28,56.29,-5],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget Home:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget tool:=[[-89.3,42.5,-51.4,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick1:=[[190,-270,25],[0,-0.707106781,0.707106781,0],[-1,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick2:=[[510,-270,25],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick25:=[[510,-270,265],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick35:=[[510,-740,115],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick3:=[[510,-740,25],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place1:=[[500,80,50],[0,0,1,0],[0,-2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place2:=[[730,80,50],[0,0,1,0],[0,-2,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place3:=[[730,-180,50],[0,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget HomeFinal:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place25:=[[730,80,189.221358685],[0,0,1,0],[0,-2,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place35:=[[709.843744914,-125.823426519,203.377654421],[0,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick155:=[[190,-270,85],[0,-0.707106781,0.707106781,0],[-1,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick15:=[[344.16462737,-416.981851031,243.887447253],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC main()
        Homing;
        WaitDI DI_01,1;
        Set DO_03;
        !DefinePick;
        !WaitDI DI_01,1;
        !DefinePlace;
        !WaitDI DI_01,1;
        MoveBase;
        MoveT;
        MoveP1;
        MoveP2;
        MoveET1;
        MoveET2;
        MovePR;
        Final;
        Reset DO_03;
    ENDPROC
    PROC Limits()
        MoveJ LimInf,v150,fine,NewChupa\WObj:=NewWorld;
        MoveL LimSup,v150,fine,NewChupa\WObj:=NewWorld;
        MoveL LimSup4,v150,fine,NewChupa\WObj:=NewWorld;
        MoveL Lim3Sup,v150,fine,NewChupa\WObj:=NewWorld;
        MoveL Lim2Inf,v150,fine,NewChupa\WObj:=NewWorld;
        MoveJ LimInf,v150,fine,NewChupa\WObj:=NewWorld;
    ENDPROC
    PROC MoveBase()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL Base105,v100,fine,NewChupa\WObj:=Pick;
        MoveL Base10,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL Base105,v50,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL Base205,v100,fine,NewChupa\WObj:=Place;
        MoveL Base20,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL Base205,v50,fine,NewChupa\WObj:=Place;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC MoveT()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL T105,v100,fine,NewChupa\WObj:=Pick;
        MoveL T10,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL T105,v100,fine,NewChupa\WObj:=Pick;
        MoveL TPick,v100,fine,NewChupa\WObj:=Pick;
        MoveJ TApp,v100,fine,NewChupa\WObj:=Place;
        MoveL T205,v100,fine,NewChupa\WObj:=Place;
        MoveL T20,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL T205,v100,fine,NewChupa\WObj:=Place;
        MoveL TApp,v100,fine,NewChupa\WObj:=Place;
        MoveJ TPick,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC MoveP1()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL P1105,v100,fine,NewChupa\WObj:=Pick;
        MoveL P110,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL P1105,v100,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P1App,v100,fine,NewChupa\WObj:=Place;
        MoveL P125,v100,fine,NewChupa\WObj:=Place;
        WaitDI DI_01,1;
        MoveL P120,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL P125,v100,fine,NewChupa\WObj:=Place;
        MoveL P1App,v100,fine,NewChupa\WObj:=Place;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC MoveP2()
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveL P2105,v100,fine,NewChupa\WObj:=Pick;
        MoveL P210,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL P2105,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P2App,v100,fine,NewChupa\WObj:=Place;
        MoveL P225,v100,fine,NewChupa\WObj:=Place;
        MoveL P220,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL P225,v100,fine,NewChupa\WObj:=Place;
        MoveL P2App,v100,fine,NewChupa\WObj:=Place;
    ENDPROC
    PROC MovePR()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL F15,v100,fine,NewChupa\WObj:=Pick;
        MoveL F10,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL F15,v50,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL F25,v100,fine,NewChupa\WObj:=Place;
        MoveL F20,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL F25,v50,fine,NewChupa\WObj:=Place;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC MoveET2()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL ET215,v100,fine,NewChupa\WObj:=Pick;
        MoveL ET210,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL ET215,v50,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL ET2App,v100,fine,NewChupa\WObj:=Place;
        MoveL ET225,v50,fine,NewChupa\WObj:=Place;
        MoveL ET220,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL ET225,v50,fine,NewChupa\WObj:=Place;
        MoveL ET2App,v100,fine,NewChupa\WObj:=Place;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC MoveET1()
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveL ET115,v100,fine,NewChupa\WObj:=Pick;
        MoveL ET110,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL ET115,v100,fine,NewChupa\WObj:=Pick;
        MoveL P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveJ ET1App,v100,fine,NewChupa\WObj:=Place;
        MoveL ET125,v100,fine,NewChupa\WObj:=Place;
        MoveL ET120,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL ET125,v100,fine,NewChupa\WObj:=Place;
        MoveL ET1App,v100,fine,NewChupa\WObj:=Place;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
    PROC Homing()
        MoveAbsJ Home,v200,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC ToolSet()
        MoveAbsJ Home,v300,fine,tool0\WObj:=wobj0;
        WaitDI DI_01,1;
        MoveAbsJ tool,v300,fine,tool0\WObj:=wobj0;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    PROC DefinePick()
        MoveJ pick1,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveL pick155,v300,fine,NewChupa\WObj:=NewWorld;
        MoveJ pick15,v300,fine,NewChupa\WObj:=NewWorld;
        MoveL pick2,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveL pick25,v300,fine,NewChupa\WObj:=NewWorld;
        MoveJ pick35,v300,fine,NewChupa\WObj:=NewWorld;
        MoveL pick3,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC DefinePlace()
        MoveJ place1,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveL place2,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveL place25,v300,fine,NewChupa\WObj:=NewWorld;
        MoveJ place35,v300,fine,NewChupa\WObj:=NewWorld;
        MoveJ place3,v300,fine,NewChupa\WObj:=NewWorld;
        WaitDI DI_01,1;
        MoveAbsJ Home,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
    PROC Final()
        MoveAbsJ HomeFinal,v300,fine,NewChupa\WObj:=wobj0;
    ENDPROC
ENDMODULE