X-GM-THRID: 6336586801480728576
Date: Thu, 23 Mar 2017 07:50:33 -0700 (PDT)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gnudevliz@gmail.com, daniel.baluta@intel.com,
	amsfield22@gmail.com
Message-Id: <265d1cfd-9036-4412-a5da-31e449ca188a@googlegroups.com>
In-Reply-To: <CAEnQRZCp95E5cjog6ws8+Jyy3RY35G_OZrXapWaz9wA9PxiGsw@mail.gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com> <20161011172410.GA6773@localhost>
 <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
 <20161015210748.GA13776@localhost> <20161016020322.GA2406@Socrates-DK>
 <20161016212357.GA2263@localhost> <20161016234938.GA2809@Socrates-DK> <3ad92cf5-564b-4150-aa8e-89336e617679@googlegroups.com>
 <CAEnQRZCp95E5cjog6ws8+Jyy3RY35G_OZrXapWaz9wA9PxiGsw@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_627_1377917734.1490280633555"
X-Google-Token: ELnBz8YF5KHMTE4EriU0
X-Google-IP: 14.139.82.6

------=_Part_627_1377917734.1490280633555
Content-Type: multipart/alternative; 
	boundary="----=_Part_628_306455375.1490280633555"

------=_Part_628_306455375.1490280633555
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 23, 2017 at 8:09:37 PM UTC+5:30, Daniel Baluta wrote:
>
> On Thu, Mar 23, 2017 at 4:21 PM, SIMRAN SINGHAL 
> <singhal...@gmail.com <javascript:>> wrote: 
> > 
> > 
> > On Monday, October 17, 2016 at 5:19:49 AM UTC+5:30, Eva Rachel Retuya 
> wrote: 
> >> 
> >> On Sun, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wrote: 
> >> > On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retuya wrote: 
> >> > > Hi Liz, 
> >> > > 
> >> > > On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth Ferdman wrote: 
> >> > > ----massive snip---- 
> >> > > > I think that running $ make -j2 && sudo make modules_install 
> could 
> >> > > > solve 
> >> > > > this problem? If I can't do insmod can I just do modprobe? 
> >> > > > 
> >> > > 
> >> > > modprobe is OK to use. 
> >> > > 
> >> > Thanks, I used modprobe and the modules were loaded. 
> >> > 
> >> > I'm running into this issue in Task 01 
> >> > When I do 'ls -l /config/iio/devices/dummy/' the terminal just hangs. 
> I 
> >> > closed the terminal and tried it a few more times but it was just 
> >> > freezing and I had to xkill it. I have been following the tutorial. I 
> >> > mounted the configfs at /config, made the modules, loaded them, ran 
> >> > mkdir /config/iio/devices/dummy/my_dummy_device. 
> >> > 
> >> 
> >> Hi, 
> >> 
> >> I suggest to do 'make clean' again and start from scratch. 
> >> Run 'make menuconfig' and make sure the settings look like this: 
> >> {*} Industrial I/O support ---> (instead of module, make this built-in, 
> >> use 'y' instead of 'm') 
> >> <Descend this option where you'll configure configfs, dummy, etc> 
> >> {*} Enable IIO configuration via configfs (use 'y' instead of 'm') 
> >> <M> Enable software IIO device support 
> >> <M> Enable software triggers support 
> >> 
> >> Under IIO dummy driver: 
> >> <M> An example driver with no hardware requirements 
> >> [*] Event generation support 
> >> [*] Buffered capture support 
> >> 
> >> Compile and install, then boot to that kernel and test if it works. 
> > 
> > 
> > Hi, 
> > 
> > I am able to insert module iio_dummy_evgen.ko but when I run 
> > $ sudo insmod iio_dummy.ko 
> > 
> > I got the following error: 
> > insmod: ERROR: could not insert module iio_dummy.ko: Unknown symbol in 
> > module 
> > 
> > And in dmesg I am getting following error: 
> > iio_dummy: Unknown symbol iio_register_sw_device_type (err 0) 
> > 
> > Any Idea? 
>
> Find the .c file which exports this symbol. Then look into the Makefile 
> from the 
> same directory where you found the .c file and find the CONFIG_ symbol 
> which 
> compiles the .c file. 
>
>  Hi,

it worked for me using modprobe.

Daniel. 
>

------=_Part_628_306455375.1490280633555
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 23, 2017 at 8:09:37 PM UTC+5:30=
, Daniel Baluta wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, =
Mar 23, 2017 at 4:21 PM, SIMRAN SINGHAL
<br>&lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
q65LXvvHBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">singhal...@gmail.com</a>&gt; wrote:
<br>&gt;
<br>&gt;
<br>&gt; On Monday, October 17, 2016 at 5:19:49 AM UTC+5:30, Eva Rachel Ret=
uya wrote:
<br>&gt;&gt;
<br>&gt;&gt; On Sun, Oct 16, 2016 at 02:23:58PM -0700, Elizabeth Ferdman wr=
ote:
<br>&gt;&gt; &gt; On Sun, Oct 16, 2016 at 10:04:27AM +0800, Eva Rachel Retu=
ya wrote:
<br>&gt;&gt; &gt; &gt; Hi Liz,
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; On Sat, Oct 15, 2016 at 02:07:49PM -0700, Elizabeth =
Ferdman wrote:
<br>&gt;&gt; &gt; &gt; ----massive snip----
<br>&gt;&gt; &gt; &gt; &gt; I think that running $ make -j2 &amp;&amp; sudo=
 make modules_install could
<br>&gt;&gt; &gt; &gt; &gt; solve
<br>&gt;&gt; &gt; &gt; &gt; this problem? If I can&#39;t do insmod can I ju=
st do modprobe?
<br>&gt;&gt; &gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; modprobe is OK to use.
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; Thanks, I used modprobe and the modules were loaded.
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt; I&#39;m running into this issue in Task 01
<br>&gt;&gt; &gt; When I do &#39;ls -l /config/iio/devices/dummy/&#39; the =
terminal just hangs. I
<br>&gt;&gt; &gt; closed the terminal and tried it a few more times but it =
was just
<br>&gt;&gt; &gt; freezing and I had to xkill it. I have been following the=
 tutorial. I
<br>&gt;&gt; &gt; mounted the configfs at /config, made the modules, loaded=
 them, ran
<br>&gt;&gt; &gt; mkdir /config/iio/devices/dummy/my_<wbr>dummy_device.
<br>&gt;&gt; &gt;
<br>&gt;&gt;
<br>&gt;&gt; Hi,
<br>&gt;&gt;
<br>&gt;&gt; I suggest to do &#39;make clean&#39; again and start from scra=
tch.
<br>&gt;&gt; Run &#39;make menuconfig&#39; and make sure the settings look =
like this:
<br>&gt;&gt; {*} Industrial I/O support ---&gt; (instead of module, make th=
is built-in,
<br>&gt;&gt; use &#39;y&#39; instead of &#39;m&#39;)
<br>&gt;&gt; &lt;Descend this option where you&#39;ll configure configfs, d=
ummy, etc&gt;
<br>&gt;&gt; {*} Enable IIO configuration via configfs (use &#39;y&#39; ins=
tead of &#39;m&#39;)
<br>&gt;&gt; &lt;M&gt; Enable software IIO device support
<br>&gt;&gt; &lt;M&gt; Enable software triggers support
<br>&gt;&gt;
<br>&gt;&gt; Under IIO dummy driver:
<br>&gt;&gt; &lt;M&gt; An example driver with no hardware requirements
<br>&gt;&gt; [*] Event generation support
<br>&gt;&gt; [*] Buffered capture support
<br>&gt;&gt;
<br>&gt;&gt; Compile and install, then boot to that kernel and test if it w=
orks.
<br>&gt;
<br>&gt;
<br>&gt; Hi,
<br>&gt;
<br>&gt; I am able to insert module iio_dummy_evgen.ko but when I run
<br>&gt; $ sudo insmod iio_dummy.ko
<br>&gt;
<br>&gt; I got the following error:
<br>&gt; insmod: ERROR: could not insert module iio_dummy.ko: Unknown symbo=
l in
<br>&gt; module
<br>&gt;
<br>&gt; And in dmesg I am getting following error:
<br>&gt; iio_dummy: Unknown symbol iio_register_sw_device_type (err 0)
<br>&gt;
<br>&gt; Any Idea?
<br>
<br>Find the .c file which exports this symbol. Then look into the Makefile=
 from the
<br>same directory where you found the .c file and find the CONFIG_ symbol =
which
<br>compiles the .c file.
<br>
<br></blockquote><div>=C2=A0Hi,<br><br>it worked for me using modprobe.<br>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Daniel.
<br></blockquote></div>
------=_Part_628_306455375.1490280633555--

------=_Part_627_1377917734.1490280633555--

