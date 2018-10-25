X-GM-THRID: 6616189865324183552
X-Received: by 2002:a19:d8da:: with SMTP id r87-v6mr158148lfi.7.1540477035732;
        Thu, 25 Oct 2018 07:17:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2d3:: with SMTP id y80-v6ls768412lje.16.gmail; Thu, 25
 Oct 2018 07:17:14 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eJvcBU0cu6KFJcsjdzgxRETk7UM/JlesZ5QDR76Kl3CwJ8F+e6qBEWogo25sB2ehuwGG86
X-Received: by 2002:a2e:9ed2:: with SMTP id h18-v6mr171496ljk.4.1540477034723;
        Thu, 25 Oct 2018 07:17:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540477034; cv=none;
        d=google.com; s=arc-20160816;
        b=tt7HF7VCvkwQ6M865n4LNv713DbqqadAXFrNp9xJdi4IlQ+zH7f4JY2HyJFQ9zuY5Q
         b1paiAu7Fy6XEYlfI/qHzxjStSdluygrTgHZS6Z7NuJBn2d5BgCikrxViw5y4JSUci+4
         nOZMDDat0S75fzT5EgJMUDBbj/3B4ob0G4n9kLhq+G7rGYOiaV1BawDANhjbpg6PbDSF
         JQIEBe8H/JNkeLy6HJ8ci/NxGoxUWORNlXYDD7k3palQ8frkyMPxeydAJ37UFbHV/ow1
         lM/1zHIGqJkwlB5bwQzW2+qm5BMYdTmSIcrTWvx76hGpKysIFtQigV7C5PySBGe+jIHr
         wLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2MCYKs+dmKpy3Pfwpm/46vPh3/EbhW/02vBjAz1z7c4=;
        b=DBzQWAQi9KZkSV2X5x3KOMKaDUC1xtTSsfbrw2h+fNSj7EqgsRSM8cavcLLaaE32FV
         pHGMNhYjQVFZl9f1LaGqeqhHGJoj4NNalt/FvOseSfVDZsw/45CKWDE9ehMpSjBrNOxs
         8PI630qYMx4TeNvo4AGIJ2HOoxP/5zBWuHGpHo56FSjIo7U20hlibJC2CEhMjiqVtv43
         ywzjZoVFiVHF0/Zlba7gi7VvZTVntVdPW4eywRn/lBsxHopEH9MlDnXY0hXqCILi7MnY
         0jPv/AzcJytfiDbyR/2s3I/rILS298yMudSAPWGwRq1LBkJJTUcMJ8snHNVF65znMe7t
         PUkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u142-v6si82770lja.2.2018.10.25.07.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 07:17:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,424,1534802400"; 
   d="scan'208";a="283327975"
Received: from unknown (HELO hadrien) ([167.98.65.38])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2018 16:17:13 +0200
Date: Thu, 25 Oct 2018 15:17:12 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kim Bradley <kim.jamie.bradley@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Capitalise preprocessor
 variable names
In-Reply-To: <20181025071536.GA3274@xubuntu-vm>
Message-ID: <alpine.DEB.2.21.1810251515030.2363@hadrien>
References: <20181025071536.GA3274@xubuntu-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 25 Oct 2018, Kim Bradley wrote:

> Capitalise header preprocesser variable names (and all
> occurences) to remove checkpatch camelcase warnings.

If the xD means something for the device, it could be better to leave it
as is.

Changing Sect_Per_Page seems like a good idea.

julia

>
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
> ---
>  drivers/staging/rts5208/xd.c | 8 ++++----
>  drivers/staging/rts5208/xd.h | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> index c5ee04ecd1c9..1187c75d764a 100644
> --- a/drivers/staging/rts5208/xd.c
> +++ b/drivers/staging/rts5208/xd.c
> @@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
>  			xd_card->zone_cnt = 32;
>  			xd_card->capacity = 1024000;
>  			break;
> -		case xD_1G_X8_512:
> +		case XD_1G_X8_512:
>  			XD_PAGE_512(xd_card);
>  			xd_card->addr_cycle = 4;
>  			xd_card->zone_cnt = 64;
>  			xd_card->capacity = 2048000;
>  			break;
> -		case xD_2G_X8_512:
> +		case XD_2G_X8_512:
>  			XD_PAGE_512(xd_card);
>  			xd_card->addr_cycle = 4;
>  			xd_card->zone_cnt = 128;
> @@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
>  		return STATUS_FAIL;
>  	}
>
> -	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
> +	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
>  	if (retval != STATUS_SUCCESS)
>  		return STATUS_FAIL;
> -	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
> +	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
>  		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
>  	if (id_buf[2] != XD_ID_CODE)
>  		return STATUS_FAIL;
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index bf21bf0d1616..98c00f268e56 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -36,7 +36,7 @@
>  #define	BLK_ERASE_1			0x60
>  #define	BLK_ERASE_2			0xD0
>  #define READ_STS			0x70
> -#define READ_xD_ID			0x9A
> +#define READ_XD_ID			0x9A
>  #define	COPY_BACK_512			0x8A
>  #define	COPY_BACK_2K			0x85
>  #define	READ1_1_2			0x30
> @@ -72,8 +72,8 @@
>  #define	XD_128M_X16_2048		0xC1
>  #define	XD_4M_X8_512_1			0xE3
>  #define	XD_4M_X8_512_2			0xE5
> -#define	xD_1G_X8_512			0xD3
> -#define	xD_2G_X8_512			0xD5
> +#define	XD_1G_X8_512			0xD3
> +#define	XD_2G_X8_512			0xD5
>
>  #define	XD_ID_CODE			0xB5
>
> @@ -90,7 +90,7 @@
>  #define	NO_OFFSET			0x0
>  #define	WITH_OFFSET			0x1
>
> -#define	Sect_Per_Page			4
> +#define	SECT_PER_PAGE			4
>  #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
>
>  #define ZONE0_BAD_BLOCK			23
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181025071536.GA3274%40xubuntu-vm.
> For more options, visit https://groups.google.com/d/optout.
>

