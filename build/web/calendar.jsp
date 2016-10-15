<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Simple Events Calendar</title>
<link href="css/Calendar/reset.css" type="text/css" rel="stylesheet" />
<link href="css/Calendar/dp_calendar.css" type="text/css" rel="stylesheet" />
<link href="css/Calendar/demo.css" type="text/css" rel="stylesheet" />
<link href="themes/ui-lightness/jquery.ui.all.css" type="text/css" rel="stylesheet" />

<script type='text/javascript' src='js/Calendar/jquery-1.11.1.min.js'></script> 
<script type="text/javascript" src="ui/jquery.ui.core.js"></script> 
<script type="text/javascript" src="ui/jquery.ui.position.js"></script>
<script type="text/javascript" src="ui/jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="js/Calendar/date.js"></script>
<script type="text/javascript" src="js/Calendar/jquery.dp_calendar.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
	
	var events_array = new Array(
		{
			startDate: new Date(2016,09, 20),
			endDate: new Date(2016,09, 22),
			title: "Event 1",
			description: "",
			allDay: true,
			priority: 3, // 1 = Low, 2 = Medium, 3 = Urgent
			frecuency: 1 // 1 = Daily, 2 = Weekly, 3 = Monthly, 4 = Yearly
		},
		{
			startDate: new Date(2016,09, 20, 17, 50),
			endDate: new Date(2016,09, 20, 18, 00),
			title: "Event 2",
			description: "Description 2",
			priority: 1,
			frecuency:1
		},
		{
			startDate: new Date(2016,09, 20, 18, 0),
			endDate: new Date(2016,09, 20, 21, 30),
			title: "Event 3",
			description: "Description 3",
			priority: 3,
			frecuency:1
		}
	);	
	$("#calendar").dp_calendar({
		events_array: events_array
	});
	
	
});  
</script>
</head>

<body>
	<div id="content">
    	<div class="title_h1">
        	<h1>Simple Events Calendar</h1>
        </div>
		<div id="calendar"></div>
        <div id="booking_calendar"></div>
        <div class="txt_description">
        	The jQuery Basic Event Calendar is a highly configurable plugin that adds calendar functionality to your pages.
            <br /><br />
            <h2>Demo Examples</h2>
            <ul class="ul_demo_examples">
            	<li><a href="demo/events.html">Events</a></li>
                <li><a href="demo/methods.html">Methods</a></li>
                <li><a href="demo/date_selected.html">Pre select a date</a></li>
                <li><a href="demo/order_by.html">Pre select sort by</a></li>
                <li><a href="demo/datepicker_show.html">Disable datepicker</a></li>
                <li><a href="demo/language.html">Languages</a></li>
                <li><a href="demo/hour_format.html">Hour Format AM/PM</a></li>
            </ul>
            <div class="clear"></div>
            <br />
            <h2>Usage</h2>
            Simply reference the relevant files at the head of your page like so:
<pre>
&lt;!-- Styles --&gt; 
&lt;link href=&quot;css/Calendar/dp_calendar.css&quot; type=&quot;text/css&quot; /&gt;
&lt;link href=&quot;themes/base/jquery.ui.all.css&quot; type=&quot;text/css&quot; /&gt; 
&lt;!-- jQuery --&gt; 
&lt;script src=&#039;js/Calendar/jquery-1.5.2.min.js&#039;&gt;&lt;/script&gt; 
&lt;!-- required plugins --&gt; 
&lt;script src=&quot;ui/jquery.ui.core.js&quot;&gt;&lt;/script&gt; 
&lt;script src=&quot;ui/jquery.ui.position.js&quot;&gt;&lt;/script&gt; 
&lt;script src=&quot;ui/jquery.ui.datepicker.js&quot;&gt;&lt;/script&gt; 
&lt;script src=&quot;js/Calendar/date.js&quot;&gt;&lt;/script&gt; 
&lt;script src=&quot;js/Calendar/dp_calendar.js&quot;&gt;&lt;/script&gt;
</pre>
            <h3>Initialitation</h3>
<pre>
$(document).ready(function(){
   $("#calendar").dp_calendar();
});
</pre>
            <p>#calendar is the ID of the HTML Object that will be placed instead this calendar.</p>
<pre>
&lt;div id=&#039;calendar&#039;&gt;&lt;/div&gt;
</pre><br />

            
        </div>
    </div>
</body>
</html>