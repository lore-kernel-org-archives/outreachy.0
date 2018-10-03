X-GM-THRID: 6608122280379678720
X-Received: by 2002:a19:d0d5:: with SMTP id h204-v6mr55798lfg.7.1538575122142;
        Wed, 03 Oct 2018 06:58:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7353:: with SMTP id o80-v6ls67778lfc.12.gmail; Wed, 03
 Oct 2018 06:58:41 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60yk6dkNymxmddbknTGwV/xyfA5ToqV5PMETkM2X/8Osq/Wn7jrFBUYLT0wM411ZJp8PxWt
X-Received: by 2002:a19:d957:: with SMTP id q84-v6mr57338lfg.14.1538575121305;
        Wed, 03 Oct 2018 06:58:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538575121; cv=none;
        d=google.com; s=arc-20160816;
        b=ORG89wSFXvrGVxrgqmNzag8SKxEfXdpxoM0Ex15pbe4osSMUPncfZmHMqlPmj6bD/8
         +YTbGGQaggeZwtfDtZrEZukdpjb2TPdHD26nTwlRSVkoBmSjtFP4MrENj5iA2ctn78SI
         hlEV5n4uIzNGippjeEbwr8GEZOC4ued+oDHvRxT+dsmNcub708xzWEH4uefqS+sHF17/
         uCSvUlfb7RMo6q/14nHW9Qu4Qn9+GNCB8H8mUmxiJOCky+P/Dna9D88Mn8zlDZhSPgnX
         aGT8uhDOZLkIuuVYyxltmxmZ0Tr3d0JnWsU6i/T7icrINKEk3cuc+sV0uKofhrGmb0JI
         FsbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6JXRwbUckvUt16mEwDBK4q5s0hTHC6Ui2YZGzEShojI=;
        b=wkeknaCggVVly4bxUg048J5DBQVTRXDUMsPSEjomn6+r7+cJR/d2uDxJrofJxCsNqp
         x2E0a7pwI0GBw3SY2pZvySP7ooR2FL5QwAjg/Y+pZWnupIFN0OE6Dmaszt2AaVz7eUYI
         BSmEOeGS/AJk648b7HqRg2asKWrRZvIFYvCDaHsMtnN7SvFHN4yG93nqbp9ztm6WrnYm
         RqVYhDZeVFtmw21G6wh6c4UtnCNfOaO0UjdOwbRu32IZsYEOXrrX8TfPcdk36FO5sANq
         jSY2SzziGwZmYzohZHdHFYRmt+LYqZI4d/7LD5Aub73Bsqpp2VGMZiVdAgq14wjE/2lr
         zAcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h192-v6si60087lfg.1.2018.10.03.06.58.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 06:58:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,336,1534802400"; 
   d="scan'208";a="349345138"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2018 15:58:40 +0200
Date: Wed, 3 Oct 2018 15:58:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Adding spaces around
 '<<'
In-Reply-To: <CAMNCNOVmRKRhY=d5H-pPu8eM0Fsg+-XJDwf5PzAcuNHGmwiq9Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1810031557300.2839@hadrien>
References: <20181003132917.GA29977@armorer> <alpine.DEB.2.20.1810031540180.2839@hadrien> <CAMNCNOVmRKRhY=d5H-pPu8eM0Fsg+-XJDwf5PzAcuNHGmwiq9Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2133505184-1538575120=:2839"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2133505184-1538575120=:2839
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Wed, 3 Oct 2018, Mamta Shukla wrote:

>
>
> On Wed, Oct 3, 2018 at 7:10 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Wed, 3 Oct 2018, Mamta Shukla wrote:
>
>       > Adding spaces around '<<' to fix checkpatch issue.
>       > CHECK: spaces preferred around that '<<' (ctx:VxV)
>
>       >It looks like the BIT macro could actually be mre useful here.
>
>       >julia
>
> Ok, I will make the change.
> I need to write new patch, right? Because another version of this patch may
> conflict the subject.

That's true.  Go ahead for a new patch.

julia

>
> -Mamta
>
>       >
>       > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
>       > ---
>       >� drivers/staging/fbtft/fbtft.h | 56
>       +++++++++++++++++++++----------------------
>       >� 1 file changed, 28 insertions(+), 28 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/fbtft.h
>       b/drivers/staging/fbtft/fbtft.h
>       > index 25302ff..a3db23b 100644
>       > --- a/drivers/staging/fbtft/fbtft.h
>       > +++ b/drivers/staging/fbtft/fbtft.h
>       > @@ -355,39 +355,39 @@ static void __exit
>       fbtft_driver_module_exit(void)� � � � � � � � � � � � � \
>       >� #define DEBUG_LEVEL_6� � � � (DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>       >� #define DEBUG_LEVEL_7� � � � 0xFFFFFFFF
>       >
>       > -#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
>       > -#define DEBUG_TIME_FIRST_UPDATE� � �(1<<4)
>       > -#define DEBUG_TIME_EACH_UPDATE� � � (1<<5)
>       > -#define DEBUG_DEFERRED_IO� � � � � �(1<<6)
>       > -#define DEBUG_FBTFT_INIT_FUNCTIONS� (1<<7)
>       > +#define DEBUG_DRIVER_INIT_FUNCTIONS� (1 << 3)
>       > +#define DEBUG_TIME_FIRST_UPDATE� � � (1 << 4)
>       > +#define DEBUG_TIME_EACH_UPDATE� � � �(1 << 5)
>       > +#define DEBUG_DEFERRED_IO� � � � � � (1 << 6)
>       > +#define DEBUG_FBTFT_INIT_FUNCTIONS� �(1 << 7)
>       >
>       >� /* fbops */
>       > -#define DEBUG_FB_READ� � � � � � � �(1<<8)
>       > -#define DEBUG_FB_WRITE� � � � � � � (1<<9)
>       > -#define DEBUG_FB_FILLRECT� � � � � �(1<<10)
>       > -#define DEBUG_FB_COPYAREA� � � � � �(1<<11)
>       > -#define DEBUG_FB_IMAGEBLIT� � � � � (1<<12)
>       > -#define DEBUG_FB_SETCOLREG� � � � � (1<<13)
>       > -#define DEBUG_FB_BLANK� � � � � � � (1<<14)
>       > +#define DEBUG_FB_READ� � � � � � � � (1 << 8)
>       > +#define DEBUG_FB_WRITE� � � � � � � �(1 << 9)
>       > +#define DEBUG_FB_FILLRECT� � � � � � (1 << 10)
>       > +#define DEBUG_FB_COPYAREA� � � � � � (1 << 11)
>       > +#define DEBUG_FB_IMAGEBLIT� � � � � �(1 << 12)
>       > +#define DEBUG_FB_SETCOLREG� � � � � �(1 << 13)
>       > +#define DEBUG_FB_BLANK� � � � � � � �(1 << 14)
>       >
>       > -#define DEBUG_SYSFS� � � � � � � � �(1<<16)
>       > +#define DEBUG_SYSFS� � � � � � � � � (1 << 16)
>       >
>       >� /* fbtftops */
>       > -#define DEBUG_BACKLIGHT� � � � � � �(1<<17)
>       > -#define DEBUG_READ� � � � � � � � � (1<<18)
>       > -#define DEBUG_WRITE� � � � � � � � �(1<<19)
>       > -#define DEBUG_WRITE_VMEM� � � � � � (1<<20)
>       > -#define DEBUG_WRITE_REGISTER� � � � (1<<21)
>       > -#define DEBUG_SET_ADDR_WIN� � � � � (1<<22)
>       > -#define DEBUG_RESET� � � � � � � � �(1<<23)
>       > -#define DEBUG_MKDIRTY� � � � � � � �(1<<24)
>       > -#define DEBUG_UPDATE_DISPLAY� � � � (1<<25)
>       > -#define DEBUG_INIT_DISPLAY� � � � � (1<<26)
>       > -#define DEBUG_BLANK� � � � � � � � �(1<<27)
>       > -#define DEBUG_REQUEST_GPIOS� � � � �(1<<28)
>       > -#define DEBUG_FREE_GPIOS� � � � � � (1<<29)
>       > -#define DEBUG_REQUEST_GPIOS_MATCH� �(1<<30)
>       > -#define DEBUG_VERIFY_GPIOS� � � � � (1<<31)
>       > +#define DEBUG_BACKLIGHT� � � � � � � (1 << 17)
>       > +#define DEBUG_READ� � � � � � � � � �(1 << 18)
>       > +#define DEBUG_WRITE� � � � � � � � � (1 << 19)
>       > +#define DEBUG_WRITE_VMEM� � � � � � �(1 << 20)
>       > +#define DEBUG_WRITE_REGISTER� � � � �(1 << 21)
>       > +#define DEBUG_SET_ADDR_WIN� � � � � �(1 << 22)
>       > +#define DEBUG_RESET� � � � � � � � � (1 << 23)
>       > +#define DEBUG_MKDIRTY� � � � � � � � (1 << 24)
>       > +#define DEBUG_UPDATE_DISPLAY� � � � �(1 << 25)
>       > +#define DEBUG_INIT_DISPLAY� � � � � �(1 << 26)
>       > +#define DEBUG_BLANK� � � � � � � � � (1 << 27)
>       > +#define DEBUG_REQUEST_GPIOS� � � � � (1 << 28)
>       > +#define DEBUG_FREE_GPIOS� � � � � � �(1 << 29)
>       > +#define DEBUG_REQUEST_GPIOS_MATCH� � (1 << 30)
>       > +#define DEBUG_VERIFY_GPIOS� � � � � �(1 << 31)
>       >
>       >� #define fbtft_init_dbg(dev, format, arg...)� � � � � � � � �
>       \
>       >� do {� � � � � � � � � � � � � � � � � � � � � � � � � � � �
>       �\
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20181003132917.GA29977%4
>       0armorer.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
>
> --
>
>
>
--8323329-2133505184-1538575120=:2839--

