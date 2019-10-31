X-GM-THRID: 6753034664415330304
X-Received: by 2002:a17:906:7e13:: with SMTP id e19mr2137522ejr.298.1572503962612;
        Wed, 30 Oct 2019 23:39:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fb14:: with SMTP id d20ls369297edq.8.gmail; Wed, 30 Oct
 2019 23:39:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWBxaBry/CFfslGy7zowm1evA4CAJPFOtS05jxhKMa5faby/T6FUZHSuVgGmEkZ2XQhB9D
X-Received: by 2002:a05:6402:6cc:: with SMTP id n12mr4253963edy.38.1572503961449;
        Wed, 30 Oct 2019 23:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572503961; cv=none;
        d=google.com; s=arc-20160816;
        b=DQNC/GkQj6kA8n6iNo4WNQaFv9bqc5OrdwgZwdHeDcSddNPDqtnP7pae/EgQHh2hyH
         G8/Db/Sf1bS9ilbS9wWzrWZmHwFLOwWLWu90jt43QddBIkSMp2e4MDYMgtRDFY6VBSUr
         XUD4VBStbSAd+fCBQ64wCJE9chAtDSLqN2woLGEc/2gTr9PF/JTccYy1WBA6LE4NphnD
         KuiBcAYwdBVHEIDdmLwo0GGU4O4/USRzDA+urtNfTkffDDrJNq/3AWu8nMGfc3LONdSh
         1ggtMPwYeKRAb3kLo1RHNwbM0nwsPvqD3vUpal/Ndg2/r2OpAeIgNzWHQQ351z3PWHZ3
         XUhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hPjMRD+0kaeYX/6ddgrjg6EmYbmispmBoK0E6Q8n/6E=;
        b=vdPwb27tl711jeBPsGDgdXpoPMwQHSJPphifaomj/3YKWI/1QSy3/HXr1zR3G/5BUI
         fhAYDrxWfpRZiQg9OyBV01xHPXS3VbVuMwYA97Ev6yj7jO876ZQB3XYKSjuvoVkPnvOQ
         MYyE2YDXOzH7Nc0tr3roJAkiLBzh46Veh+Ss7K8eSyAeLNolsdYRHzNWQUi7T/l5TY9i
         7FOfLnPTUfFWny5ZIYJVs+q9/t8IcIG9+yNAmw8IqzHzOMHXQvQQWMhcv0zkrrqXv1Md
         x0o99fp6Rqe79PwrKNez30FxBnoBwSxjTcLGWnuRVWyKcZJFKKzYTnZRuAPBqvus+7Um
         3jUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c31si289528edb.0.2019.10.30.23.39.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 23:39:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,250,1569276000"; 
   d="scan'208";a="325190605"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2019 07:39:20 +0100
Date: Thu, 31 Oct 2019 07:39:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    lkcamp@lists.libreplanetbr.org
Subject: Re: [Outreachy kernel] [PATCH v3 2/3] staging: rts5208: Eliminate
 the use of Camel Case in files xd.{h,c}
In-Reply-To: <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910310738570.2718@hadrien>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com> <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 30 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Avoid CamelCase" in files xd.{h,c}
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rts5208/xd.c | 8 ++++----
>  drivers/staging/rts5208/xd.h | 6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> index f3dc96a4c59d..0f369935fb6c 100644
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
> index 57b94129b26f..98c00f268e56 100644
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
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030190514.10011-3-gabrielabittencourt00%40gmail.com.
>

