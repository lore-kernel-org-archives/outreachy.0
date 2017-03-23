X-GM-THRID: 6336586801480728576
Date: Thu, 23 Mar 2017 07:21:18 -0700 (PDT)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: gnudevliz@gmail.com, daniel.baluta@intel.com, amsfield22@gmail.com
Message-Id: <3ad92cf5-564b-4150-aa8e-89336e617679@googlegroups.com>
In-Reply-To: <20161016234938.GA2809@Socrates-DK>
References: <20161001195259.GB12284@d830.WORKGROUP>
 <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com>
 <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost>
 <20161016020322.GA2406@Socrates-DK>
 <20161016212357.GA2263@localhost>
 <20161016234938.GA2809@Socrates-DK>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_467_2025420860.1490278878983"
X-Google-Token: EN6zz8YFNAJUPLtzSiE0
X-Google-IP: 14.139.82.6

------=_Part_467_2025420860.1490278878983
Content-Type: multipart/alternative; 
	boundary="----=_Part_468_306939360.1490278878983"

------=_Part_468_306939360.1490278878983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, October 17, 2016 at 5:19:49 AM UTC+5:30, Eva Rachel Retuya wrote:
>
> On Sun, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wrote: 
> > On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote: 
> > > Hi Liz, 
> > > 
> > > On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote: 
> > > ----massive snip---- 
> > > > I think that running $ make -j2 && sudo make modules_install could 
> solve 
> > > > this problem? If I can't do insmod can I just do modprobe? 
> > > > 
> > > 
> > > modprobe is OK to use. 
> > > 
> > Thanks, I used modprobe and the modules were loaded. 
> > 
> > I'm running into this issue in Task 01 
> > When I do 'ls -l /config/iio/devices/dummy/' the terminal just hangs. I 
> > closed the terminal and tried it a few more times but it was just 
> > freezing and I had to xkill it. I have been following the tutorial. I 
> > mounted the configfs at /config, made the modules, loaded them, ran 
> > mkdir /config/iio/devices/dummy/my_dummy_device. 
> > 
>
> Hi, 
>
> I suggest to do 'make clean' again and start from scratch. 
> Run 'make menuconfig' and make sure the settings look like this: 
> {*} Industrial I/O support ---> (instead of module, make this built-in, 
> use 'y' instead of 'm') 
> <Descend this option where you'll configure configfs, dummy, etc> 
> {*} Enable IIO configuration via configfs (use 'y' instead of 'm') 
> <M> Enable software IIO device support 
> <M> Enable software triggers support 
>
> Under IIO dummy driver: 
> <M> An example driver with no hardware requirements 
> [*] Event generation support 
> [*] Buffered capture support 
>
> Compile and install, then boot to that kernel and test if it works. 
>

Hi,

I am able to insert module iio_dummy_evgen.ko but when I run
$ sudo insmod iio_dummy.ko

I got the following error:
insmod: ERROR: could not insert module iio_dummy.ko: Unknown symbol in 
module

And in dmesg I am getting following error:
iio_dummy: Unknown symbol iio_register_sw_device_type (err 0) 

Any Idea?
 

>
> Eva 
> > These succeeded: 
> > lsmod | grep dummy 
> > ls -l /sys/bus/iio/devices/iio:device0/ 
> > ls -l /sys/bus/iio/devices/iio_evgen/ 
> > 
> > The one that's no working is 
> > ls -l /config/iio/devices/dummy/my_dummy_device 
> > or 
> > ls -l /config/iio/devices/dummy/ 
> > 
> > Liz 
> > 
> > > Eva 
> > > 
> > > > Thanks, 
> > > > Liz 
> > > > 
> > > > > thanks, 
> > > > > Daniel. 
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > > > To unsubscribe from this group and stop receiving emails from it, 
> send an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > > > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > > > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40localhost. 
>
> > > > For more options, visit https://groups.google.com/d/optout. 
>

------=_Part_468_306939360.1490278878983
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, October 17, 2016 at 5:19:49 AM UTC+5:30=
, Eva Rachel Retuya wrote:<blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On S=
un, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wrote:
<br>&gt; On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote:
<br>&gt; &gt; Hi Liz,
<br>&gt; &gt;=20
<br>&gt; &gt; On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman w=
rote:
<br>&gt; &gt; ----massive snip----
<br>&gt; &gt; &gt; I think that running $ make -j2 &amp;&amp; sudo make mod=
ules_install could solve
<br>&gt; &gt; &gt; this problem? If I can&#39;t do insmod can I just do mod=
probe?
<br>&gt; &gt; &gt;=20
<br>&gt; &gt;=20
<br>&gt; &gt; modprobe is OK to use.
<br>&gt; &gt;=20
<br>&gt; Thanks, I used modprobe and the modules were loaded.
<br>&gt;=20
<br>&gt; I&#39;m running into this issue in Task 01
<br>&gt; When I do &#39;ls -l /config/iio/devices/dummy/&#39; the terminal =
just hangs. I
<br>&gt; closed the terminal and tried it a few more times but it was just
<br>&gt; freezing and I had to xkill it. I have been following the tutorial=
. I
<br>&gt; mounted the configfs at /config, made the modules, loaded them, ra=
n
<br>&gt; mkdir /config/iio/devices/dummy/my_<wbr>dummy_device.
<br>&gt;=20
<br>
<br>Hi,
<br>
<br>I suggest to do &#39;make clean&#39; again and start from scratch.
<br>Run &#39;make menuconfig&#39; and make sure the settings look like this=
:
<br>{*} Industrial I/O support ---&gt; (instead of module, make this built-=
in,
<br>use &#39;y&#39; instead of &#39;m&#39;)
<br>&lt;Descend this option where you&#39;ll configure configfs, dummy, etc=
&gt;
<br>{*} Enable IIO configuration via configfs (use &#39;y&#39; instead of &=
#39;m&#39;)
<br>&lt;M&gt; Enable software IIO device support
<br>&lt;M&gt; Enable software triggers support
<br>
<br>Under IIO dummy driver:
<br>&lt;M&gt; An example driver with no hardware requirements
<br>[*] Event generation support
<br>[*] Buffered capture support
<br>
<br>Compile and install, then boot to that kernel and test if it works.
<br></blockquote><div><br>Hi,<br><br>I am able to insert module iio_dummy_e=
vgen.ko but when I run<br>$ sudo insmod iio_dummy.ko<br><br>I got the follo=
wing error:<br>insmod: ERROR: could not insert module iio_dummy.ko: Unknown=
 symbol in module<br><br>And in dmesg I am getting following error:<br>iio_=
dummy: Unknown symbol iio_register_sw_device_type (err 0) <br><br>Any Idea?=
<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>Eva
<br>&gt; These succeeded:
<br>&gt; lsmod | grep dummy=20
<br>&gt; ls -l /sys/bus/iio/devices/iio:<wbr>device0/
<br>&gt; ls -l /sys/bus/iio/devices/iio_<wbr>evgen/
<br>&gt;=20
<br>&gt; The one that&#39;s no working is=20
<br>&gt; ls -l /config/iio/devices/dummy/my_<wbr>dummy_device
<br>&gt; or=20
<br>&gt; ls -l /config/iio/devices/dummy/
<br>&gt;=20
<br>&gt; Liz
<br>&gt;=20
<br>&gt; &gt; Eva
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; Thanks,
<br>&gt; &gt; &gt; Liz
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; &gt; thanks,
<br>&gt; &gt; &gt; &gt; Daniel.
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; --=20
<br>&gt; &gt; &gt; You received this message because you are subscribed to =
the Google Groups &quot;outreachy-kernel&quot; group.
<br>&gt; &gt; &gt; To unsubscribe from this group and stop receiving emails=
 from it, send an email to <a href=3D"javascript:" target=3D"_blank" gdf-ob=
fuscated-mailto=3D"iFRXwnTwAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; &gt; &gt; To post to this group, send email to <a href=3D"javascri=
pt:" target=3D"_blank" gdf-obfuscated-mailto=3D"iFRXwnTwAgAJ" rel=3D"nofoll=
ow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=
=3D"this.href=3D&#39;javascript:&#39;;return true;">outreach...@googlegroup=
s.<wbr>com</a>.
<br>&gt; &gt; &gt; To view this discussion on the web visit <a href=3D"http=
s://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40loc=
alhost" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
https://groups.google.com/d/msgid/outreachy-kernel/20161015210748.GA13776%4=
0localhost&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.go=
ogle.com/d/msgid/outreachy-kernel/20161015210748.GA13776%40localhost&#39;;r=
eturn true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>2=
0161015210748.GA13776%<wbr>40localhost</a>.
<br>&gt; &gt; &gt; For more options, visit <a href=3D"https://groups.google=
.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/optout&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;">https:=
//groups.google.com/d/<wbr>optout</a>.
<br></blockquote></div>
------=_Part_468_306939360.1490278878983--

------=_Part_467_2025420860.1490278878983--

