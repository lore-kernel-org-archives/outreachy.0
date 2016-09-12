X-GM-THRID: 6329491627472584704
Date: Mon, 12 Sep 2016 10:23:29 -0700 (PDT)
From: shaily15297@yahoo.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: shaily15297@yahoo.com
Message-Id: <d7d78534-5a89-4684-ac4a-7fe1cb561f57@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1609121902280.29099@hadrien>
References: <1473699430-23987-1-git-send-email-shaily15297@yahoo.com>
 <alpine.DEB.2.10.1609121902280.29099@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: remove unnecessary
 spaces and tabs
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3017_1684315455.1473701009940"
X-Google-Token: EJHJ274F0bNz3cDZtys0
X-Google-IP: 14.139.82.6

------=_Part_3017_1684315455.1473701009940
Content-Type: multipart/alternative; 
	boundary="----=_Part_3018_1879328895.1473701009941"

------=_Part_3018_1879328895.1473701009941
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Sorry about that.

I've put the raw email up here: https://paste.fedoraproject.org/427297/ , 
and the From line (#38) and Signed-off-by line (#50) look the same.
outreachy-kernel only appears in the To line.


Can you please help me figure out where I'm going wrong?

On Monday, 12 September 2016 22:33:15 UTC+5:30, Julia Lawall wrote:
>
> On Mon, 12 Sep 2016, 'Shaily Sangwan' via outreachy-kernel wrote: 
>
> This doesn't look right.  Your From line is: 
>
> From: 'Shaily Sangwan' via outreachy-kernel 
>     <outreach...@googlegroups.com <javascript:>> 
> Reply-To: Shaily Sangwan <shail...@yahoo.com <javascript:>> 
>
> It should be just 
>
> From: Shaily Sangwan <shail...@yahoo.com <javascript:>> 
>
> ie, just like in your sign off. 
>
> julia 
>
>
> > This patch fixes the following checkpatch.pl warnings: 
> > statements should start on a tabstop 
> > suspect code indent for conditional statements (16, 32) 
> > 
> > Signed-off-by: Shaily Sangwan <shail...@yahoo.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8712/rtl8712_led.c | 26 +++++++++++++------------- 
> >  1 file changed, 13 insertions(+), 13 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8712/rtl8712_led.c 
> b/drivers/staging/rtl8712/rtl8712_led.c 
> > index 76d0535..399b9d8 100644 
> > --- a/drivers/staging/rtl8712/rtl8712_led.c 
> > +++ b/drivers/staging/rtl8712/rtl8712_led.c 
> > @@ -355,7 +355,7 @@ static void SwLedBlink1(struct LED_871x *pLed) 
> >                          } 
> >                          pLed->bLedScanBlinkInProgress = false; 
> >                  } else { 
> > -                         if (pLed->bLedOn) 
> > +                        if (pLed->bLedOn) 
> >                                  pLed->BlinkingLedState = LED_OFF; 
> >                          else 
> >                                  pLed->BlinkingLedState = LED_ON; 
> > @@ -390,7 +390,7 @@ static void SwLedBlink1(struct LED_871x *pLed) 
> >                          pLed->BlinkTimes = 0; 
> >                          pLed->bLedBlinkInProgress = false; 
> >                  } else { 
> > -                         if (pLed->bLedOn) 
> > +                        if (pLed->bLedOn) 
> >                                  pLed->BlinkingLedState = LED_OFF; 
> >                          else 
> >                                  pLed->BlinkingLedState = LED_ON; 
> > @@ -460,7 +460,7 @@ static void SwLedBlink2(struct LED_871x *pLed) 
> >                          } 
> >                          pLed->bLedScanBlinkInProgress = false; 
> >                  } else { 
> > -                         if (pLed->bLedOn) 
> > +                        if (pLed->bLedOn) 
> >                                  pLed->BlinkingLedState = LED_OFF; 
> >                          else 
> >                                  pLed->BlinkingLedState = LED_ON; 
> > @@ -667,7 +667,7 @@ static void SwLedBlink4(struct LED_871x *pLed) 
> >                                   
>  msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA)); 
> >                          pLed->bLedBlinkInProgress = false; 
> >                  } else { 
> > -                         if (pLed->bLedOn) 
> > +                        if (pLed->bLedOn) 
> >                                  pLed->BlinkingLedState = LED_OFF; 
> >                          else 
> >                                  pLed->BlinkingLedState = LED_ON; 
> > @@ -764,7 +764,7 @@ static void SwLedBlink5(struct LED_871x *pLed) 
> >                                           
>  msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA)); 
> >                          pLed->bLedBlinkInProgress = false; 
> >                  } else { 
> > -                         if (pLed->bLedOn) 
> > +                        if (pLed->bLedOn) 
> >                                  pLed->BlinkingLedState = LED_OFF; 
> >                          else 
> >                                  pLed->BlinkingLedState = LED_ON; 
> > @@ -946,7 +946,7 @@ static void SwLedControlMode1(struct _adapter 
> *padapter, 
> >                  if (psitesurveyctrl->traffic_busy && 
> >                      check_fwstate(pmlmepriv, _FW_LINKED)) 
> >                          ; /* dummy branch */ 
> > -                 else if (!pLed->bLedScanBlinkInProgress) { 
> > +                else if (!pLed->bLedScanBlinkInProgress) { 
> >                          if (IS_LED_WPS_BLINKING(pLed)) 
> >                                  return; 
> >                          if (pLed->bLedNoLinkBlinkInProgress) { 
> > @@ -970,7 +970,7 @@ static void SwLedControlMode1(struct _adapter 
> *padapter, 
> >                                  pLed->BlinkingLedState = LED_ON; 
> >                          mod_timer(&pLed->BlinkTimer, jiffies + 
> >                                   
>  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA)); 
> > -                 } 
> > +                } 
> >                  break; 
> >          case LED_CTL_TX: 
> >          case LED_CTL_RX: 
> > @@ -1000,7 +1000,7 @@ static void SwLedControlMode1(struct _adapter 
> *padapter, 
> > 
> >          case LED_CTL_START_WPS: /*wait until xinpin finish */ 
> >          case LED_CTL_START_WPS_BOTTON: 
> > -                 if (!pLed->bLedWPSBlinkInProgress) { 
> > +                if (!pLed->bLedWPSBlinkInProgress) { 
> >                          if (pLed->bLedNoLinkBlinkInProgress) { 
> >                                  del_timer(&pLed->BlinkTimer); 
> >                                  pLed->bLedNoLinkBlinkInProgress = 
> false; 
> > @@ -1113,9 +1113,9 @@ static void SwLedControlMode2(struct _adapter 
> *padapter, 
> > 
> >          switch (LedAction) { 
> >          case LED_CTL_SITE_SURVEY: 
> > -                 if (pmlmepriv->sitesurveyctrl.traffic_busy) 
> > +                if (pmlmepriv->sitesurveyctrl.traffic_busy) 
> >                          ; /* dummy branch */ 
> > -                 else if (!pLed->bLedScanBlinkInProgress) { 
> > +                else if (!pLed->bLedScanBlinkInProgress) { 
> >                          if (IS_LED_WPS_BLINKING(pLed)) 
> >                                  return; 
> > 
> > @@ -1132,7 +1132,7 @@ static void SwLedControlMode2(struct _adapter 
> *padapter, 
> >                                  pLed->BlinkingLedState = LED_ON; 
> >                          mod_timer(&pLed->BlinkTimer, jiffies + 
> >                                   
>  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA)); 
> > -                 } 
> > +                } 
> >                  break; 
> > 
> >          case LED_CTL_TX: 
> > @@ -1186,7 +1186,7 @@ static void SwLedControlMode2(struct _adapter 
> *padapter, 
> >                          pLed->BlinkingLedState = LED_ON; 
> >                          mod_timer(&pLed->BlinkTimer, 
> >                                    jiffies + msecs_to_jiffies(0)); 
> > -                 } 
> > +                } 
> >                  break; 
> > 
> >          case LED_CTL_STOP_WPS: 
> > @@ -1734,7 +1734,7 @@ static void SwLedControlMode6(struct _adapter 
> *padapter, 
> >          case LED_CTL_LINK:        /*solid blue*/ 
> >          case LED_CTL_SITE_SURVEY: 
> >                  if (IS_LED_WPS_BLINKING(pLed)) 
> > -                                return; 
> > +                        return; 
> >                  pLed->CurrLedState = LED_ON; 
> >                  pLed->BlinkingLedState = LED_ON; 
> >                  pLed->bLedBlinkInProgress = false; 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/1473699430-23987-1-git-send-email-shaily15297%40yahoo.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_3018_1879328895.1473701009941
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry about that.<div><br></div><div>I&#39;ve put the raw =
email up here:=C2=A0https://paste.fedoraproject.org/427297/ , and the From =
line (#38) and Signed-off-by line (#50) look the same.</div><div>outreachy-=
kernel only appears in the To line.</div><div><br></div><div><br>Can you pl=
ease help me figure out where I&#39;m going wrong?</div><div><br></div><div=
>On Monday, 12 September 2016 22:33:15 UTC+5:30, Julia Lawall  wrote:<block=
quote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-le=
ft: 1px #ccc solid;padding-left: 1ex;">On Mon, 12 Sep 2016, &#39;Shaily San=
gwan&#39; via outreachy-kernel wrote:
<br>
<br>This doesn&#39;t look right. =C2=A0Your From line is:
<br>
<br>From: &#39;Shaily Sangwan&#39; via outreachy-kernel
<br>=C2=A0 =C2=A0 &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfusca=
ted-mailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#3=
9;;return true;">outreach...@<wbr>googlegroups.com</a>&gt;
<br>Reply-To: Shaily Sangwan &lt;<a href=3D"javascript:" target=3D"_blank" =
gdf-obfuscated-mailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;">shail...@yahoo.com</a>&gt;
<br>
<br>It should be just
<br>
<br>From: Shaily Sangwan &lt;<a href=3D"javascript:" target=3D"_blank" gdf-=
obfuscated-mailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmousedown=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascr=
ipt:&#39;;return true;">shail...@yahoo.com</a>&gt;
<br>
<br>ie, just like in your sign off.
<br>
<br>julia
<br>
<br>
<br>&gt; This patch fixes the following <a href=3D"http://checkpatch.pl" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www=
.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26=
usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"thi=
s.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26=
sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;retu=
rn true;">checkpatch.pl</a> warnings:
<br>&gt; statements should start on a tabstop
<br>&gt; suspect code indent for conditional statements (16, 32)
<br>&gt;
<br>&gt; Signed-off-by: Shaily Sangwan &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">shail...@yahoo.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8712/<wbr>rtl8712_led.c | 26 ++++++++++++=
+-------------
<br>&gt; =C2=A01 file changed, 13 insertions(+), 13 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_led.c b/drivers/=
staging/rtl8712/<wbr>rtl8712_led.c
<br>&gt; index 76d0535..399b9d8 100644
<br>&gt; --- a/drivers/staging/rtl8712/<wbr>rtl8712_led.c
<br>&gt; +++ b/drivers/staging/rtl8712/<wbr>rtl8712_led.c
<br>&gt; @@ -355,7 +355,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;bLedScanBlinkInProgress =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (pLed-&gt;bLedOn)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (pLed-&gt;bLedOn)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_OFF;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; @@ -390,7 +390,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;BlinkTimes =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;bLedBlinkInProgress =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (pLed-&gt;bLedOn)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (pLed-&gt;bLedOn)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_OFF;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; @@ -460,7 +460,7 @@ static void SwLedBlink2(struct LED_871x *pLed)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;bLedScanBlinkInProgress =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (pLed-&gt;bLedOn)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (pLed-&gt;bLedOn)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_OFF;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; @@ -667,7 +667,7 @@ static void SwLedBlink4(struct LED_871x *pLed)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0msecs_=
to_jiffies(LED_BLINK_<wbr>NO_LINK_INTERVAL_ALPHA));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;bLedBlinkInProgress =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (pLed-&gt;bLedOn)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (pLed-&gt;bLedOn)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_OFF;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; @@ -764,7 +764,7 @@ static void SwLedBlink5(struct LED_871x *pLed)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0msecs_to_jiffies(LED_BLINK_<wbr>=
FASTER_INTERVAL_ALPHA));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;bLedBlinkInProgress =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (pLed-&gt;bLedOn)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (pLed-&gt;bLedOn)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_OFF;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; @@ -946,7 +946,7 @@ static void SwLedControlMode1(struct _adapter =
*padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (psitesurveyctrl-&gt;traffic_busy &a=
mp;&amp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0check_fwstate(pmlmepriv, =
_FW_LINKED))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0; /* dummy branch */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else if (!pLed-&gt;<wbr>bLedScanBlinkInPr=
ogress) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (!pLed-&gt;<wbr>bLedScanBlinkInPro=
gress) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (IS_LED_WPS_BLINKING(pLed))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (pLed-&gt;<wbr>bLedNoLinkBlinkInProgress) {
<br>&gt; @@ -970,7 +970,7 @@ static void SwLedControlMode1(struct _adapter =
*padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0mod_<wbr>timer(&amp;pLed-&gt;BlinkTimer, jiffies +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0msecs_=
to_jiffies(LED_BLINK_<wbr>SCAN_INTERVAL_ALPHA));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_TX:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_RX:
<br>&gt; @@ -1000,7 +1000,7 @@ static void SwLedControlMode1(struct _adapte=
r *padapter,
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_START_WPS: /*wait until xinpin finish */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_START_WPS_BOTTON:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!pLed-&gt;<wbr>bLedWPSBlinkInProgress=
) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!pLed-&gt;<wbr>bLedWPSBlinkInProgress)=
 {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (pLed-&gt;<wbr>bLedNoLinkBlinkInProgress) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0del_timer(&am=
p;pLed-&gt;<wbr>BlinkTimer);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;<wbr=
>bLedNoLinkBlinkInProgress =3D false;
<br>&gt; @@ -1113,9 +1113,9 @@ static void SwLedControlMode2(struct _adapte=
r *padapter,
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (LedA=
ction) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_SITE_SURVEY:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pmlmepriv-&gt;sitesurveyctrl.<wbr>tra=
ffic_busy)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pmlmepriv-&gt;sitesurveyctrl.<wbr>traf=
fic_busy)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0; /* dummy branch */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else if (!pLed-&gt;<wbr>bLedScanBlinkInPr=
ogress) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (!pLed-&gt;<wbr>bLedScanBlinkInPro=
gress) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (IS_LED_WPS_BLINKING(pLed))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return;
<br>&gt;
<br>&gt; @@ -1132,7 +1132,7 @@ static void SwLedControlMode2(struct _adapte=
r *padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pLed-&gt;Blin=
kingLedState =3D LED_ON;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0mod_<wbr>timer(&amp;pLed-&gt;BlinkTimer, jiffies +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0msecs_=
to_jiffies(LED_BLINK_<wbr>SCAN_INTERVAL_ALPHA));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_TX:
<br>&gt; @@ -1186,7 +1186,7 @@ static void SwLedControlMode2(struct _adapte=
r *padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0pLed-<wbr>&gt;BlinkingLedState =3D LED_ON;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0mod_<wbr>timer(&amp;pLed-&gt;BlinkTimer,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0jiffie=
s + msecs_to_jiffies(0));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_STOP_WPS:
<br>&gt; @@ -1734,7 +1734,7 @@ static void SwLedControlMode6(struct _adapte=
r *padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_LINK:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*solid blue*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case LED_CTL=
_SITE_SURVEY:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_LED_WPS_BLINKING(pLed))
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pLed-&gt;<wbr>CurrLedState =3D LED_ON;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pLed-&gt;<wbr>BlinkingLedState =3D LED_=
ON;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pLed-&gt;<wbr>bLedBlinkInProgress =3D f=
alse;
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"22UoufsKBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1473699430-23987-1-git-send-email-shai=
ly15297%40yahoo.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1473699430-=
23987-1-git-send-email-shaily15297%40yahoo.com&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/147=
3699430-23987-1-git-send-email-shaily15297%40yahoo.com&#39;;return true;">h=
ttps://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1473699430-2398=
7-1-git-send-<wbr>email-shaily15297%40yahoo.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></div>
------=_Part_3018_1879328895.1473701009941--

------=_Part_3017_1684315455.1473701009940--

