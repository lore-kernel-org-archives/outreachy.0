X-GM-THRID: 6659803062561931264
X-Received: by 2002:adf:e412:: with SMTP id g18mr1092035wrm.9.1550644999190;
        Tue, 19 Feb 2019 22:43:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls660034wmc.13.gmail; Tue, 19 Feb
 2019 22:43:18 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYHQpPNCSqHa5Df4TP50ejYNCq0S9HPjoPH0+dKMDRdPusfy9F4e4dTvjP2kwUD1fvll0XU
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr520455wmc.16.1550644998329;
        Tue, 19 Feb 2019 22:43:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550644998; cv=none;
        d=google.com; s=arc-20160816;
        b=XCSkXeNP5xWOA0lSqQ4iJg/iq46oois1Wuf6YPLnWoWVTGcxMjezNPnzfg8RmuZQTg
         ldg4tgaOdgmCD6PerA57ddajBKcKOxbAvRJCfOBa6mr2vT35GBUt2qPOj6npN3la2Gbu
         WpmG0CUn8WW7fiwaomyc5zxdoc63us6UpODMH3AsFQSqgy10uq5uqyB5BD6H3aJLcy7V
         pfeeXfRMKDUvSTIER2t1UXkrs2C3zCyM9WfsOyzYFi0Decw3BAtDEjMUF89F0NW5nKtU
         kkfNoR1iJozFkeMnqHLgT31Vc1CCPKiT9RSl3sa9xOvmykmJdP/xfXnwa3x6XAZJVsJf
         9DGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uNrAL3H3LfZpkUg0IZZa00qJOQA4NIzU9P5kPZsH4Fw=;
        b=ZpEuSGpkrQYBmDhMKsxVK9wSLWGDIVrRffn1lks5P8sK3Kpy6U7Z00X6y0ka49YPH7
         HXhgiZ90utgvAP38yMO8Xfj+On3VPiy5K/fE+IGB6cG5GbfB6BiMJ/4+fxfL7e9o+q1y
         yCH84oVHLRRXJ6lzVdoenHpXWa5tq0FyxaXjF2x39PFuUmbXVSLwq2bH7cgb0rgLYAdZ
         PQuCYKEJBj8dF0LO56lwaXu1DqtL+d59zzBXvlNZ4wzBoVkMMpLdZcPcb5Bm4ZUh9mGs
         TNxgOZY5amlf6tfC/G2y4CH7NGm+12QerQr8Zqrnww7zL5vpVySf0OuJx24UQoSjgtJ8
         2CFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 109si909640wrb.0.2019.02.19.22.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 22:43:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,388,1544482800"; 
   d="scan'208";a="296722230"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2019 07:43:17 +0100
Date: Wed, 20 Feb 2019 07:43:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
cc: Bhanusree Pola <bhanusreemahesh@gmail.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] Staging: rts5208:
 Fix Avoid Camel Case - style
In-Reply-To: <CAK-LDbLfqrqJyrjtb11xq-WqhuCksEJwcuNd3T3Rtu9GM2wcpQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1902200742390.14143@hadrien>
References: <20190219195708.GA16266@bhanusree-MacBookAir> <CAK-LDbLfqrqJyrjtb11xq-WqhuCksEJwcuNd3T3Rtu9GM2wcpQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Feb 2019, Vaishali Thakkar wrote:

> On Wed, Feb 20, 2019 at 1:27 AM Bhanusree Pola
> <bhanusreemahesh@gmail.com> wrote:
> >
> > Fixes Avoid Camel Case for various Macros
>
> Hi Bhanusree,
>
> Thanks for the patch. Please write more detailed commit log. It
> should generally mention why this change is required and if the issue
> is identified by any tool then give credit to the tool. [in this case,
> I assume it's checkpatch.pl].

If you just follow the rule "Never use fix in a log message" then you will
sort of be forced to do the right thing :)

julia

>
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rts5208/xd.c | 8 ++++----
> >  drivers/staging/rts5208/xd.h | 6 +++---
> >  2 files changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> > index c5ee04ecd1c9..1187c75d764a 100644
> > --- a/drivers/staging/rts5208/xd.c
> > +++ b/drivers/staging/rts5208/xd.c
> > @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
> >                         xd_card->zone_cnt = 32;
> >                         xd_card->capacity = 1024000;
> >                         break;
> > -               case xD_1G_X8_512:
> > +               case XD_1G_X8_512:
> >                         XD_PAGE_512(xd_card);
> >                         xd_card->addr_cycle = 4;
> >                         xd_card->zone_cnt = 64;
> >                         xd_card->capacity = 2048000;
> >                         break;
> > -               case xD_2G_X8_512:
> > +               case XD_2G_X8_512:
> >                         XD_PAGE_512(xd_card);
> >                         xd_card->addr_cycle = 4;
> >                         xd_card->zone_cnt = 128;
> > @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
> >                 return STATUS_FAIL;
> >         }
> >
> > -       retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
> > +       retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
> >         if (retval != STATUS_SUCCESS)
> >                 return STATUS_FAIL;
> > -       dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
> > +       dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
> >                 id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
> >         if (id_buf[2] != XD_ID_CODE)
> >                 return STATUS_FAIL;
> > diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> > index 57b94129b26f..98c00f268e56 100644
> > --- a/drivers/staging/rts5208/xd.h
> > +++ b/drivers/staging/rts5208/xd.h
> > @@ -36,7 +36,7 @@
> >  #define        BLK_ERASE_1                     0x60
> >  #define        BLK_ERASE_2                     0xD0
> >  #define READ_STS                       0x70
> > -#define READ_xD_ID                     0x9A
> > +#define READ_XD_ID                     0x9A
> >  #define        COPY_BACK_512                   0x8A
> >  #define        COPY_BACK_2K                    0x85
> >  #define        READ1_1_2                       0x30
> > @@ -72,8 +72,8 @@
> >  #define        XD_128M_X16_2048                0xC1
> >  #define        XD_4M_X8_512_1                  0xE3
> >  #define        XD_4M_X8_512_2                  0xE5
> > -#define        xD_1G_X8_512                    0xD3
> > -#define        xD_2G_X8_512                    0xD5
> > +#define        XD_1G_X8_512                    0xD3
> > +#define        XD_2G_X8_512                    0xD5
> >
> >  #define        XD_ID_CODE                      0xB5
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190219195708.GA16266%40bhanusree-MacBookAir.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbLfqrqJyrjtb11xq-WqhuCksEJwcuNd3T3Rtu9GM2wcpQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

