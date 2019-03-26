X-GM-THRID: 6672747924702625792
X-Received: by 2002:adf:ef50:: with SMTP id c16mr143953wrp.24.1553621461543;
        Tue, 26 Mar 2019 10:31:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ef1a:: with SMTP id n26ls2628822wmh.6.gmail; Tue, 26 Mar
 2019 10:31:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwbwdb+x8RMRQv2sUQF58dGXvx8pno+HzqXqFHz3agc8tnfa8frG/Rb/HJVDp+7daMswsI
X-Received: by 2002:a7b:ce0e:: with SMTP id m14mr152141wmc.13.1553621460712;
        Tue, 26 Mar 2019 10:31:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621460; cv=none;
        d=google.com; s=arc-20160816;
        b=nk0IzPmAEb4/i/2IOwScMzayC6NrTPlARLxj7US94zydyZPkLD0hPsJZiU0496jxd+
         ep0dTE9kcBC01ha4L2jHEQC0yEkWhjDPMYCzk8Zaeqo/HD4aTUINOOWO1jd5iINQqk5N
         +IHUgQb/RFYIKXveOHcXpUJXINjXpc0mPMvcVKdsOMODzO26zD2TND6mV7ra/nyUR5wu
         eFHKz+GMO/hMLh9QFHrrvaBR69p/hSuzaBsKg4Wb05/9f+7IpPCiVoV/xQwPPzFCfujW
         jyTHQGnPdfF+NDb+9c2/cU3ML6tdp/b2yhrgQaNmZzFmrF0TohmEzADfebAPSt4Cj3Ml
         6AUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GEQYyDhg+xZkT/TGNQTjRNb33j/P3IYYd5SqKUkR0fw=;
        b=L4BYyQ19j+5WksZXpxLN5SmWqcvlSDlsmwftH3KFu7XGDJUNFVdRkq8d5NTx+Yd8eI
         0VTwou1HM8+sFlDIhqfrfcP4uS5yrWTlbkHrrT41mVs6Rfqprt8RCT2lWgHsfolH+6f4
         lj5h+tVXLtxk7umkkdd690/DjkyIyaxytHn41SICmg9r/fArXpMRNyAq0V5VY1wsli7c
         /qjc0fCc4b/BI/BB0qU2kbtrjnmgmB2k4IZL1zNE01sOESCZZrAHfOdCw/+UkHAUJOhw
         ZPTxU1NUcGqVTHE0pq0fWDlt8aakHyrQctLTsELNSqchJJ/rvn+fbONSyHSiAclUlCWX
         EVug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5si1179861wrj.0.2019.03.26.10.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:31:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,273,1549926000"; 
   d="scan'208";a="375874184"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2019 18:31:00 +0100
Date: Tue, 26 Mar 2019 18:30:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove typedef
 for struct.
In-Reply-To: <20190326170942.19974-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903261828030.6419@hadrien>
References: <20190326170942.19974-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
>
> Linux kernel coding style guidelines suggest not using typedefs for
> structure.
> The following Coccinelle semantic patch detects the cases for struct
> type:
>
> @tn@
> identifier i;
> type td;
> @@
>
> -typedef
>  struct i { ... }
> -td
>  ;
>
> @@
> type tn.td;
> identifier tn.i;
> @@
>
> -td
> + struct i

It is suspicious that you have a change to a typedef, but no changes to
uses.  I see that you have a rule for taking case of the uses, which is a
good idea, but Coccinelle may not be looking at the .c file that uses the
type and the .h file at the same time.  Did you check that ieee_param
doesn't currently appear anywhere without struct in front of it?
Compiling the driver is a good test, but it is good to ceck with grep as
well, in case there are some uses that are not getting compipled in your
configuration.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 8aa536d79900..48b5088e1fef 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -296,7 +296,7 @@ struct cb_desc {
>  #define ieee80211_wx_get_encode_ext	ieee80211_wx_get_encode_ext_rsl
>
>
> -typedef struct ieee_param {
> +struct ieee_param {
>  	u32 cmd;
>  	u8 sta_addr[ETH_ALEN];
>  	union {
> @@ -323,7 +323,7 @@ typedef struct ieee_param {
>  			u8 key[0];
>  		} crypt;
>  	} u;
> -} ieee_param;
> +};
>
>
>  // linux under 2.6.9 release may not support it, so modify it for common use
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190326170942.19974-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

