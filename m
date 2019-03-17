X-GM-THRID: 6669330275448651776
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr640825ljg.29.1552824734341;
        Sun, 17 Mar 2019 05:12:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls1699156lje.10.gmail; Sun, 17 Mar
 2019 05:12:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrrI2T3P9lIuBMyYTaqVDaJlO5PrjY2EAh5B5QOiB3+XLjMAjLKEb+8k4Z7R+5MNIa4obR
X-Received: by 2002:a2e:8616:: with SMTP id a22mr647444lji.26.1552824733547;
        Sun, 17 Mar 2019 05:12:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552824733; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNnU6L/OL2CWQC9diTwTZymXBIRHghandLOy696c7SYVBPCpbQ7maSEt2KoJjNsPzl
         Nx+ZhCdAllCyc5iHenem/Zyp3iStSW7zprRBoHEKHl8KThRsUA68X1nFhvbcAzLYB38B
         X8fwwKBrJiLajsqZW9z+OUd94BLPeFauDodFgtvkDAWimbtM5euSEHl6msCyKoK9XZYL
         zi661luOAar6dwpLVeeAsDz3dfrNMNA2U3lP5a8jO0F702ceTY7OpXJeDsdmVrm//TnZ
         oL28ZjDO7ioOLOG/s3ZXhlGfGWXvFqBgwJO4ooiyKGL/wKPCZZqyFtizmSMRukZB+S57
         fejA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Z9elPY+C0HyQTwJnJVch2IbfVtgvee9NoECcicfdX2w=;
        b=LpxsNtKqtyJ8TrP/t5T3+EkaZQgAa3YO8aJfdP5ydzBdp7CAwohH/J/kVaFS4UEKwn
         3wHUsOr/UjNZ/7qNl4S1Fa6xyJD1kTYV6cVqIDNixa4QpcWXepTCVE4Kt08DNB2nvSqN
         DRv4+3xFDhcEzx2JtmySEJkZ+t8YVG+xU+bo0KeJL5ODHXIHpk0eIPjnr4c6Rk7Db0Bd
         wyquvhKrM5vnP07X56Kwbpx5+ypXg4Vgr08nttJmTmyODyxV7t5guHhADqdRDjaWgEnf
         nKoKZg1RZavuqzM1g9E7pLVmwRjNmFJE2jE0B94HLNxsD8t0VlCTRswLSas6Kf4QC4gJ
         XEmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k13si288678lja.5.2019.03.17.05.12.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:12:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="374340666"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 13:12:12 +0100
Date: Sun, 17 Mar 2019 13:12:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: rtw_ap.c:
 Fix multiple blank lines
In-Reply-To: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903171310340.2588@hadrien>
References: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> Remove multiple blank lines.
> Issue found by checkpatch.pl semantic patch results for rtw_ap.c
>
> CHECK: Please dont use multiple blank lines.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index fc500da2d71f..fa3ba5643629 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -367,10 +367,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
>  		sta_band |= WIRELESS_11G | WIRELESS_11B;
>  	else
>  		sta_band |= WIRELESS_11B;
> -
> -

The warning is only complaining about multiple contiguous blank lines.  So
only one of the above lines should be removed and the one below is fine as
is.

julia

>  	psta->wireless_mode = sta_band;
> -
>  	raid = networktype_to_raid(sta_band);
>  	init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317120729.4811-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

