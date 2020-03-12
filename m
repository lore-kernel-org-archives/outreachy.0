X-GM-THRID: 6803327190249242624
Date: Thu, 12 Mar 2020 09:32:52 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <70084eb2-233f-48ad-b1ff-f6a22a1f49a0@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.2003121538470.2418@hadrien>
References: <20200312142357.GA29468@deeUbuntu>
 <alpine.DEB.2.21.2003121538470.2418@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Reformat longer
 macro definitions
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1564_1387299375.1584030772516"
X-Google-Token: ELTIqfMFkvY1L5sPKFY0
X-Google-IP: 103.39.128.28

------=_Part_1564_1387299375.1584030772516
Content-Type: multipart/alternative; 
	boundary="----=_Part_1565_1275069242.1584030772516"

------=_Part_1565_1275069242.1584030772516
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, 12 March 2020 20:10:04 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Thu, 12 Mar 2020, Deepak R Varma wrote: 
>
> > Multiple macro definitions crossings 80 character line length nakes it 
> > hard to understand. Reformating the these lines makes the code more 
> > readable and easy to understand. Issue flagged by checkpatch script. 
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
> > 
> > Changes in V2: 
> >         - Update patch short description to avoid confution with an 
> earlier patch 
> > description. 
>
> Thsi information goes below the --- so that it will be dropped when the 
> patch is applied.  When someone looks through the git history they will 
> have no idea what "and earlier patch description" refers to. 
>
> julia 
>

Is this done at the time of "commit --amend" or should this be added in the 
email template manually before sending the patch?

Deepak.

>
> > --- 
> >  drivers/staging/fbtft/fbtft.h | 14 +++++++++++--- 
> >  1 file changed, 11 insertions(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/fbtft/fbtft.h 
> b/drivers/staging/fbtft/fbtft.h 
> > index 5f782da51959..81da30f4062e 100644 
> > --- a/drivers/staging/fbtft/fbtft.h 
> > +++ b/drivers/staging/fbtft/fbtft.h 
> > @@ -348,9 +348,17 @@ module_exit(fbtft_driver_module_exit); 
> > 
> >  /* shorthand debug levels */ 
> >  #define DEBUG_LEVEL_1        DEBUG_REQUEST_GPIOS 
> > -#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 | 
> DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE) 
> > -#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET | 
> DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | 
> DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS) 
> > -#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ | 
> DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT 
> | DEBUG_FB_BLANK) 
> > +#define DEBUG_LEVEL_2        (DEBUG_LEVEL_1 | 
> DEBUG_DRIVER_INIT_FUNCTIONS        \ 
> > +                                       | DEBUG_TIME_FIRST_UPDATE) 
> > +#define DEBUG_LEVEL_3        (DEBUG_LEVEL_2 | DEBUG_RESET | 
> DEBUG_INIT_DISPLAY   \ 
> > +                                       | DEBUG_BLANK | 
> DEBUG_REQUEST_GPIOS  \ 
> > +                                       | DEBUG_FREE_GPIOS               
>     \ 
> > +                                       | DEBUG_VERIFY_GPIOS             
>     \ 
> > +                                       | DEBUG_BACKLIGHT | DEBUG_SYSFS) 
> > +#define DEBUG_LEVEL_4        (DEBUG_LEVEL_2 | DEBUG_FB_READ | 
> DEBUG_FB_WRITE     \ 
> > +                                       | DEBUG_FB_FILLRECT             
>      \ 
> > +                                       | DEBUG_FB_COPYAREA             
>      \ 
> > +                                       | DEBUG_FB_IMAGEBLIT | 
> DEBUG_FB_BLANK) 
> >  #define DEBUG_LEVEL_5        (DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY) 
> >  #define DEBUG_LEVEL_6        (DEBUG_LEVEL_4 | DEBUG_LEVEL_5) 
> >  #define DEBUG_LEVEL_7        0xFFFFFFFF 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20200312142357.GA29468%40deeUbuntu. 
>
> > 
>

------=_Part_1565_1275069242.1584030772516
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, 12 March 2020 20:10:04 UTC+5:30, Juli=
a Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 12 Mar 2020, Deepak R Varma wrote:
<br>
<br>&gt; Multiple macro definitions crossings 80 character line length nake=
s it
<br>&gt; hard to understand. Reformating the these lines makes the code mor=
e
<br>&gt; readable and easy to understand. Issue flagged by checkpatch scrip=
t.
<br>&gt;
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"QULH9uVoAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>&gt;
<br>&gt; Changes in V2:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- Update patch sho=
rt description to avoid confution with an earlier patch
<br>&gt; description.
<br>
<br>Thsi information goes below the --- so that it will be dropped when the
<br>patch is applied. =C2=A0When someone looks through the git history they=
 will
<br>have no idea what &quot;and earlier patch description&quot; refers to.
<br>
<br>julia
<br></blockquote><div><br></div><div>Is this done at the time of &quot;comm=
it --amend&quot; or should this be added in the email template manually bef=
ore sending the patch?</div><div><br></div><div>Deepak.<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: =
1px #ccc solid;padding-left: 1ex;">
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
<br>&gt; =C2=A01 file changed, 11 insertions(+), 3 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/fbtft/fbtft.<wbr>h b/drivers/staging/=
fbtft/fbtft.<wbr>h
<br>&gt; index 5f782da51959..81da30f4062e 100644
<br>&gt; --- a/drivers/staging/fbtft/fbtft.<wbr>h
<br>&gt; +++ b/drivers/staging/fbtft/fbtft.<wbr>h
<br>&gt; @@ -348,9 +348,17 @@ module_exit(fbtft_driver_<wbr>module_exit);
<br>&gt;
<br>&gt; =C2=A0/* shorthand debug levels */
<br>&gt; =C2=A0#define DEBUG_LEVEL_1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0DEBUG_<wbr>REQUEST_GPIOS
<br>&gt; -#define DEBUG_LEVEL_2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_=
UPDATE)
<br>&gt; -#define DEBUG_LEVEL_3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK =
| DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKL=
IGHT | DEBUG_SYSFS)
<br>&gt; -#define DEBUG_LEVEL_4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLR=
ECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
<br>&gt; +#define DEBUG_LEVEL_2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_TIME_FIRST_UPDATE)
<br>&gt; +#define DEBUG_LEVEL_3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_BLANK | DEBUG_REQUEST_GPIOS =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_FREE_GPIOS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_VERIFY_GPIOS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_BACKLIGHT | DEBUG_SYSFS)
<br>&gt; +#define DEBUG_LEVEL_4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(DEBUG_<wbr>LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE =C2=A0 =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_FB_FILLRECT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_FB_COPYAREA =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
<br>&gt; =C2=A0#define DEBUG_LEVEL_5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(DEBUG_<wbr>LEVEL_3 | DEBUG_UPDATE_DISPLAY)
<br>&gt; =C2=A0#define DEBUG_LEVEL_6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(DEBUG_<wbr>LEVEL_4 | DEBUG_LEVEL_5)
<br>&gt; =C2=A0#define DEBUG_LEVEL_7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>0xFFFFFFFF
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"QULH9uVoAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20200312142357.GA29468%40deeUbuntu" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20200312142357.GA29468%40deeUbuntu=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20200312142357.GA29468%40deeUbuntu&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20200312142=
357.GA29468%<wbr>40deeUbuntu</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1565_1275069242.1584030772516--

------=_Part_1564_1387299375.1584030772516--

