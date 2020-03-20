X-GM-THRID: 6806104906273914880
X-Received: by 2002:a1c:6885:: with SMTP id d127mr10470982wmc.33.1584711692490;
        Fri, 20 Mar 2020 06:41:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls2542316wrr.4.gmail; Fri, 20 Mar
 2020 06:41:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv2Pg5rzWm0r8yWASY1+XNBhay12nZLMArJW8JdEG8n7Hov7khUZUGDqHIv6QfLmgu+bpls
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr11487754wrb.90.1584711691159;
        Fri, 20 Mar 2020 06:41:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584711691; cv=none;
        d=google.com; s=arc-20160816;
        b=CmLDWNp6le8JWxWfwr7TRGLAXL8Suag8Z4Lx80VeLCZRZNhLYSBvvFCndW32a+bjb1
         ZY/sEKp2hhm92pZfuVmPj2tipVOliMDp2hHNSGXZJqqifB6E3OK+4XdR6H8CxeU/Jlpk
         x1P7IKtOOXENBr7M8x6usSIVQTkdECP3kpX5lkGcMaDvMapfnH8oMVOvj3IhDl3IUFMu
         NV/UPwE6+oYIfv7/dox968z4Nj0w5joZC93mnVZjO63vrJC5KphsxL9008iKqzw6LBTB
         XxKRBX3sNjceC83CL0jS9ET+FFSWmNu7R69DqoVLTA8b/XdQSFjkGmF+VSZZM5Vpqf98
         4uZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mHfQRemK/c+08zqO/Cdo3M++/znI7ClID7NDemMc1+U=;
        b=cnHdbiIlMG6R4JjnSZK5uXnDtllnOpkl4S/+IpBr4MDVpz9nupEAYeA/V4/FLa0CrL
         YuJFl02GPODAnkOdSCm9wqkZHGh7W3+o169l7gPtmQoSBWjxih2VMLzqj/ytmDJeMw1j
         u/tmuupARKSvhB/124oqN6u+7Dz6t67lOgGzNc9mTbhgcbEAZvj5KxY1R3sU2rsCRPxG
         q+d+ozktF81FlWd85nlVyr2yWgItUDERqKKK/TTo8v///NGoDZ5R0zFsJVwYMkTN7/t6
         BxVVqd6hgf0NcELx/snCWUdSsaAxLvIujxlqwqjo5m5EzOl+1iZ4Daosdo3TwbAee8rr
         qeOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e12si224843wru.1.2020.03.20.06.41.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 06:41:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,284,1580770800"; 
   d="scan'208";a="343077369"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2020 14:41:30 +0100
Date: Fri, 20 Mar 2020 14:41:30 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Avoid multiple line
 dereference
In-Reply-To: <20200320091413.GA6302@siyah2>
Message-ID: <alpine.DEB.2.21.2003201440310.3039@hadrien>
References: <20200320091413.GA6302@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 20 Mar 2020, Gokce Kuler wrote:

> merge a line -> with a line ending with a sign
>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 74dac74..7d5a50a 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1094,8 +1094,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>  			src_ssid = pmlmepriv->assoc_bssid;
>  			if (!memcmp(dst_ssid, src_ssid, ETH_ALEN)) {
>  				if (check_fwstate(pmlmepriv, _FW_LINKED)) {
> -					if (is_same_network(&pmlmepriv->
> -					    cur_network.network,
> +					if (is_same_network(&pmlmepriv->cur_network.network,
>  					    &pnetwork->network)) {

It's not really ideal to have the second argument so far to the left like
this.  It should be aligned with the right side of the ( after
is_same_network.

julia

>  						_clr_fwstate_(pmlmepriv,
>  							_FW_UNDER_LINKING);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200320091413.GA6302%40siyah2.
>

