/*****************************************************
 * USB DSO Interface Software
 * Original Author: David Jahshan 2011
 * updated by: Geoff Ayre 2014
 * 
 * This code interfaces with the USB DSO and displays 
 * the information captured by the device.
 *****************************************************
 */




import processing.serial.*;
int screen_width, screen_height, topgap = 50;
int background_red, background_green, background_blue;
int foreground_red, foreground_green, foreground_blue;
int line_red, line_green, line_blue;
int button_on_red, button_on_green, button_on_blue;
int button_off_red, button_off_green, button_off_blue;
int grid1_red, grid1_green, grid1_blue;
int grid2_red, grid2_green, grid2_blue;

Serial USBDSOPort;
char KeyStroke = ' ';  
String ReceivedString = " ";
int x = 0, y = 0, mouse_x, mouse_y;

//folowing vaiables are for button positions
//x is start point on x. y is start point on y, w is width, h is height
char Sample_Rate=1;
int trigger_x=800, trigger_y=650, trigger_w=100, trigger_h=30;
char trigger=127;

int[] captured_data = new int[65001];
int dataindex = 0;

boolean GRID_1V;
boolean GRID_100mV;
boolean GRID_MAJOR_TIME;
boolean GRID_MINOR_TIME;
boolean FULL_GRID;
boolean SHOW_TRIGGER;
boolean DRAW_LINE;
boolean CURSOR_1;
boolean CURSOR_2;

boolean DSO_connected=false;

boolean dragging_trigger=false;
boolean dragging_c1=false;
boolean dragging_c2=false;

JSONObject configobject;
import controlP5.*;

ControlP5 cp5;

RadioButton SampleRateControl;
Toggle Grid1VButton;
Toggle Grid100mVButton;
Toggle GridMajorTimeButton;
Toggle GridMinorTimeButton;
Toggle ShowTriggerButton;
Toggle FullGridButton;
Toggle DrawLineButton;
Toggle Cursor1Button;
Toggle Cursor2Button;
Bang CaptureButton;
Bang ForceTriggerButton;
Bang AbortButton;
DropdownList CPList;
DropdownList BaudList;

void setup() 
{
  cp5 = new ControlP5(this);

  BaudList = cp5.addDropdownList("BaudRateList")
    .setPosition(topgap+100, 25)
    .setSize(85, 200)
    ;
  configobject = loadJSONObject("config.json");
  screen_width = configobject.getInt("ScreenWidth");
  screen_height = configobject.getInt("ScreenHeight");
  button_on_red = configobject.getInt("ButtonOnColourRed");
  button_on_green = configobject.getInt("ButtonOnColourGreen");
  button_on_blue = configobject.getInt("ButtonOnColourBlue");

  BaudList.setBackgroundColor(color(190));
  BaudList.setItemHeight(20);
  BaudList.setBarHeight(15);
  BaudList.getCaptionLabel().getStyle().marginTop = 3;
  BaudList.getCaptionLabel().getStyle().marginLeft = 3;
  BaudList.getValueLabel().getStyle().marginTop = 3;
  BaudList.addItem("9600", 1);
  BaudList.addItem("19200", 2);
  BaudList.addItem("38400", 3);
  BaudList.addItem("57600", 4);
  BaudList.addItem("115200", 5);
  BaudList.setOpen(false);
  BaudList.setColorActive(color(button_on_red, button_on_green, button_on_blue));

 // surface.setSize(screen_width, screen_height);
  size(400, 400);
  //surface.setResizable(true);
  //surface.setSize(screen_width,screen_height);

  stroke(0);
}
void draw() 
{
  background(123);
}