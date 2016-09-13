X-GM-THRID: 6329698324214448128
X-Received: by 10.28.152.87 with SMTP id a84mr2429503wme.7.1473752038641;
        Tue, 13 Sep 2016 00:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.147 with SMTP id g19ls15926lji.38.gmail; Tue, 13 Sep
 2016 00:33:57 -0700 (PDT)
X-Received: by 10.25.206.200 with SMTP id e191mr3320467lfg.3.1473752037968;
        Tue, 13 Sep 2016 00:33:57 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id 82si969674wmg.3.2016.09.13.00.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:33:57 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0LfKWX-1bGfrk0e0P-00p3Lj; Tue, 13 Sep
 2016 09:33:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Namrata A Shettar <namrataashettar@gmail.com>, Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, gregkh@linuxfoundation.org, badbuddha91@gmail.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia: Removes unnecessary blank line
Date: Tue, 13 Sep 2016 09:33:51 +0200
Message-ID: <2284008.DIPsHg5UWl@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ZAqL/nbbkRMAKnbJBLAUn4ca9gwFjwJrZkbc4NBHzRKCO2wudef
 Ien1nfxYCCiabS5AsDUBhaAIUwEQJgy+KzcRdx4VkhLVHoM2MT0HKC4Cuj0bYxA+FWjXAdC
 bWuCuxTq9KYpeDu3+ypbdcGQdSUx0Y7Oz8135VbZOnvZHTMA8+X+QiirXTM3wRcOpFd31/U
 N/bXsugTL/itq3UbBAVMQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:kBR+FTTkUsQ=:MWN0OBjkA4mjuJEWgkn1jG
 QUR0KmzsJNS+z7YWx/9lt/DWTJCW+61T+rRNN22W54Zeabu1+eYpUOTvaW1VC9e39IGpPFEl+
 SER5rErCDmwkVpuxTmMBG2DuwLPSMIZ4dtzQwTxKk0FpF2k52bHA5Q00hl7iZcVdxZORTF6+2
 WKE6w2YPSAUK87o5DhAUikxLooMQMdad61cKWBXkhvAfVcylwr52IiBYmWzbfEJp+awI8AZh1
 b6Q5hY3shd/rFIfGJuyTiUiS4lSn9kyh1NOCTCFhRtbHL7TvgbIEGensRtyYozU1fZWqBWkwn
 o40avtl/+Qwf6kQRxEH9xkrTsohig9e4qO8f1hcl8qo3TEE9h//LkBcVt4KWEEnlxU37e+uKl
 o6xguMnLhoU1suYNZbfYTG5v3O0JuW/hjaYElIQT7m7gN5ktVvgsSsDKVmPow/kw7xRqYfdi8
 5W3gb2c1Jye9Dk9gpbe+PRqk5OPnV+aaAOuXOsSEWYYolQr9SGmKPFWQT7LqhqfKvsvG3/kCH
 4FBCsD4wQRrTGmaS8+N45uXOFjnX46Y9w6P/GmsM1RQgvZPL33GfFHTXILkw5OnAD0A5BBvIE
 CW80QMz9kgbLs1w7yLC4jVt+HSuRdRdAViceCTYOZlHpHISfYXH43nxjj28WBq4Iw6AnYI5T4
 a/JYA77kB9YjPbySh6p/mCEg8lO9IX/1i5P1pRSyaeFrbP4A8MKlRqPdP24U+piT76p0h9rJI
 jCuVtSE0B693Zljy

On Tuesday, September 13, 2016 11:51:53 AM CEST Namrata A Shettar wrote:
> --- a/drivers/staging/comedi/comedi_pcmcia.c
> +++ b/drivers/staging/comedi/comedi_pcmcia.c
> @@ -18,7 +18,6 @@
> 
>  #include <linux/module.h>
>  #include <linux/kernel.h>
> -
>  #include "comedi_pcmcia.h"
> 
>  /**
> 

I would argue that checkpatch is wrong here, it's very common to have
an empty line between the global and the local header files.

	Arnd


