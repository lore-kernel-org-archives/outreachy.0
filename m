X-GM-THRID: 6339198760694841344
X-Received: by 10.25.89.197 with SMTP id n188mr538723lfb.26.1475992538091;
        Sat, 08 Oct 2016 22:55:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.87 with SMTP id h84ls160781lfi.30.gmail; Sat, 08 Oct
 2016 22:55:37 -0700 (PDT)
X-Received: by 10.25.89.197 with SMTP id n188mr538722lfb.26.1475992537655;
        Sat, 08 Oct 2016 22:55:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si535354wmc.2.2016.10.08.22.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 22:55:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,316,1473112800"; 
   d="scan'208";a="239977337"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 07:55:37 +0200
Date: Sun, 9 Oct 2016 07:55:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: rtl8188eu: core: formats
 long lines and comment blocks
In-Reply-To: <20161008204844.GA8624@spock>
Message-ID: <alpine.DEB.2.10.1610090752180.3134@hadrien>
References: <cover.1475959255.git.juliana.orod@gmail.com> <20161008204844.GA8624@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Juliana Rodrigues wrote:

> This patch fixes lines over 80 characters that were causing checkpatch
> issues and rewrites some comment blocks to match coding style.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_led.c | 58 ++++++++++++++++++++------------
>  1 file changed, 37 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
> index 849f5f3..f51a196 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_led.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_led.c
> @@ -17,11 +17,11 @@
>  #include <drv_types.h>
>  #include "rtw_led.h"
>
> -/*  */
> -/*	Description: */
> -/*		Callback function of LED BlinkTimer, */
> -/*		it just schedules to corresponding BlinkWorkItem/led_blink_hdl */
> -/*  */
> +/*	Description:
> + *	Callback function of LED BlinkTimer,
> + *	it just schedules to corresponding
> + *      BlinkWorkItem/led_blink_hdl
> + */
>  void BlinkTimerCallback(unsigned long data)
>  {
>  	struct LED_871x *pLed = (struct LED_871x *)data;
> @@ -39,7 +39,9 @@ void BlinkTimerCallback(unsigned long data)
>  /*  */
>  void BlinkWorkItemCallback(struct work_struct *work)
>  {
> -	struct LED_871x *pLed = container_of(work, struct LED_871x, BlinkWorkItem);
> +	struct LED_871x *pLed = container_of(work,
> +					     struct LED_871x,
> +					     BlinkWorkItem);
>  	BlinkHandler(pLed);
>  }
>
> @@ -52,11 +54,18 @@ void ResetLedStatus(struct LED_871x *pLed)
>  	pLed->CurrLedState = RTW_LED_OFF; /*  Current LED state. */
>  	pLed->bLedOn = false; /*  true if LED is ON, false if LED is OFF. */
>
> -	pLed->bLedBlinkInProgress = false; /*  true if it is blinking, false o.w.. */
> +	pLed->bLedBlinkInProgress = false; /*  true if it is blinking,
> +					    *  false o.w..
> +					    */
>  	pLed->bLedWPSBlinkInProgress = false;
>
> -	pLed->BlinkTimes = 0; /*  Number of times to toggle led state for blinking. */
> -	pLed->BlinkingLedState = LED_UNKNOWN; /*  Next state for blinking, either RTW_LED_ON or RTW_LED_OFF are. */
> +	pLed->BlinkTimes = 0; /*  Number of times to toggle led state
> +			       *  for blinking.
> +			       */
> +	pLed->BlinkingLedState = LED_UNKNOWN; /*  Next state for blinking,
> +					       *  either RTW_LED_ON or
> +					       *  RTW_LED_OFF are.
> +					       */
>
>  	pLed->bLedNoLinkBlinkInProgress = false;
>  	pLed->bLedLinkBlinkInProgress = false;
> @@ -90,11 +99,11 @@ void DeInitLed871x(struct LED_871x *pLed)
>  	ResetLedStatus(pLed);
>  }
>
> -/*  */
> -/*	Description: */
> -/*		Implementation of LED blinking behavior. */
> -/*		It toggle off LED and schedule corresponding timer if necessary. */
> -/*  */
> +/*	Description:
> + *	Implementation of LED blinking behavior.
> + *	It toggle off LED and schedule corresponding
> + *	timer if necessary.
> + */

Hmm, you have adjusted the comment in a smaller numbered patch in the
series.  I have the impression that the patches are numbered in the wrong
order?

In any case, the text is not appropriate for a function comment,  See
kernel-documentation.rst
and examples in other files.

julia

>
>  static void SwLedBlink1(struct LED_871x *pLed)
>  {
> @@ -105,10 +114,12 @@ static void SwLedBlink1(struct LED_871x *pLed)
>  	/*  Change LED according to BlinkingLedState specified. */
>  	if (pLed->BlinkingLedState == RTW_LED_ON) {
>  		SwLedOn(padapter, pLed);
> -		RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
> +		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
> +			 ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
>  	} else {
>  		SwLedOff(padapter, pLed);
> -		RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
> +		RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
> +			 ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
>  	}
>
>  	if (padapter->pwrctrlpriv.rf_pwrstate != rf_on) {
> @@ -245,7 +256,8 @@ static void SwLedBlink1(struct LED_871x *pLed)
>  }
>
>   /* ALPHA, added by chiyoko, 20090106 */
> -static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAction)
> +static void SwLedControlMode1(struct adapter *padapter,
> +			      enum LED_CTL_MODE LedAction)
>  {
>  	struct led_priv *ledpriv = &padapter->ledpriv;
>  	struct LED_871x *pLed = &ledpriv->SwLed0;
> @@ -256,7 +268,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
>  	case LED_CTL_START_TO_LINK:
>  	case LED_CTL_NO_LINK:
>  		if (!pLed->bLedNoLinkBlinkInProgress) {
> -			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
> +			if (pLed->CurrLedState == LED_BLINK_SCAN ||
> +			    IS_LED_WPS_BLINKING(pLed))
>  				return;
>  			if (pLed->bLedLinkBlinkInProgress) {
>  				del_timer_sync(&pLed->BlinkTimer);
> @@ -279,7 +292,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
>  		break;
>  	case LED_CTL_LINK:
>  		if (!pLed->bLedLinkBlinkInProgress) {
> -			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
> +			if (pLed->CurrLedState == LED_BLINK_SCAN ||
> +			    IS_LED_WPS_BLINKING(pLed))
>  				return;
>  			if (pLed->bLedNoLinkBlinkInProgress) {
>  				del_timer_sync(&pLed->BlinkTimer);
> @@ -331,7 +345,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
>  	case LED_CTL_TX:
>  	case LED_CTL_RX:
>  		if (!pLed->bLedBlinkInProgress) {
> -			if (pLed->CurrLedState == LED_BLINK_SCAN || IS_LED_WPS_BLINKING(pLed))
> +			if (pLed->CurrLedState == LED_BLINK_SCAN ||
> +			    IS_LED_WPS_BLINKING(pLed))
>  				return;
>  			if (pLed->bLedNoLinkBlinkInProgress) {
>  				del_timer_sync(&pLed->BlinkTimer);
> @@ -456,7 +471,8 @@ static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAct
>  		break;
>  	}
>
> -	RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("Led %d\n", pLed->CurrLedState));
> +	RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
> +		 ("Led %d\n", pLed->CurrLedState));
>  }
>
>  /*  */
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008204844.GA8624%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

