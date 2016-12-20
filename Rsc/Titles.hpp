class RscTitles {
	
	titles[] = {CTI_CaptureBar, CTI_ConstructionInterface};
	
	class CTI_CaptureBar {
		idd = 600100;
		duration = 15000;
		name = "Capture Bar";
		onLoad = "uiNamespace setVariable ['cti_title_capture', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_capture', displayNull]";
		
		class controls {
			class CTI_Progress : RscProgress {
				idc = 601000;
				x = "SafeZoneX + (SafeZoneW * 0.55)";
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.07))*-1";
				w = 0.4;
				h = 0.06;
			};
			
			class CTI_Progress_Label : RscText {
				idc = 601001;
				style = ST_CENTER;
				colorText[] = {0.258823529, 0.713725490, 1, 1};
				shadow = 2;
				x = "SafeZoneX + (SafeZoneW * 0.55)";
				w = 0.4;
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.079))*-1";
			};	
			
			class CTI_Intel_Label : RscText {
				idc = 601002;
				style = ST_RIGHT;
				colorText[] = {1,1,1,1};
				shadow = 2;
				
				SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.65)";
				
				x = "SafeZoneX + (SafeZoneW * 0.55)";
				w = 0.4;
				y = "((SafeZoneH + SafeZoneY) - (1 + 0.129))*-1";
			};
			
			class CTI_Com_Label : CTI_Intel_Label {
				idc = 601003;

				y = "((SafeZoneH + SafeZoneY) - (1 + 0.155))*-1";
			};
			
			class CTI_Upgrade_Label : CTI_Intel_Label {
				idc = 601004;

				y = "((SafeZoneH + SafeZoneY) - (1 + 0.181))*-1";
			};
			
			class CTI_FPS_Label : CTI_Intel_Label {
				idc = 601005;

				y = "((SafeZoneH + SafeZoneY) - (1 + 0.207))*-1";
			};
		};
	};
	
	class CTI_ConstructionInterface {
		idd = 112200;
		movingEnable = 0;
		duration = 1e+011;
		name = "Construction Interface";
		onLoad = "uiNamespace setVariable ['cti_title_coin', _this select 0]";
		onUnload = "uiNamespace setVariable ['cti_title_coin', displayNull]";
		
		class controlsBackground {
			class CTI_Background : RscText {
				x = "SafeZoneX";
				y = "SafeZoneY + (SafezoneH * 0.91)";
				w = "SafeZoneW";
				h = "SafeZoneH * 0.1";
				colorBackground[] = {0, 0, 0, 0.5};
				moving = 1;
			};
		};
		
		class controls {
			class Cursor : RscPictureKeepAspect {
				idc = 112201;
				x = 0.4;
				y = 0.4;
				w = 0.2;
				h = 0.2;
				colorText[] = {1, 1, 1, 0.1};
				colorBackground[] = {0, 0, 0, 0};
				text = "Rsc\Pictures\cursor_w_laserlock_gs.paa";
			};
			
			class IconWall: RscPictureKeepAspect {
				idc = 112216;
				x = "SafeZoneX + (SafeZoneW * 0.75)";
				y = "SafeZoneY + (SafezoneH * 0.953)";
				w = "SafeZoneW * 0.04";
				h = "SafeZoneH * 0.04";
				
				colorText[] = {1, 1, 1, 0.3};
				colorBackground[] = {0, 0, 0, 0};
				text = "Rsc\Pictures\icon_walls.paa";
			};
			
			class IconStaticMan: IconWall {
				idc = 112217;
				x = "SafeZoneX + (SafeZoneW * 0.72)";
				
				text = "Rsc\Pictures\icon_staticman.paa";
			};
			
			class DescriptionText : RscStructuredText {
				idc = 112214;
				x = "SafeZoneX + (SafeZoneW * 0.21)";
				y = "SafeZoneY + (SafezoneH * 0.913)";
				w = "SafeZoneW * 0.58";
				h = "SafeZoneH * 0.1";
				sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
				
				// colorBackground[] = {0, 0, 0, 0.6}; //debug
				
				class Attributes {
					font = "PuristaMedium";
					color = "#42b6ff";
					align = "left";
					shadow = true;
				};
			};
			
			class ControlsText : DescriptionText {
				idc = 112215;
				
				x = "SafeZoneX + (SafeZoneW * 0.8)";
				w = "SafeZoneW * 0.2";
			};
			
			class CashText : DescriptionText {
				idc = 112224;
				
				x = "SafeZoneX";
				w = "SafeZoneW * 0.15";
			};
		};
	};
};
