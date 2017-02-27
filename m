X-GM-THRID: 6391852583766458368
X-Received: by 10.223.129.1 with SMTP id 1mr454219wrm.13.1488230724907;
        Mon, 27 Feb 2017 13:25:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.51.21 with SMTP id z21ls1331291wmz.20.gmail; Mon, 27 Feb
 2017 13:25:24 -0800 (PST)
X-Received: by 10.28.196.130 with SMTP id u124mr493542wmf.19.1488230724226;
        Mon, 27 Feb 2017 13:25:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si982279wmf.0.2017.02.27.13.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 13:25:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262318148"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 22:25:23 +0100
Date: Mon, 27 Feb 2017 22:25:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: rtl8192u: Remove
 unnecessary else after return
In-Reply-To: <1488219268-3006-2-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1702272224290.2127@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488219268-3006-2-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, simran singhal wrote:

> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.
>
> This was done using Coccinelle:
>
> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> index 2453413..4d6c928 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
> @@ -374,8 +374,7 @@ static int ieee80211_tkip_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
>
>  	if (!tcb_desc->bHwSec)
>  		return ret;
> -	else
> -		return 0;
> +	return 0;

In contrast to another patch I commented on, it seems likely that here 0
means success.  Converting 0 to false when that is what it means (ie not
here) makes the code more understandable.

julia

