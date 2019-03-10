X-GM-THRID: 6666827183901638656
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr1994736wmc.16.1552242307445;
        Sun, 10 Mar 2019 11:25:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls104701wmg.7.canary-gmail; Sun,
 10 Mar 2019 11:25:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygMxG+pHfcypJHpyxdZ+sDmRCi8DGFo6j/uv1B7bTcO6g+EV6wRW4Rsk/eSZA5cfyoQF0M
X-Received: by 2002:a1c:1a4a:: with SMTP id a71mr1839502wma.21.1552242306444;
        Sun, 10 Mar 2019 11:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552242306; cv=none;
        d=google.com; s=arc-20160816;
        b=bAZzsVDybn5rpHlsLCrfjgb5F2HzIzIM82NeNlqeX1y/rD9GRwjWgpVXhYCKSAdi43
         r5shHRjG0CN0GLRyF4CiGtq2PjVvF9Z6+wEML9gTDlv5ysd+zpEpfxFeJ9XM5WTVRskA
         j21kzLk/G0tcD80F7+39aXmaVhjm4LWII0oKUzJxsBJskI2ruOUzG+rGFGebx3pcqSIV
         cYHsqoECz7q8bCnFWnA1ZTeOrF6JvAq/PHidv2By3mVrRFRxWktAZH84j0OXSVYOXDWi
         kJAwNlJpA59OjqFb4L9SBq688W1p5E9eRclySlX5PD72QQJrYK20418kHxPQeB5jnuVY
         jP+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=u8XFG7TztPP4wGu/GMQNW7ao3CojTAaTUz2fwgWTGnM=;
        b=dnFYHWEPu1ZysJp7dFuvhui1PrRniczAOjYnKzpGsFr04TyvzK68WRSLe2A3jaF705
         VHGsQbSfY09kDqhypDZbPtkEWxa/aRlPTLOBNd0zM9rXoi3XZzerEScYVbAwWp2LU7Ki
         aNbj5ZbqFIYQazxKDRjc/JZptyGATeickfjEZs/M85kzXcW83KZgRay80fp1C1SvLNRq
         xSinXfziw4cYBKkn5V7wGF1shpbIEMAbcLaAJl9ewOavz0q6phyg8mywVtiTOB7OVVg+
         3g3NuL97nQU4JUnOLEVI+ZLDcMsewcbtYCFtACYN9WKl4K//i1GjKeuPNrb+ci8L/kUP
         ncvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g10si641271wmk.1.2019.03.10.11.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:25:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="298712429"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:25:05 +0100
Date: Sun, 10 Mar 2019 19:25:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Multiple blank
 lines.
In-Reply-To: <20190310181412.GA29653@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903101920430.3131@hadrien>
References: <20190310181412.GA29653@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> diff --git a/drivers/staging/rtl8712/rtl8712_spec.h b/drivers/staging/rtl8712/rtl8712_spec.h
> index c0bab4c..e9415ae 100644
> --- a/drivers/staging/rtl8712/rtl8712_spec.h
> +++ b/drivers/staging/rtl8712/rtl8712_spec.h
> @@ -30,39 +30,6 @@
>
>  #define RTL8712_IOBASE_FF	0x10300000 /*IOBASE_FIFO 0x1031000~0x103AFFFF*/
>
> -
> -/*IOREG Offset for 8712*/
> -#define RTL8712_SYSCFG_		RTL8712_IOBASE_IOREG
> -#define RTL8712_CMDCTRL_	(RTL8712_IOBASE_IOREG + 0x40)
> -#define RTL8712_MACIDSETTING_	(RTL8712_IOBASE_IOREG + 0x50)
> -#define RTL8712_TIMECTRL_	(RTL8712_IOBASE_IOREG + 0x80)
> -#define RTL8712_FIFOCTRL_	(RTL8712_IOBASE_IOREG + 0xA0)
> -#define RTL8712_RATECTRL_	(RTL8712_IOBASE_IOREG + 0x160)
> -#define RTL8712_EDCASETTING_	(RTL8712_IOBASE_IOREG + 0x1D0)
> -#define RTL8712_WMAC_		(RTL8712_IOBASE_IOREG + 0x200)
> -#define RTL8712_SECURITY_	(RTL8712_IOBASE_IOREG + 0x240)
> -#define RTL8712_POWERSAVE_	(RTL8712_IOBASE_IOREG + 0x260)
> -#define RTL8712_GP_		(RTL8712_IOBASE_IOREG + 0x2E0)
> -#define RTL8712_INTERRUPT_	(RTL8712_IOBASE_IOREG + 0x300)
> -#define RTL8712_DEBUGCTRL_	(RTL8712_IOBASE_IOREG + 0x310)
> -#define RTL8712_OFFLOAD_	(RTL8712_IOBASE_IOREG + 0x2D0)
> -
> -
> -/*FIFO for 8712*/
> -#define RTL8712_DMA_BCNQ	(RTL8712_IOBASE_FF + 0x10000)
> -#define RTL8712_DMA_MGTQ	(RTL8712_IOBASE_FF + 0x20000)
> -#define RTL8712_DMA_BMCQ	(RTL8712_IOBASE_FF + 0x30000)
> -#define RTL8712_DMA_VOQ		(RTL8712_IOBASE_FF + 0x40000)
> -#define RTL8712_DMA_VIQ		(RTL8712_IOBASE_FF + 0x50000)
> -#define RTL8712_DMA_BEQ		(RTL8712_IOBASE_FF + 0x60000)
> -#define RTL8712_DMA_BKQ		(RTL8712_IOBASE_FF + 0x70000)
> -#define RTL8712_DMA_RX0FF	(RTL8712_IOBASE_FF + 0x80000)
> -#define RTL8712_DMA_H2CCMD	(RTL8712_IOBASE_FF + 0x90000)
> -#define RTL8712_DMA_C2HCMD	(RTL8712_IOBASE_FF + 0xA0000)
> -
> -
> -/*------------------------------*/
> -

This does more than remove blank lines.

Anyway, I think you have a number of accepted patches now.  Please focus
on things that involve changing code rather than adjusting whitespace.

julia

