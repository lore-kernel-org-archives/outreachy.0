X-GM-THRID: 6400146594222571520
X-Received: by 10.129.116.85 with SMTP id p82mr234385ywc.40.1490248629723;
        Wed, 22 Mar 2017 22:57:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls3910200oto.31.gmail; Wed, 22 Mar
 2017 22:57:09 -0700 (PDT)
X-Received: by 10.129.166.84 with SMTP id d81mr216253ywh.29.1490248629313;
        Wed, 22 Mar 2017 22:57:09 -0700 (PDT)
Received: by 10.202.221.131 with SMTP id u125msoig;
        Wed, 22 Mar 2017 09:18:08 -0700 (PDT)
X-Received: by 10.13.233.70 with SMTP id s67mr21654229ywe.24.1490199488112;
        Wed, 22 Mar 2017 09:18:08 -0700 (PDT)
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id y63si258627ywe.5.2017.03.22.09.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 09:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id o135so26722612qke.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 09:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4pxlS+a+9RdR8zPuOM8c2LoOcCCopmbQGYb9E3A3NMA=;
        b=RqlVPnN7kGRexDPJDAYT/K+4QLb3LpxuPdRDG4L/xRPR59TZkpRzkINBjM8QHFadYR
         2AEn/0RFCGxCg2B1j5zFwo0e1fCnYzYPYcyX58OorPbrYcL4ABol1TB//GUdw/J1jxSV
         Z4yzbMSQdH+uvquHB66W10yLhDP0bRcN6enPgBm1usEaozZAB0AZ3cxYA4xC2Pe35sed
         VG6O7o73S6J6I31v2XjbPpLRVMseLlxMPxouv3S6aEDmyFGABgUJzvUs65Rrk6GgLqZl
         +6uXaZ934/nmWnAZ18Y4UcoLb0dlyGxdHsfCt7uxgFx534UITf2iEGzb1FMTDY2CFaXH
         2SSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4pxlS+a+9RdR8zPuOM8c2LoOcCCopmbQGYb9E3A3NMA=;
        b=WhJ4vLuNay/ULxX/Kypy8HEnQZhpe0+SP7UY2OcxwAUgpE0o/OQQCaPcCkdywFRZCI
         21XAcu/GP5bCkyIEHBeJasQCD/6A1FzMoV/6Yl/f8UjJYsLM+Du9AbRnovreUhFW+NgU
         /KpC0zc1BD4eVbh7j3lI0NRM8nRCiUel2ih4/dse8t6Fzq99wcVtYE1UuI+BZKGfyzwB
         kXh2I+amoVf7zPz6xIAkoguaL59Izg53uav9DqD72l6dPm0KlX6q5BUs35fCYxCrX8l+
         tkEPp5zKfbCxvqAH2CUkfMNUHiIUCAvSoWQNsCunYEkRgJkwltiB+a2tZIBrRnkjabjQ
         KJFg==
X-Gm-Message-State: AFeK/H2Jj8XCsCzCNkRpCCcG12Xiumc1fzj8RJTnCCdCzl62ks5Jguh+s99Nsi1mXHKqQ02VidfoBbabJsFEKg==
X-Received: by 10.55.203.7 with SMTP id d7mr1408085qkj.245.1490199487776; Wed,
 22 Mar 2017 09:18:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.153.93 with HTTP; Wed, 22 Mar 2017 09:18:07 -0700 (PDT)
In-Reply-To: <20170322023725.GA10711@arushi-HP-Pavilion-Notebook>
References: <20170322023725.GA10711@arushi-HP-Pavilion-Notebook>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 22 Mar 2017 18:18:07 +0200
Message-ID: <CAHp75VfD=4BcMV==zKejEPaJm=S6MqxJWrP2PnBhgNH0EQue9g@mail.gmail.com>
Subject: Re: [PATCH] staging: fbtft: Replace a bit shift by a use of BIT.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 4:37 AM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
>
> -1 << c
> +BIT(c)
>

While using BIT() macro is a good idea, you make it inconsistent here.
There are at least two options:
- do nothing
- define _MASK:s with GENMASK() and reuse in the code (looking at the
code they are masks, not just separate bits).


> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 4 ++--
>  drivers/staging/fbtft/fb_ili9163.c     | 2 +-
>  drivers/staging/fbtft/fb_ili9325.c     | 2 +-
>  drivers/staging/fbtft/fb_ssd1289.c     | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 4ee76dbd30b5..d31deeab69b2 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -369,7 +369,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>                         /* select left side (sc0)
>                          * set addr
>                          */
> -                       write_reg(par, 0x00, (1 << 6) | (u8)addr_win.xs);
> +                       write_reg(par, 0x00, (BIT(6)) | (u8)addr_win.xs);
>                         write_reg(par, 0x00, (0x17 << 3) | (u8)y);
>
>                         /* write bitmap */
> @@ -392,7 +392,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>                         /* select right side (sc1)
>                          * set addr
>                          */
> -                       write_reg(par, 0x01, 1 << 6);
> +                       write_reg(par, 0x01, BIT(6));
>                         write_reg(par, 0x01, (0x17 << 3) | (u8)y);
>
>                         /* write bitmap */
> diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
> index 579e17734612..06a5a5f6e33e 100644
> --- a/drivers/staging/fbtft/fb_ili9163.c
> +++ b/drivers/staging/fbtft/fb_ili9163.c
> @@ -194,7 +194,7 @@ static int set_var(struct fbtft_par *par)
>
>         /* Colorspcae */
>         if (par->bgr)
> -               mactrl_data |= (1 << 2);
> +               mactrl_data |= (BIT(2));
>         write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, mactrl_data);
>         write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
>         return 0;
> diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
> index 7189de5ae4b3..ab1267a9cd11 100644
> --- a/drivers/staging/fbtft/fb_ili9325.c
> +++ b/drivers/staging/fbtft/fb_ili9325.c
> @@ -126,7 +126,7 @@ static int init_display(struct fbtft_par *par)
>         write_reg(par, 0x0013, 0x0000); /* VDV[4:0] for VCOM amplitude */
>         mdelay(200); /* Dis-charge capacitor power voltage */
>         write_reg(par, 0x0010, /* SAP, BT[3:0], AP, DSTB, SLP, STB */
> -               (1 << 12) | (bt << 8) | (1 << 7) | (0x01 << 4));
> +               (BIT(12)) | (bt << 8) | (BIT(7)) | (BIT(4)));
>         write_reg(par, 0x0011, 0x220 | vc); /* DC1[2:0], DC0[2:0], VC[2:0] */
>         mdelay(50); /* Delay 50ms */
>         write_reg(par, 0x0012, vrh); /* Internal reference voltage= Vci; */
> diff --git a/drivers/staging/fbtft/fb_ssd1289.c b/drivers/staging/fbtft/fb_ssd1289.c
> index c603e1516e64..b22a07d79b34 100644
> --- a/drivers/staging/fbtft/fb_ssd1289.c
> +++ b/drivers/staging/fbtft/fb_ssd1289.c
> @@ -47,7 +47,7 @@ static int init_display(struct fbtft_par *par)
>         write_reg(par, 0x0E, 0x2B00);
>         write_reg(par, 0x1E, 0x00B7);
>         write_reg(par, 0x01,
> -               (1 << 13) | (par->bgr << 11) | (1 << 9) | (HEIGHT - 1));
> +               (BIT(13)) | (par->bgr << 11) | (BIT(9)) | (HEIGHT - 1));
>         write_reg(par, 0x02, 0x0600);
>         write_reg(par, 0x10, 0x0000);
>         write_reg(par, 0x05, 0x0000);
> --
> 2.11.0
>



-- 
With Best Regards,
Andy Shevchenko

