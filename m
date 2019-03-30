X-GM-THRID: 6673442126229929984
X-Received: by 2002:a2e:910d:: with SMTP id m13mr1423232ljg.30.1553928192375;
        Fri, 29 Mar 2019 23:43:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4ac1:: with SMTP id m1ls406084lfp.12.gmail; Fri, 29 Mar
 2019 23:43:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvHcV+m/mlHu/Wffhn4dAqU3SaV51L7b9bTL1LFat7jV4kSnDFvYZ9Y+FqAKSbnqeAzGYO
X-Received: by 2002:ac2:5463:: with SMTP id e3mr1374035lfn.6.1553928191612;
        Fri, 29 Mar 2019 23:43:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553928191; cv=none;
        d=google.com; s=arc-20160816;
        b=BQsRfsXWUsOt48tZjICHfkFQuy60n1hBX77DxoZcJ5totR0AaSDp566UhHvvI/ell2
         PnJKf6GFtgtIigGV0IGh1xSV0Lg9fZ0ep7dZUx4bdmecphNo/49aG3ekV1+Q+fBBu8vL
         BSphjR5syOgOQy0/7ypE8XMcNB4HHaTKc/Kp3EFKdt9xZWe3utkK9wGmmsxacPAfc173
         FtPY/RuBZVW5BFsKrs5NG6inMpK8zmQv/lAIWX56LrAelcs8N0Eoene5b4H3OuMNsmMI
         pb7UdWoXGjjMPqGEmyob/r69CJnrlL+Xs0xSPzyR4nh9EvdZnv+JzaTv38GIVKerUqIu
         pWSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7pLndQLsHTv/M8YdhCVEpJmZQZaA6XgLFEZ86FVp29A=;
        b=aOHycZiF3gm0n0kiJFilAd1o/n71pRzragZXRod/TCGnGuNGHys92aY5YE9ZgE9RKn
         Y73g6TdZJvvSRFOm70PmcoAekFksYaljsVjiCyogt5BQ/a6+y+9P9J95uzsQf9IaBn1Q
         Un+lSjjIhYCKKSgAziv/YtdRyJm/kh8jgGyyx/CMrQRii3vtQICkk30LN9Q/5HtDvK6H
         QoJ8G4qYESWXKmFs5tjN17s+1VkHBdW8x1+wJCldREAgngzChTL+HoRwzWwTJSapYAYy
         MZ2Ysgy5GSRXwz4jA4Eg3zpwuT85a8Z5oxrF5GB8Ckt2MLZADpFr5tZmTpiaoE7w4gmV
         7Xlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o16si241550lji.0.2019.03.29.23.43.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 23:43:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,287,1549926000"; 
   d="scan'208";a="376435379"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 07:43:10 +0100
Date: Sat, 30 Mar 2019 07:43:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/8] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
In-Reply-To: <c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903300742280.2817@hadrien>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com> <c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Remove unnecessary parentheses around an expression and fix identation
> issue.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 8fb03ef..e43ad33 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>          if (pPMK->cmd == IW_PMKSA_ADD) {
>                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> -                    return(intReturn);
> +			return intReturn;
>                  else
>                      intReturn = true;

I think you could really make another patch in the series for the
indentation issue and fix up both branches of the if.  It looks a bit odd
now.

julia

>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

