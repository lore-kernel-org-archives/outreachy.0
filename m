X-GM-THRID: 6202978899734822912
X-Received: by 10.112.54.197 with SMTP id l5mr550161lbp.21.1444245002637;
        Wed, 07 Oct 2015 12:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.78 with SMTP id h75ls105147lfg.83.gmail; Wed, 07 Oct
 2015 12:10:02 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr578234lbb.13.1444245002012;
        Wed, 07 Oct 2015 12:10:02 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id xl3si160423wib.1.2015.10.07.12.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 12:10:01 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LsywU-1amH4734jC-012akC; Wed, 07 Oct
 2015 21:10:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: remove unused definitions
Date: Wed, 07 Oct 2015 21:10:01 +0200
Message-ID: <4982395.WtRaKIPf3W@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444243562-19812-1-git-send-email-ciorneiioana@gmail.com>
References: <1444243562-19812-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:JKy9KSCMiL1cGbEldqoMJvlrR5gFXHbDlN//Ki3KZQrafdla10y
 /bc9Q/Ghg2aAEHcxYZCy9stg3oF2sgltTWHzlS9/NIQwPeoY/iaRM6aTaEXUtH1xnkOXM8Y
 JAq5j+n7NKStZGQxD5/hgu4gge3rNzRqnanGerW0gnkYi6+kThegVXc40bV3G2FDKbz/YW2
 PPyj2lXVUS4bMtISFxezA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:0JxEtprhCwc=:dOmVhK4sF3a8y6WgEUN49L
 Thk5H9UHkpPrza7sigrzqgnhf2afYVyXeOG9xSyIcaUtzG9WwB+RfoXFisRa9Q0AxrrHJOH6V
 oHTOAMXtBKfL7aKryvy4C4jiNs7yFPsbYx8PqA83nqW/A7xjPPZDUJ42zEUxcnP+DWzPQA3Hx
 8gb0JzEEsdvcAZtJYx+0bes7krkqjcGs4R+hKeQm3Um8UHIutEaaoLNA0JOkpYMc5ufaUBznN
 BrbH8+JKSiJ6w/D4zd4thQb45kfFzuZItgtUGzj5OJzHjC8RZpQol3TJ98w7yzFU3v0TpKx+f
 RUhCPE1zZ4SJgsFikVMn4qGHh8XzOGyGhFC3tJcnMuJjQ2YyM+OkfRDXVwXkFvsBMDEZFQg0E
 yCkyChdtft2swYJ/0kjFLWGwTA7nXvXXbdFd6+u8niWrBxRKJ8b8UXCblnp7RBv+T6MxeEaJV
 Ut3wmoBMjy/RPN7T15xOz1p76haJ6RbYgB7zLiwQs0HAPrL4tiKVkoAyLTcAEyoy7dnSvREr5
 mahXsiO027wf0w2CU65DA2RX/cW3a66bx8Q5SL1c3K5uSJoaTSxPgpqcchNQ/7idEuay+IPFZ
 YKYxq/TBUzqU5xtgWSf4BQyjLtzvyeuESRpmVfougbqONngTseoDRnsJjUT+KEgWDzZpWghUU
 GsHY/r8wSE8dZ/a7JsujNov+uJEukITbt2N+wZ2cKRRdJH+a0/W7xXfeLDp1AMXq206Tv6C0o
 7c0BpJUUxnEAIGFW

On Wednesday 07 October 2015 21:46:02 Ioana Ciornei wrote:
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index fe56fb6..53bce3a 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -118,12 +118,6 @@
>  
>  /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
>  #define AD7192_GPOCON_BPDSW    BIT(6) /* Bridge power-down switch enable */
> -#define AD7192_GPOCON_GP32EN   BIT(5) /* Digital Output P3 and P2 enable */
> -#define AD7192_GPOCON_GP10EN   BIT(4) /* Digital Output P1 and P0 enable */
> -#define AD7192_GPOCON_P3DAT    BIT(3) /* P3 state */
> -#define AD7192_GPOCON_P2DAT    BIT(2) /* P2 state */
> -#define AD7192_GPOCON_P1DAT    BIT(1) /* P1 state */
> -#define AD7192_GPOCON_P0DAT    BIT(0) /* P0 state */
>  
>  #define AD7192_INT_FREQ_MHz    4915200

I'd say it makes sense to leave these ones present, because it documents
the hardware registers.

Any unused code or definitions that are purely for the code's own sake
should be removed normally, but in this case the bit 6 is clearly used
in the code, so it's good to know what the other bits are.

	Arnd

