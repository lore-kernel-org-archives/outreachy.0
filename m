X-GM-THRID: 6753034664415330304
X-Received: by 2002:a17:906:6d84:: with SMTP id h4mr1690712ejt.262.1572331939514;
        Mon, 28 Oct 2019 23:52:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b54b:: with SMTP id z11ls4895600edd.6.gmail; Mon, 28 Oct
 2019 23:52:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTBEY9PiYSFxUOjoQ8qaNpVnp2lcZu8V7ICnwuGyaQo4URQiP08FEkwJ7Hedfj7ZiElAHY
X-Received: by 2002:a50:8a90:: with SMTP id j16mr24464929edj.283.1572331938151;
        Mon, 28 Oct 2019 23:52:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572331938; cv=none;
        d=google.com; s=arc-20160816;
        b=Te/rPVJfBQB/YEWrg55Id0U118To77f8xGMtNnQI+21lcaOzRxZA91kgSfx6WwUywT
         gI6Noej7bLg3CHPdt5FQbIM+da30o3qub8nEBARLjbkxBMfbvTnK/ADgpm4P0bVkFPn3
         8tPp3mrc9K3oUTTSFWWOOsnmzxwUWiYUjvNEGlVDHU6H7tEIbDulKbJK3AXpTlWABJ/A
         Nqj3IKBr3+pT/ztXatNGCEvem6YDSuCMmO1Ju8I/ocxaIQlidqrFsEMBUdDPLQPRD+A+
         aosSmBoPs/lQVIpyaWg0rGw/gOhDtVmpbJ0b3obZ+uvB6umpmJWy97HV1mrOIH1Q4K07
         SaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/DAQ5DcpSD1LToSRzeAfD9E0w5MV83UQkDePDhfvZOY=;
        b=X17iTCHIm18dh3ywS+iYR9Qqi7BmWvsAqfL+TyiXgSzdQNSS31l54rWbN0dLck/n8O
         NfV9cVyFX5P3ikmCTm7FDpEfg3h5DACICJq373mNo4wd8OJDzSytNSQnpdaeCAwD5iU6
         U+1FiJ9gt+kLkbVSoCoLUmouKTO8RTaB73PuGdfGlNSvMDPI5ug/q8RVfnRheu+dlIya
         DdhD9DuFv/+d8uUArHgWQul6ppsrG5bXv3Ee3SS8v1oBlUjV0VwSWl5+Jo8UejTLywpp
         J4vNB51W5DysrDhiR2gqhL4o1aGIkhgb0PAeEMEiM5o5qJz7uxZriL6Jam6OOdmG2TUW
         Pkew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q17si1081978edi.1.2019.10.28.23.52.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 23:52:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,243,1569276000"; 
   d="scan'208";a="324944045"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2019 07:52:16 +0100
Date: Tue, 29 Oct 2019 07:52:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    lkcamp@lists.libreplanetbr.org
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rts5208: Eliminate the
 use of Camel Case in file xd.c
In-Reply-To: <20191029014316.6452-4-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910290750110.2328@hadrien>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com> <20191029014316.6452-4-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 28 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Avoid CamelCase" in file xd.c
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rts5208/xd.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
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

This looks wrong.  You have changed the uses of these names, but their
definitions don't get changed until patch number 4.  So this patch will
break the build.

Please redo the whole series so that definitions and uses are changed in
the same patch.  Be sure that you can compile the code after applying each
patch.

julia

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
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029014316.6452-4-gabrielabittencourt00%40gmail.com.
>

