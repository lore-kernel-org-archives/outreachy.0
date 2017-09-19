X-GM-THRID: 6467232921524633600
X-Received: by 10.46.66.81 with SMTP id p78mr14127lja.33.1505798310618;
        Mon, 18 Sep 2017 22:18:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.46.11 with SMTP id u11ls932689lju.13.gmail; Mon, 18 Sep
 2017 22:18:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDePSiaIWU4jmuqT2RMoSx2ojiReu9fB5Dxes54a7C++L+ngXVX3225MycI5VZBrCQenhF5
X-Received: by 10.25.40.20 with SMTP id o20mr20707lfo.41.1505798309322;
        Mon, 18 Sep 2017 22:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505798309; cv=none;
        d=google.com; s=arc-20160816;
        b=CDs3obhQe3hOfeVPNFePoIjxy1NnBYS+VmgmIrB5FcwF7WycrvmvQE/sC0SSwSfHvF
         /IxKBTX+rNeHiEoWGrxcaKoBJ9I1oOoOWcFQWdRYDBD+1hKkmtTKP7swj7hKb3BbOx14
         3/t/WxYq37b4EyeMYpGdiV42BiJG0ujbHaMf2SJAExqKZ+N/37O6Rfkc3SLmd/hgJPw1
         PjSVq8y0qKIcNuoHaCBuUvYT5g0by9SbidFy/6MKrMd39kGDoqKGCuJaE9T03xH72o8R
         ZT9emykX4UZ5qB/FgaEyD3JMn1ogT2FInvMqG5cP5eQSQzoA/P8gAMCdqEJG+CSM7OD6
         pLow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=rHN+E0WJsMla06sTxyRCDIV/TqFD+LAGSlnmpPVLGkA=;
        b=GOGuzUn42iXSf5qR/zpYKsri8rtZpbh2+F2DbrDDtJWR04WYSEOzRSUXb8VBMCC3eg
         2H6k2ePvyx8Rpcpa1IMyqHliZVz3t+eu2tuxlWaK7//1BdkkIzEGh4V4+qVbPjWQfU1Z
         FWKPKzqrbM0VTM8CZrCtawSajFHZ0lziXTGmik02YiHdgGaFK35krz2Ei4HAjSm9TEak
         57Nyl5eoIy0ip2/jqgIE4jEgTZVx/YfoBtsrqOUiIMNDKVReyOSTIE930Xw8rwa+GFLW
         yZu+VcdrD1CbRHCj1piIBaLH24DsK/JRiyEK6RXgAHyw38ft8Qk77qp+5Bcu4XtuGIlA
         XjZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si66603wmb.3.2017.09.18.22.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 22:18:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,416,1500933600"; 
   d="scan'208";a="237942255"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 07:18:28 +0200
Date: Tue, 19 Sep 2017 07:18:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Check sscanf
 return value
In-Reply-To: <20170918212640.inn4in2kwsn2pzvr@fireworks>
Message-ID: <alpine.DEB.2.20.1709190718100.2029@hadrien>
References: <20170918212640.inn4in2kwsn2pzvr@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Sep 2017, Georgiana Chelu wrote:

> Check the sscanf return value and handle it.

Why do you check for a return value of 1?

julia


>
> Issue found by checkpatch.pl.
> WARNING: unchecked sscanf return value
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 6a8f805c0b28..18aa4011a576 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2355,7 +2355,11 @@ static int rtw_wx_read32(struct net_device *dev,
>
>  	bytes = 0;
>  	addr = 0;
> -	sscanf(ptmp, "%d,%x", &bytes, &addr);
> +	ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
> +	if (ret != 1) {
> +		ret = -EINVAL;
> +		goto exit;
> +	}
>
>  	switch (bytes) {
>  		case 1:
> @@ -2392,12 +2396,15 @@ static int rtw_wx_write32(struct net_device *dev,
>  	u32 addr;
>  	u32 data32;
>  	u32 bytes;
> +	int ret;
>
>
>  	bytes = 0;
>  	addr = 0;
>  	data32 = 0;
> -	sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> +	ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
> +	if (ret != 1)
> +		return -EINVAL;
>
>  	switch (bytes) {
>  		case 1:
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170918212640.inn4in2kwsn2pzvr%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

