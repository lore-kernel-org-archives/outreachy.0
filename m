X-GM-THRID: 6616189865324183552
X-Received: by 2002:ac2:5088:: with SMTP id f8-v6mr213795lfm.6.1540485084367;
        Thu, 25 Oct 2018 09:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:545d:: with SMTP id y29-v6ls802261ljd.22.gmail; Thu, 25
 Oct 2018 09:31:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fbi+tNpew+L2y+tMDNEalLgDHc1mX4joCyF8RHljNgmvgcKfgwPeGlmRQJqk7++uS1+p/O
X-Received: by 2002:a2e:5c43:: with SMTP id q64-v6mr224982ljb.2.1540485083374;
        Thu, 25 Oct 2018 09:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540485083; cv=none;
        d=google.com; s=arc-20160816;
        b=UG2do8dALQcEHkusdMfiefHePc8AnNKwFnWsIoZoaDT7oSMyZ9A2l7Agb7NPTIDNZR
         Fmoi+zWkOOBs8pFNAEyCICWEDUiZz+iRvikZc8rySASBgsxknhR83sLP9PRHjrFULPGG
         D2AsqjSyNx/KJyt8iO9KPnn9eIlTbY3yQ+4cCohCLe8M5LPpNMOWAVpClQfq2z3PFvo/
         rBY0OgCEVVGxqiuBmuNdXfchvdeQ+4Fm68+hpBPZ+rRM5aRrXWQMPj0ZYSb6reSkxR6Y
         A/g8sqr2tbzgkhJlrpg756NcEu42wolDveOTyqnWyFiKG/5UfbruncKH1YmVDjdK9cAo
         FZew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YPHRo90ooTo4zGvRxGSFsdm5BkiKn71e+lj9QqhjOGk=;
        b=jq0F26m31xW1wOx1TOY5JdbwsrqyykTyYm7YOJqsoqziFu0NmhTU+k/aCwtUo9zzoU
         r2Qk2S5v4hXtwQdkfTZLPsClGDDon7wgvYxAsbF0SxFr3eoRKGl0F2xvK+gmW0jg37Wh
         qDkRVjPJaEtKz3dxLozs0MK+hqC1oKs+7wIWpKi5935ICABZqgdmddnwsH5ln4OxodpQ
         XxlPO2cXOyxWCLag/1q0ywKXKraO+alyo1Z9J8qzpxqszR0a0f1Hk9kjwHFZQ85mS375
         1sXB7rmXC38zg5sFPn19fYhMrbptFTVZgCeO0BUWoBli/p+25vkGF7srfDvuniBNSMMy
         cMeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w13-v6si316922lfe.3.2018.10.25.09.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 09:31:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,424,1534802400"; 
   d="scan'208";a="283345548"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.5.17]) ([62.255.9.30])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2018 18:31:21 +0200
Date: Thu, 25 Oct 2018 17:31:21 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kim Bradley <kim.jamie.bradley@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Capitalise preprocessor
 variable names
In-Reply-To: <bb4722ef-436f-419c-af36-ea76145ec52a@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1810251731010.2354@hadrien>
References: <20181025071536.GA3274@xubuntu-vm> <alpine.DEB.2.21.1810251515030.2363@hadrien> <bb4722ef-436f-419c-af36-ea76145ec52a@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-93683747-1540485082=:2354"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-93683747-1540485082=:2354
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 25 Oct 2018, Kim Bradley wrote:

> On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia Lawall wrote:
>
>
>       On Thu, 25 Oct 2018, Kim Bradley wrote:
>
>       > Capitalise header preprocesser variable names (and all
>       > occurences) to remove checkpatch camelcase warnings.
>
>       If the xD means something for the device, it could be better to
>       leave it
>       as is.
>
>       Changing Sect_Per_Page seems like a good idea.
>
>       julia
>
>
> You're right. RTS5208 is a card reader and looking into it, there exists
> an xD picture card (with camel-case). My bad!

You can send a v2 with just the Sect_Per_Page change.

julia

>
> Kim
>  
>
>       >
>       > Signed-off-by: Kim Bradley <kim.jami...@gmail.com>
>       > ---
>       >  drivers/staging/rts5208/xd.c | 8 ++++----
>       >  drivers/staging/rts5208/xd.h | 8 ++++----
>       >  2 files changed, 8 insertions(+), 8 deletions(-)
>       >
>       > diff --git a/drivers/staging/rts5208/xd.c
>       b/drivers/staging/rts5208/xd.c
>       > index c5ee04ecd1c9..1187c75d764a 100644
>       > --- a/drivers/staging/rts5208/xd.c
>       > +++ b/drivers/staging/rts5208/xd.c
>       > @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip
>       *chip)
>       >                          xd_card->zone_cnt = 32;
>       >                          xd_card->capacity = 1024000;
>       >                          break;
>       > -                case xD_1G_X8_512:
>       > +                case XD_1G_X8_512:
>       >                          XD_PAGE_512(xd_card);
>       >                          xd_card->addr_cycle = 4;
>       >                          xd_card->zone_cnt = 64;
>       >                          xd_card->capacity = 2048000;
>       >                          break;
>       > -                case xD_2G_X8_512:
>       > +                case XD_2G_X8_512:
>       >                          XD_PAGE_512(xd_card);
>       >                          xd_card->addr_cycle = 4;
>       >                          xd_card->zone_cnt = 128;
>       > @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip
>       *chip)
>       >                  return STATUS_FAIL;
>       >          }
>       >
>       > -        retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
>       > +        retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
>       >          if (retval != STATUS_SUCCESS)
>       >                  return STATUS_FAIL;
>       > -        dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x
>       0x%x\n",
>       > +        dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x
>       0x%x\n",
>       >                  id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
>       >          if (id_buf[2] != XD_ID_CODE)
>       >                  return STATUS_FAIL;
>       > diff --git a/drivers/staging/rts5208/xd.h
>       b/drivers/staging/rts5208/xd.h
>       > index bf21bf0d1616..98c00f268e56 100644
>       > --- a/drivers/staging/rts5208/xd.h
>       > +++ b/drivers/staging/rts5208/xd.h
>       > @@ -36,7 +36,7 @@
>       >  #define        BLK_ERASE_1                        0x60
>       >  #define        BLK_ERASE_2                        0xD0
>       >  #define READ_STS                        0x70
>       > -#define READ_xD_ID                        0x9A
>       > +#define READ_XD_ID                        0x9A
>       >  #define        COPY_BACK_512                        0x8A
>       >  #define        COPY_BACK_2K                        0x85
>       >  #define        READ1_1_2                        0x30
>       > @@ -72,8 +72,8 @@
>       >  #define        XD_128M_X16_2048                0xC1
>       >  #define        XD_4M_X8_512_1                        0xE3
>       >  #define        XD_4M_X8_512_2                        0xE5
>       > -#define        xD_1G_X8_512                        0xD3
>       > -#define        xD_2G_X8_512                        0xD5
>       > +#define        XD_1G_X8_512                        0xD3
>       > +#define        XD_2G_X8_512                        0xD5
>       >
>       >  #define        XD_ID_CODE                        0xB5
>       >
>       > @@ -90,7 +90,7 @@
>       >  #define        NO_OFFSET                        0x0
>       >  #define        WITH_OFFSET                        0x1
>       >
>       > -#define        Sect_Per_Page                        4
>       > +#define        SECT_PER_PAGE                        4
>       >
>        #define        XD_ADDR_MODE_2C                        XD_ADDR_MODE_2A
>       >
>       >  #define ZONE0_BAD_BLOCK                        23
>       > --
>       > 2.19.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40
>       xubuntu-vm.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
> On Thursday, October 25, 2018 at 2:17:15 PM UTC, Julia Lawall wrote:
>
>
>       On Thu, 25 Oct 2018, Kim Bradley wrote:
>
>       > Capitalise header preprocesser variable names (and all
>       > occurences) to remove checkpatch camelcase warnings.
>
>       If the xD means something for the device, it could be better to
>       leave it
>       as is.
>
>       Changing Sect_Per_Page seems like a good idea.
>
>       julia
>
>       >
>       > Signed-off-by: Kim Bradley <kim.jami...@gmail.com>
>       > ---
>       >  drivers/staging/rts5208/xd.c | 8 ++++----
>       >  drivers/staging/rts5208/xd.h | 8 ++++----
>       >  2 files changed, 8 insertions(+), 8 deletions(-)
>       >
>       > diff --git a/drivers/staging/rts5208/xd.c
>       b/drivers/staging/rts5208/xd.c
>       > index c5ee04ecd1c9..1187c75d764a 100644
>       > --- a/drivers/staging/rts5208/xd.c
>       > +++ b/drivers/staging/rts5208/xd.c
>       > @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip
>       *chip)
>       >                          xd_card->zone_cnt = 32;
>       >                          xd_card->capacity = 1024000;
>       >                          break;
>       > -                case xD_1G_X8_512:
>       > +                case XD_1G_X8_512:
>       >                          XD_PAGE_512(xd_card);
>       >                          xd_card->addr_cycle = 4;
>       >                          xd_card->zone_cnt = 64;
>       >                          xd_card->capacity = 2048000;
>       >                          break;
>       > -                case xD_2G_X8_512:
>       > +                case XD_2G_X8_512:
>       >                          XD_PAGE_512(xd_card);
>       >                          xd_card->addr_cycle = 4;
>       >                          xd_card->zone_cnt = 128;
>       > @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip
>       *chip)
>       >                  return STATUS_FAIL;
>       >          }
>       >
>       > -        retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
>       > +        retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
>       >          if (retval != STATUS_SUCCESS)
>       >                  return STATUS_FAIL;
>       > -        dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x
>       0x%x\n",
>       > +        dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x
>       0x%x\n",
>       >                  id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
>       >          if (id_buf[2] != XD_ID_CODE)
>       >                  return STATUS_FAIL;
>       > diff --git a/drivers/staging/rts5208/xd.h
>       b/drivers/staging/rts5208/xd.h
>       > index bf21bf0d1616..98c00f268e56 100644
>       > --- a/drivers/staging/rts5208/xd.h
>       > +++ b/drivers/staging/rts5208/xd.h
>       > @@ -36,7 +36,7 @@
>       >  #define        BLK_ERASE_1                        0x60
>       >  #define        BLK_ERASE_2                        0xD0
>       >  #define READ_STS                        0x70
>       > -#define READ_xD_ID                        0x9A
>       > +#define READ_XD_ID                        0x9A
>       >  #define        COPY_BACK_512                        0x8A
>       >  #define        COPY_BACK_2K                        0x85
>       >  #define        READ1_1_2                        0x30
>       > @@ -72,8 +72,8 @@
>       >  #define        XD_128M_X16_2048                0xC1
>       >  #define        XD_4M_X8_512_1                        0xE3
>       >  #define        XD_4M_X8_512_2                        0xE5
>       > -#define        xD_1G_X8_512                        0xD3
>       > -#define        xD_2G_X8_512                        0xD5
>       > +#define        XD_1G_X8_512                        0xD3
>       > +#define        XD_2G_X8_512                        0xD5
>       >
>       >  #define        XD_ID_CODE                        0xB5
>       >
>       > @@ -90,7 +90,7 @@
>       >  #define        NO_OFFSET                        0x0
>       >  #define        WITH_OFFSET                        0x1
>       >
>       > -#define        Sect_Per_Page                        4
>       > +#define        SECT_PER_PAGE                        4
>       >
>        #define        XD_ADDR_MODE_2C                        XD_ADDR_MODE_2A
>       >
>       >  #define ZONE0_BAD_BLOCK                        23
>       > --
>       > 2.19.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40
>       xubuntu-vm.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bb4722ef-436f-419c-af36-
> ea76145ec52a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-93683747-1540485082=:2354--

