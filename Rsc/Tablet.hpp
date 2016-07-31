////////////////
//Base Classes//
////////////////
class RscTabletPictureFrame
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    text = "";   
};
class RscTabletFrameBase
{
    type = CT_STATIC;
    idc = -1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {1,1,1,1};
    colorText[] = {1,1,1,0.9};
    font = "PuristaLight";
    sizeEx = 0.03;
    text = "";
};
class RscTabletScreen
{
    type = CT_STATIC;
    idc = -1;
    style = ST_CENTER;
    shadow = 2;
    colorBackground[] = { 0.2,0.9,0.5, 0.9};
    colorText[] = {1,1,1,0.9};
    font = "PuristaLight";
    sizeEx = 0.03;
    text = "";
};
class RscTabletText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_MULTI;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
	colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,0};
    text = "";
    shadow = 0;
    font = "PuristaLight";
    SizeEx = 0.02300;
    fixedWidth = 0;
	borderSize = 0;

    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};
//--- HTML Structured Text
class RscTabletStructuredText {
	type = CT_STRUCTURED_TEXT;
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	style = ST_LEFT;
	text = "";
	size = "(			(			(			((safezoneW / safezoneH) min 1.1) / 1.1) / 25) * 1)";
	//SizeEx = 0.02300;
	colorText[] = {1,1,1,1.0};
	shadow = 1;
	class Attributes {
		font = "PuristaLight";
		color = "#ffffff";
		align = "left";
		shadow = 0;
	};
};
class RscTabletTextos
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = 2;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    text = "";
    shadow = 0;
    font = "PuristaSemiBold";
    SizeEx = 0.02000;
    fixedWidth = 0;
	borderSize = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};
class RscTabletTextlink
{
    access = 0;
    idc = -1;
    type = CT_HTML;
    style = ST_CENTER; 
    text = "";
	filename = "Rsc\oslink.html";
    x = 0;
    y = 0;
    h = 0;
    w = 0;
	
	colorBackground[] = {1,1,1,0};
	colorBold[] = {1,1,1,1};
	colorLink[] = {1,1,1,1};
	colorLinkActive[] = {1,1,1,1};
	colorPicture[] = {1,1,1,1};
	colorPictureBorder[] = {1,1,1,1};
	colorPictureLink[] = {1,1,1,1};
	colorPictureSelected[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	
	prevPage = "\ca\ui\data\arrow_left_ca.paa";
	nextPage = "\ca\ui\data\arrow_right_ca.paa";
	
	class H1 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.02474;
		align = "center";
	};
	
	class H2 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0286458;
		align = "center";
	};
	
	class H3 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0286458;
		align = "center";
	};
	
	class H4 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
		align = "center";
	};
	
	class H5 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
		align = "center";
	};
	
	class H6 {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
		align = "center";
	};
	
	class P {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
		align = "center";
	};
	
	class A {
		font = "PuristaMedium";
		fontBold = "PuristaSemiBold";
		sizeEx = 0.0208333;
		color = "#000000";
		align = "center";
		valign = "middle";
		shadow = false;
		shadowColor = "#ff0000";
		size = "1";
	};
   
};

class RscTabletButton
{
   access = 0;
   idc = -1;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0.8};
    colorBackgroundDisabled[] = {0,0.0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,1};
    colorFocused[] = {0.75,0.75,0.75,.5};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "PuristaLight";
    sizeEx = 0.065;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};

class RscTabletButtonMenu
{  
   access = 0;
   idc = -1;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {1,1,1,0.3};
    colorBackground[] = {0.18,0.227,0.247,1};
    colorBackgroundDisabled[] = {0.18,0.227,0.247,0.7};
    colorBackgroundActive[] = {0.18,0.227,0.247,1};
    colorFocused[] = {0.18,0.227,0.247,1};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "PuristaSemiBold";
    sizeEx = 0.060;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};
class RscTabletButtonPower
{  
	access = 0;
	idc = -1;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.18,0.227,0.247,0};
    colorBackground[] = {0.18,0.227,0.247,0};
    colorBackgroundDisabled[] = {0.18,0.227,0.247,0};
    colorBackgroundActive[] = {0.18,0.227,0.247,0};
    colorFocused[] = {0.624,0.631,0.635,0};
    colorShadow[] = {0.023529,0,0.0313725,0};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
	font = "PuristaSemiBold";
    sizeEx = 0.05;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};
class RscTabletButtonCancel
{  
   access = 0;
   idc = -1;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0.8};
    colorBackgroundDisabled[] = {0,0.0,0};
    colorBackgroundActive[] = {0.22,0.243,0.247,1};
    colorFocused[] = {1,1,1,1};
    colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "PuristaSemiBold";
    sizeEx = 0.045;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
	align = "left";
};
