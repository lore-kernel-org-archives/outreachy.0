X-GM-THRID: 6391035517840916480
Date: Mon, 6 Mar 2017 13:07:25 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sreyamittal5@gmail.com, lars@metafoo.de, Michael.Hennerich@analog.com,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	jic23@kernel.org
Message-Id: <72772cff-a833-4b75-955c-2d87d27f2cd3@googlegroups.com>
In-Reply-To: <1ea6cdb8-bdea-9cea-e4bc-dd5006de4f1b@kernel.org>
References: <20170225140429.21506-1-sreyamittal5@gmail.com>
 <1ea6cdb8-bdea-9cea-e4bc-dd5006de4f1b@kernel.org>
Subject: Re: [PATCH v2] staging: iio: Single source header file
 reorganization
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_811_183910785.1488834445630"
X-Google-Token: EI2f98UFfTVmVMzoqDY0
X-Google-IP: 14.139.82.6

------=_Part_811_183910785.1488834445630
Content-Type: multipart/alternative; 
	boundary="----=_Part_812_665789761.1488834445630"

------=_Part_812_665789761.1488834445630
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 5, 2017 at 8:07:25 PM UTC+5:30, Jonathan Cameron wrote:
>
> On 25/02/17 14:04, Sreya Mittal wrote: 
> > The contents of the header file are used only by this single 
> > source file. Move content into .c and remove .h. 
> > Also alphabetize the #includes. 
> > 
> > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>> 
> Hi, 
>
> The issue here is similar to that seen in other patches recently. 
> It appears to be moving the platform data structure into the c file. 
> Whilst this is only used in the mainline kernel within this single 
> c file, that is not true in general.  This platform data file is 
> included and used in board files for boards that have this device and 
> hence needs to remain in the header. 
>

Thanks for clarifying it, So basically, this patch was unrequired since the
header file contained only the platform data structure. 

Sreya
 

>
> Jonathan 
> > --- 
> > 
> > Changes in v2: 
> > Correct the indentation. 
> > 
> >  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 33 
> +++++++++++++++++------ 
> >  drivers/staging/iio/trigger/iio-trig-bfin-timer.h | 24 
> ----------------- 
> >  2 files changed, 25 insertions(+), 32 deletions(-) 
> >  delete mode 100644 drivers/staging/iio/trigger/iio-trig-bfin-timer.h 
> > 
> > diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c 
> b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c 
> > index 4e0b4ee..5a7ff57 100644 
> > --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c 
> > +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c 
> > @@ -5,21 +5,38 @@ 
> >   * 
> >   */ 
> >   
> > +#include <asm/gptimers.h> 
> > +#include <asm/portmux.h> 
> > +#include <linux/delay.h> 
> > +#include <linux/interrupt.h> 
> > +#include <linux/irq.h> 
> >  #include <linux/kernel.h> 
> >  #include <linux/module.h> 
> >  #include <linux/platform_device.h> 
> >  #include <linux/slab.h> 
> > -#include <linux/interrupt.h> 
> > -#include <linux/irq.h> 
> > -#include <linux/delay.h> 
> > - 
> > -#include <asm/gptimers.h> 
> > -#include <asm/portmux.h> 
> > - 
> >  #include <linux/iio/iio.h> 
> >  #include <linux/iio/trigger.h> 
> >   
> > -#include "iio-trig-bfin-timer.h" 
> > +/** 
> > + * struct iio_bfin_timer_trigger_pdata - timer trigger platform data 
> > + * @output_enable: Enable external trigger pulse generation. 
> > + * @active_low: Whether the trigger pulse is active low. 
> > + * @duty_ns: Length of the trigger pulse in nanoseconds. 
> > + * 
> > + * This struct is used to configure the output pulse generation of the 
> blackfin 
> > + * timer trigger. If output_enable is set to true an external trigger 
> signal 
> > + * will generated on the pin corresponding to the timer. This is useful 
> for 
> > + * converters which needs an external signal to start conversion. 
> active_low and 
> > + * duty_ns are used to configure the type of the trigger pulse. If 
> output_enable 
> > + * is set to false no external trigger pulse will be generated and 
> active_low 
> > + * and duty_ns are ignored. 
> > + **/ 
> > + 
> > +struct iio_bfin_timer_trigger_pdata { 
> > +                bool output_enable; 
> > +                bool active_low; 
> > +                unsigned int duty_ns; 
> > +}; 
> >   
> >  struct bfin_timer { 
> >          unsigned short id, bit; 
> > diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h 
> b/drivers/staging/iio/trigger/iio-trig-bfin-timer.h 
> > deleted file mode 100644 
> > index c07321f..0000000 
> > --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.h 
> > +++ /dev/null 
> > @@ -1,24 +0,0 @@ 
> > -#ifndef __IIO_BFIN_TIMER_TRIGGER_H__ 
> > -#define __IIO_BFIN_TIMER_TRIGGER_H__ 
> > - 
> > -/** 
> > - * struct iio_bfin_timer_trigger_pdata - timer trigger platform data 
> > - * @output_enable: Enable external trigger pulse generation. 
> > - * @active_low: Whether the trigger pulse is active low. 
> > - * @duty_ns: Length of the trigger pulse in nanoseconds. 
> > - * 
> > - * This struct is used to configure the output pulse generation of the 
> blackfin 
> > - * timer trigger. If output_enable is set to true an external trigger 
> signal 
> > - * will generated on the pin corresponding to the timer. This is useful 
> for 
> > - * converters which needs an external signal to start conversion. 
> active_low and 
> > - * duty_ns are used to configure the type of the trigger pulse. If 
> output_enable 
> > - * is set to false no external trigger pulse will be generated and 
> active_low 
> > - * and duty_ns are ignored. 
> > - **/ 
> > -struct iio_bfin_timer_trigger_pdata { 
> > -        bool output_enable; 
> > -        bool active_low; 
> > -        unsigned int duty_ns; 
> > -}; 
> > - 
> > -#endif 
> > 
>
>
------=_Part_812_665789761.1488834445630
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 5, 2017 at 8:07:25 PM UTC+5:30, J=
onathan Cameron wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On 25/02=
/17 14:04, Sreya Mittal wrote:
<br>&gt; The contents of the header file are used only by this single
<br>&gt; source file. Move content into .c and remove .h.
<br>&gt; Also alphabetize the #includes.
<br>&gt;=20
<br>&gt; Signed-off-by: Sreya Mittal &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"GQf9bSG9BAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">sreyam...@gmail.com</a>&gt;
<br>Hi,
<br>
<br>The issue here is similar to that seen in other patches recently.
<br>It appears to be moving the platform data structure into the c file.
<br>Whilst this is only used in the mainline kernel within this single
<br>c file, that is not true in general. =C2=A0This platform data file is
<br>included and used in board files for boards that have this device and
<br>hence needs to remain in the header.
<br></blockquote><div><br>Thanks for clarifying it, So basically, this patc=
h was unrequired since the<br>header file contained only the platform data =
structure. <br><br>Sreya<br>=C2=A0<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddin=
g-left: 1ex;">
<br>Jonathan
<br>&gt; ---
<br>&gt;=20
<br>&gt; Changes in v2:
<br>&gt; Correct the indentation.
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.c | 33 =
+++++++++++++++++------
<br>&gt; =C2=A0drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.h | 24 =
-----------------
<br>&gt; =C2=A02 files changed, 25 insertions(+), 32 deletions(-)
<br>&gt; =C2=A0delete mode 100644 drivers/staging/iio/trigger/<wbr>iio-trig=
-bfin-timer.h
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.=
c b/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.c
<br>&gt; index 4e0b4ee..5a7ff57 100644
<br>&gt; --- a/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.c
<br>&gt; +++ b/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.c
<br>&gt; @@ -5,21 +5,38 @@
<br>&gt; =C2=A0 *
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0
<br>&gt; +#include &lt;asm/gptimers.h&gt;
<br>&gt; +#include &lt;asm/portmux.h&gt;
<br>&gt; +#include &lt;linux/delay.h&gt;
<br>&gt; +#include &lt;linux/interrupt.h&gt;
<br>&gt; +#include &lt;linux/irq.h&gt;
<br>&gt; =C2=A0#include &lt;linux/kernel.h&gt;
<br>&gt; =C2=A0#include &lt;linux/module.h&gt;
<br>&gt; =C2=A0#include &lt;linux/platform_device.h&gt;
<br>&gt; =C2=A0#include &lt;linux/slab.h&gt;
<br>&gt; -#include &lt;linux/interrupt.h&gt;
<br>&gt; -#include &lt;linux/irq.h&gt;
<br>&gt; -#include &lt;linux/delay.h&gt;
<br>&gt; -
<br>&gt; -#include &lt;asm/gptimers.h&gt;
<br>&gt; -#include &lt;asm/portmux.h&gt;
<br>&gt; -
<br>&gt; =C2=A0#include &lt;linux/iio/iio.h&gt;
<br>&gt; =C2=A0#include &lt;linux/iio/trigger.h&gt;
<br>&gt; =C2=A0
<br>&gt; -#include &quot;iio-trig-bfin-timer.h&quot;
<br>&gt; +/**
<br>&gt; + * struct iio_bfin_timer_trigger_pdata - timer trigger platform d=
ata
<br>&gt; + * @output_enable: Enable external trigger pulse generation.
<br>&gt; + * @active_low: Whether the trigger pulse is active low.
<br>&gt; + * @duty_ns: Length of the trigger pulse in nanoseconds.
<br>&gt; + *=20
<br>&gt; + * This struct is used to configure the output pulse generation o=
f the blackfin
<br>&gt; + * timer trigger. If output_enable is set to true an external tri=
gger signal
<br>&gt; + * will generated on the pin corresponding to the timer. This is =
useful for
<br>&gt; + * converters which needs an external signal to start conversion.=
 active_low and
<br>&gt; + * duty_ns are used to configure the type of the trigger pulse. I=
f output_enable
<br>&gt; + * is set to false no external trigger pulse will be generated an=
d active_low
<br>&gt; + * and duty_ns are ignored.
<br>&gt; + **/
<br>&gt; +
<br>&gt; +struct iio_bfin_timer_trigger_pdata {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool output_enable;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool active_low;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int duty_ns;
<br>&gt; +};
<br>&gt; =C2=A0
<br>&gt; =C2=A0struct bfin_timer {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned sho=
rt id, bit;
<br>&gt; diff --git a/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.=
h b/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.h
<br>&gt; deleted file mode 100644
<br>&gt; index c07321f..0000000
<br>&gt; --- a/drivers/staging/iio/trigger/<wbr>iio-trig-bfin-timer.h
<br>&gt; +++ /dev/null
<br>&gt; @@ -1,24 +0,0 @@
<br>&gt; -#ifndef __IIO_BFIN_TIMER_TRIGGER_H__
<br>&gt; -#define __IIO_BFIN_TIMER_TRIGGER_H__
<br>&gt; -
<br>&gt; -/**
<br>&gt; - * struct iio_bfin_timer_trigger_pdata - timer trigger platform d=
ata
<br>&gt; - * @output_enable: Enable external trigger pulse generation.
<br>&gt; - * @active_low: Whether the trigger pulse is active low.
<br>&gt; - * @duty_ns: Length of the trigger pulse in nanoseconds.
<br>&gt; - *
<br>&gt; - * This struct is used to configure the output pulse generation o=
f the blackfin
<br>&gt; - * timer trigger. If output_enable is set to true an external tri=
gger signal
<br>&gt; - * will generated on the pin corresponding to the timer. This is =
useful for
<br>&gt; - * converters which needs an external signal to start conversion.=
 active_low and
<br>&gt; - * duty_ns are used to configure the type of the trigger pulse. I=
f output_enable
<br>&gt; - * is set to false no external trigger pulse will be generated an=
d active_low
<br>&gt; - * and duty_ns are ignored.
<br>&gt; - **/
<br>&gt; -struct iio_bfin_timer_trigger_pdata {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool output_enabl=
e;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool active_low;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int duty=
_ns;
<br>&gt; -};
<br>&gt; -
<br>&gt; -#endif
<br>&gt;=20
<br>
<br></blockquote></div>
------=_Part_812_665789761.1488834445630--

------=_Part_811_183910785.1488834445630--

