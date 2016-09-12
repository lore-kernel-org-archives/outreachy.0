X-GM-THRID: 6329491627472584704
X-Received: by 10.157.56.142 with SMTP id p14mr20472312otc.4.1473776510310;
        Tue, 13 Sep 2016 07:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.193 with SMTP id h184ls175765ioe.33.gmail; Tue, 13 Sep
 2016 07:21:49 -0700 (PDT)
X-Received: by 10.66.226.10 with SMTP id ro10mr788769pac.29.1473776509138;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.67.132 with SMTP id q126msqka;
        Mon, 12 Sep 2016 10:34:47 -0700 (PDT)
X-Received: by 10.25.43.76 with SMTP id r73mr2082615lfr.9.1473701687597;
        Mon, 12 Sep 2016 10:34:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b1si97761wmg.0.2016.09.12.10.34.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:34:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192890113"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 19:34:47 +0200
Date: Mon, 12 Sep 2016 19:34:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shaily15297@yahoo.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: remove unnecessary
 spaces and tabs
In-Reply-To: <d7d78534-5a89-4684-ac4a-7fe1cb561f57@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609121932450.29099@hadrien>
References: <1473699430-23987-1-git-send-email-shaily15297@yahoo.com> <alpine.DEB.2.10.1609121902280.29099@hadrien> <d7d78534-5a89-4684-ac4a-7fe1cb561f57@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1798740300-1473701686=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1798740300-1473701686=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 12 Sep 2016, shaily15297 via outreachy-kernel wrote:

> Sorry about that.
> I've put the raw email up here: https://paste.fedoraproject.org/427297/ ,
> and the From line (#38) and Signed-off-by line (#50) look the same.
> outreachy-kernel only appears in the To line.
>
>
> Can you please help me figure out where I'm going wrong?


This message also has:

From: shaily15297 via outreachy-kernel <outreachy-kernel@googlegroups.com>
Reply-To: shaily15297@yahoo.com

The From line and the Signed off by should have a real email address,
without ...  You have "shail...@yahoo.com"

julia

>
> On Monday, 12 September 2016 22:33:15 UTC+5:30, Julia Lawall wrote:
>       On Mon, 12 Sep 2016, 'Shaily Sangwan' via outreachy-kernel
>       wrote:
>
>       This doesn't look right.  Your From line is:
>
>       From: 'Shaily Sangwan' via outreachy-kernel
>           <outreach...@googlegroups.com>
>       Reply-To: Shaily Sangwan <shail...@yahoo.com>
>
>       It should be just
>
>       From: Shaily Sangwan <shail...@yahoo.com>
>
>       ie, just like in your sign off.
>
>       julia
>
>
>       > This patch fixes the following checkpatch.pl warnings:
>       > statements should start on a tabstop
>       > suspect code indent for conditional statements (16, 32)
>       >
>       > Signed-off-by: Shaily Sangwan <shail...@yahoo.com>
>       > ---
>       >  drivers/staging/rtl8712/rtl8712_led.c | 26
>       +++++++++++++-------------
>       >  1 file changed, 13 insertions(+), 13 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl8712_led.c
>       b/drivers/staging/rtl8712/rtl8712_led.c
>       > index 76d0535..399b9d8 100644
>       > --- a/drivers/staging/rtl8712/rtl8712_led.c
>       > +++ b/drivers/staging/rtl8712/rtl8712_led.c
>       > @@ -355,7 +355,7 @@ static void SwLedBlink1(struct LED_871x
>       *pLed)
>       >                          }
>       >                          pLed->bLedScanBlinkInProgress =
>       false;
>       >                  } else {
>       > -                         if (pLed->bLedOn)
>       > +                        if (pLed->bLedOn)
>       >                                  pLed->BlinkingLedState =
>       LED_OFF;
>       >                          else
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       > @@ -390,7 +390,7 @@ static void SwLedBlink1(struct LED_871x
>       *pLed)
>       >                          pLed->BlinkTimes = 0;
>       >                          pLed->bLedBlinkInProgress = false;
>       >                  } else {
>       > -                         if (pLed->bLedOn)
>       > +                        if (pLed->bLedOn)
>       >                                  pLed->BlinkingLedState =
>       LED_OFF;
>       >                          else
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       > @@ -460,7 +460,7 @@ static void SwLedBlink2(struct LED_871x
>       *pLed)
>       >                          }
>       >                          pLed->bLedScanBlinkInProgress =
>       false;
>       >                  } else {
>       > -                         if (pLed->bLedOn)
>       > +                        if (pLed->bLedOn)
>       >                                  pLed->BlinkingLedState =
>       LED_OFF;
>       >                          else
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       > @@ -667,7 +667,7 @@ static void SwLedBlink4(struct LED_871x
>       *pLed)
>       >                                  
>        msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
>       >                          pLed->bLedBlinkInProgress = false;
>       >                  } else {
>       > -                         if (pLed->bLedOn)
>       > +                        if (pLed->bLedOn)
>       >                                  pLed->BlinkingLedState =
>       LED_OFF;
>       >                          else
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       > @@ -764,7 +764,7 @@ static void SwLedBlink5(struct LED_871x
>       *pLed)
>       >                                          
>        msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
>       >                          pLed->bLedBlinkInProgress = false;
>       >                  } else {
>       > -                         if (pLed->bLedOn)
>       > +                        if (pLed->bLedOn)
>       >                                  pLed->BlinkingLedState =
>       LED_OFF;
>       >                          else
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       > @@ -946,7 +946,7 @@ static void SwLedControlMode1(struct
>       _adapter *padapter,
>       >                  if (psitesurveyctrl->traffic_busy &&
>       >                      check_fwstate(pmlmepriv, _FW_LINKED))
>       >                          ; /* dummy branch */
>       > -                 else if (!pLed->bLedScanBlinkInProgress) {
>       > +                else if (!pLed->bLedScanBlinkInProgress) {
>       >                          if (IS_LED_WPS_BLINKING(pLed))
>       >                                  return;
>       >                          if (pLed->bLedNoLinkBlinkInProgress)
>       {
>       > @@ -970,7 +970,7 @@ static void SwLedControlMode1(struct
>       _adapter *padapter,
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       >                          mod_timer(&pLed->BlinkTimer, jiffies
>       +
>       >                                  
>        msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
>       > -                 }
>       > +                }
>       >                  break;
>       >          case LED_CTL_TX:
>       >          case LED_CTL_RX:
>       > @@ -1000,7 +1000,7 @@ static void SwLedControlMode1(struct
>       _adapter *padapter,
>       >
>       >          case LED_CTL_START_WPS: /*wait until xinpin finish */
>       >          case LED_CTL_START_WPS_BOTTON:
>       > -                 if (!pLed->bLedWPSBlinkInProgress) {
>       > +                if (!pLed->bLedWPSBlinkInProgress) {
>       >                          if (pLed->bLedNoLinkBlinkInProgress)
>       {
>       >                                  del_timer(&pLed->BlinkTimer);
>       >
>                                        pLed->bLedNoLinkBlinkInProgress
>       = false;
>       > @@ -1113,9 +1113,9 @@ static void SwLedControlMode2(struct
>       _adapter *padapter,
>       >
>       >          switch (LedAction) {
>       >          case LED_CTL_SITE_SURVEY:
>       > -                 if (pmlmepriv->sitesurveyctrl.traffic_busy)
>       > +                if (pmlmepriv->sitesurveyctrl.traffic_busy)
>       >                          ; /* dummy branch */
>       > -                 else if (!pLed->bLedScanBlinkInProgress) {
>       > +                else if (!pLed->bLedScanBlinkInProgress) {
>       >                          if (IS_LED_WPS_BLINKING(pLed))
>       >                                  return;
>       >
>       > @@ -1132,7 +1132,7 @@ static void SwLedControlMode2(struct
>       _adapter *padapter,
>       >                                  pLed->BlinkingLedState =
>       LED_ON;
>       >                          mod_timer(&pLed->BlinkTimer, jiffies
>       +
>       >                                  
>        msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
>       > -                 }
>       > +                }
>       >                  break;
>       >
>       >          case LED_CTL_TX:
>       > @@ -1186,7 +1186,7 @@ static void SwLedControlMode2(struct
>       _adapter *padapter,
>       >                          pLed->BlinkingLedState = LED_ON;
>       >                          mod_timer(&pLed->BlinkTimer,
>       >                                    jiffies +
>       msecs_to_jiffies(0));
>       > -                 }
>       > +                }
>       >                  break;
>       >
>       >          case LED_CTL_STOP_WPS:
>       > @@ -1734,7 +1734,7 @@ static void SwLedControlMode6(struct
>       _adapter *padapter,
>       >          case LED_CTL_LINK:        /*solid blue*/
>       >          case LED_CTL_SITE_SURVEY:
>       >                  if (IS_LED_WPS_BLINKING(pLed))
>       > -                                return;
>       > +                        return;
>       >                  pLed->CurrLedState = LED_ON;
>       >                  pLed->BlinkingLedState = LED_ON;
>       >                  pLed->bLedBlinkInProgress = false;
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1473699430-23987-1-git-s
>       end-email-shaily15297%40yahoo.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/d7d78534-5a89-4684-ac4a-
> 7fe1cb561f57%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1798740300-1473701686=:29099--

