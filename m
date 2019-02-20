X-GM-THRID: 6659803062561931264
X-Received: by 2002:a25:4455:: with SMTP id r82mr14944447yba.6.1550634270448;
        Tue, 19 Feb 2019 19:44:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d58:: with SMTP id 85ls6259859ybn.8.gmail; Tue, 19 Feb
 2019 19:44:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaqboTsX+jGgS9lLGsOwgnS9Urw3PkbwJUtWRB7y7Qbzt8HbMVj6JY/7lS8PhT+BH4cYmTc
X-Received: by 2002:a25:9c88:: with SMTP id y8mr103810ybo.2.1550634269192;
        Tue, 19 Feb 2019 19:44:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550634269; cv=none;
        d=google.com; s=arc-20160816;
        b=g1+Ff4R+I7AgnLVgTqXsijUQv5QIJMrrfzhJIXEIkTzRBvWb21a3kdesLL+2bNxeXG
         RsYvyAumNF9EViE4tE2k6ng0sfVgIjhYwfEMoWfRZdjCT3bpW3WuN8Zepb3RIvOJ1hvJ
         zW4ebXcO39kqrBdMFmBI3YL/iRPkMitcKMaKkNUa7kQzq/4GfyI67PDFVcRvN0ZbW3jz
         FJ+YRRf+78G68TrLDebujTfBI0CXR2OoqR7A5aLk2ofg6r6n0qQatHUrdriKQaC6UIpC
         q/WafVpJy6NOh1hlIIDnLsQz3losYdWhnIAEmVUV6IZwRBlk9UYxG+vFMb56Xi7eza4S
         4ZIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=cdntxp/18w6OD+JjFhFF6B9qRYz1zm73+HcuXQTxqZ4=;
        b=rqo8bmcmWNoBOL7MqO3U9kui3fbzMLONaQRpnSqVB0LAZRWlnboqpptM2jVy0Pibnu
         AGeRjguHLJ5Y5iL34oT2K1KD4GXz8YBKznagxyiDS9ARHfvnW25KSqFp6QB3H2uoSf3+
         JImkJcwKkLTn2tgPhBsAbWB+Ne02jjXP90oN9AlF7tWxKqM0M5GjcXXbJc96ryf/itYm
         yUTNWHbC/CVMbVfSg/Yg/Xf0aPgBSLKsDjFq9ltTrgmmETxNLIfaqeqo52v3AAzLStcA
         q3HQ9P1fdQPHLvTuDSxJiwr4ogGRAy3LEo7zLuW2FKUR/DdHxh3xKXWYnbzzy12zTlkW
         nT2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-02.prod.phx3.secureserver.net (p3plsmtpa08-02.prod.phx3.secureserver.net. [173.201.193.103])
        by gmr-mx.google.com with ESMTPS id r128si447044ywd.0.2019.02.19.19.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 19:44:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.103 as permitted sender) client-ip=173.201.193.103;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.103 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f178.google.com ([209.85.208.178])
	by :SMTPAUTH: with ESMTPSA
	id wIo7gNrNsPBgKwIo8gpCvL; Tue, 19 Feb 2019 20:44:28 -0700
Received: by mail-lj1-f178.google.com with SMTP id z20so18496000ljj.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 19:44:28 -0800 (PST)
X-Gm-Message-State: AHQUAubUAu7dQAY8VsTSyqjm7aOZjFGVZWJoVkoVwgF+xwWvFhdK/JJ7
	bLETTJGdwHbO/WowjsdNTNWbEfDXkSSVgsDjPAc=
X-Received: by 2002:a2e:814d:: with SMTP id t13mr13888604ljg.46.1550634267020;
 Tue, 19 Feb 2019 19:44:27 -0800 (PST)
MIME-Version: 1.0
References: <20190219195708.GA16266@bhanusree-MacBookAir>
In-Reply-To: <20190219195708.GA16266@bhanusree-MacBookAir>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 20 Feb 2019 09:14:15 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLfqrqJyrjtb11xq-WqhuCksEJwcuNd3T3Rtu9GM2wcpQ@mail.gmail.com>
Message-ID: <CAK-LDbLfqrqJyrjtb11xq-WqhuCksEJwcuNd3T3Rtu9GM2wcpQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] Staging:
 rts5208: Fix Avoid Camel Case - style
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfMz3aGqtFDXBMzzkhaDj8FvqD1NnAhMnmpD2W6+ZV5x1TgL26Uw06QJH+hjQhQsQYodfQZO1WohZ8gEzM9TQkagLx8cnE491yG+V/sDgTE8BPID2Azji
 MUn916U3vPvRgQAY0ALygURyYrRPTuZx4lr7UFUEqgScV/QPhV/JxoRlEBZ91BoOcPvhu8hwYlwtcdwfszI+MuoQQrDkM93+8XQ=

On Wed, Feb 20, 2019 at 1:27 AM Bhanusree Pola
<bhanusreemahesh@gmail.com> wrote:
>
> Fixes Avoid Camel Case for various Macros

Hi Bhanusree,

Thanks for the patch. Please write more detailed commit log. It
should generally mention why this change is required and if the issue
is identified by any tool then give credit to the tool. [in this case,
I assume it's checkpatch.pl].

> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rts5208/xd.c | 8 ++++----
>  drivers/staging/rts5208/xd.h | 6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> index c5ee04ecd1c9..1187c75d764a 100644
> --- a/drivers/staging/rts5208/xd.c
> +++ b/drivers/staging/rts5208/xd.c
> @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
>                         xd_card->zone_cnt = 32;
>                         xd_card->capacity = 1024000;
>                         break;
> -               case xD_1G_X8_512:
> +               case XD_1G_X8_512:
>                         XD_PAGE_512(xd_card);
>                         xd_card->addr_cycle = 4;
>                         xd_card->zone_cnt = 64;
>                         xd_card->capacity = 2048000;
>                         break;
> -               case xD_2G_X8_512:
> +               case XD_2G_X8_512:
>                         XD_PAGE_512(xd_card);
>                         xd_card->addr_cycle = 4;
>                         xd_card->zone_cnt = 128;
> @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
>                 return STATUS_FAIL;
>         }
>
> -       retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
> +       retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
>         if (retval != STATUS_SUCCESS)
>                 return STATUS_FAIL;
> -       dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
> +       dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
>                 id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
>         if (id_buf[2] != XD_ID_CODE)
>                 return STATUS_FAIL;
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index 57b94129b26f..98c00f268e56 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -36,7 +36,7 @@
>  #define        BLK_ERASE_1                     0x60
>  #define        BLK_ERASE_2                     0xD0
>  #define READ_STS                       0x70
> -#define READ_xD_ID                     0x9A
> +#define READ_XD_ID                     0x9A
>  #define        COPY_BACK_512                   0x8A
>  #define        COPY_BACK_2K                    0x85
>  #define        READ1_1_2                       0x30
> @@ -72,8 +72,8 @@
>  #define        XD_128M_X16_2048                0xC1
>  #define        XD_4M_X8_512_1                  0xE3
>  #define        XD_4M_X8_512_2                  0xE5
> -#define        xD_1G_X8_512                    0xD3
> -#define        xD_2G_X8_512                    0xD5
> +#define        XD_1G_X8_512                    0xD3
> +#define        XD_2G_X8_512                    0xD5
>
>  #define        XD_ID_CODE                      0xB5
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190219195708.GA16266%40bhanusree-MacBookAir.
> For more options, visit https://groups.google.com/d/optout.

