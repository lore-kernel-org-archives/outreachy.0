X-GM-THRID: 6329897292818022400
X-Received: by 10.157.15.145 with SMTP id d17mr9434801otd.21.1474013104091;
        Fri, 16 Sep 2016 01:05:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.28 with SMTP id 28ls1645989iod.52.gmail; Fri, 16 Sep
 2016 01:05:03 -0700 (PDT)
X-Received: by 10.98.24.146 with SMTP id 140mr7957247pfy.3.1474013103677;
        Fri, 16 Sep 2016 01:05:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si2226970pfw.1.2016.09.16.01.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1AED3941;
	Fri, 16 Sep 2016 08:05:02 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:05:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Luis de Bethencourt <luisbg@osg.samsung.com>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: Re: [PATCH] staging: rtl8712: Rename misspelt macro
Message-ID: <20160916080508.GA15485@kroah.com>
References: <CAFrQyDG5Q2TraHNkj+ytkUSYXeoUMteFXYTy9hwNmfr23TiMdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFrQyDG5Q2TraHNkj+ytkUSYXeoUMteFXYTy9hwNmfr23TiMdQ@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 14, 2016 at 12:43:59AM +0530, Namrata A Shettar wrote:
> This patch corrects the word 'success' being misspelt in the macro:
> - LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA =>� LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> �drivers/staging/rtl8712/rtl8712_led.c | 10 +++++-----
> �1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/
> rtl8712_led.c
> index 9055827..20c4995 100644
> --- a/drivers/staging/rtl8712/rtl8712_led.c
> +++ b/drivers/staging/rtl8712/rtl8712_led.c
> @@ -43,7 +43,7 @@
> �#define LED_BLINK_LINK_INTERVAL_ALPHA� � � � � 500
> �#define LED_BLINK_SCAN_INTERVAL_ALPHA� � � � � 180
> �#define LED_BLINK_FASTER_INTERVAL_ALPHA� � � � � � � � 50
> -#define LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA� � 5000
> +#define LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA� �5000
> 
> �/*===========================================================================
> � * LED object.
> @@ -407,7 +407,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
> � � � � � � � � if (pLed->BlinkingLedState == LED_ON) {
> � � � � � � � � � � � � pLed->BlinkingLedState = LED_OFF;
> � � � � � � � � � � � � mod_timer(&pLed->BlinkTimer, jiffies +
> -� � � � � � � � � � � � � � � � �msecs_to_jiffies(LED_BLINK_
> WPS_SUCESS_INTERVAL_ALPHA));
> +� � � � � � � � � � � � � � � � �msecs_to_jiffies(LED_BLINK_
> WPS_SUCCESS_INTERVAL_ALPHA));

The patch is line-wrapped and can not be applied :(

Please fix up and resend.

thanks,

greg k-h

