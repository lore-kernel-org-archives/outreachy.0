X-GM-THRID: 6673507471560015872
X-Received: by 2002:a1c:234c:: with SMTP id j73mr99139wmj.19.1553798857179;
        Thu, 28 Mar 2019 11:47:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e2d1:: with SMTP id d17ls496497wrj.8.gmail; Thu, 28 Mar
 2019 11:47:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIXqUwU/OyL5O/TlOyz1ngeFpfkPjPrn2+9z9zlcK5P7Zbr1Bbl97y4zBpvOd1n8RYBkgV
X-Received: by 2002:adf:ebce:: with SMTP id v14mr1082325wrn.20.1553798856424;
        Thu, 28 Mar 2019 11:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553798856; cv=none;
        d=google.com; s=arc-20160816;
        b=PHRsY29d5Lw17+0a4IfCKycCWdb4UVP3Y5x/O/4MDKrkgh7hq6nwTIJqgNSJJxS3tF
         atWaHUxleE2fbTV1O08AbTKuB6L/qNKecymoOHMlmRutAyNhcxyMwuaeCxeAp2GcpEQc
         j7U2I216mGwPwLLGoYDLrm7P0wZNEl3gjYM54iGgS7X7jM8i+NLM4MAYwUp6GvqltyyR
         VDNUnHd3fy2LkyGYWhWPj72vs+XfZ5xtxbUftv5/Dp2IbmZqUzb6Gj96kzQcHIsZbkk/
         9xF8mxhVciGc+Upe+rkvu5aOA1xM/mFTMQalleHRLu1NNzXWZAC7lbdfqIuvAdBiO+Sn
         659A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ApMCYsvG1u2rRHLQa9u/q8bg37ARA/rcUcNtKgTWNvM=;
        b=IQ1RGVIxj2cO5rMc5+cta+2ynEvynsg7s5DhkD5VN828B3N40CLk9lALysBZxzaHo6
         YYR+SqX3KJ49FVTHOpve3bLvdRo9tgP/PrOn/VuQilVeCGiNyctye3dEY/BDrwma1RAz
         d/tugmLNIkwhsPoYU634hAW3Z+fy7O/uuKzHbqa+VLY51GQ1x8iCJF0gekjQ7CoxqzFe
         S4+t+V91SuMbwYs3Y6MMkF1zmR9dor0cssgru2iYakq+cYnToQ+4fg11c0GEyuVCJAJL
         kgwxAgigemK6j+i5am7dAN7hqNnfyoecPSUxeec6PerR8FBOKMnstCVp1oGk9FQIxD25
         tgcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n65si159268wma.1.2019.03.28.11.47.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:47:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,281,1549926000"; 
   d="scan'208";a="376226789"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 19:47:35 +0100
Date: Thu, 28 Mar 2019 19:47:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Avoid unnecessary
 braces around else.
In-Reply-To: <20190328181705.32572-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281947070.2760@hadrien>
References: <20190328181705.32572-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:

> Remove unnecessary brace around else statement.

The braces are indeed unnecessary, but there is no else in this code.

julia


> Issue found using checkpatch.pl
>
> WARNING: braces {} are not necessary for single statement blocks
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index a10c31bce07f..150ba033198f 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1399,9 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
>  	if (ies) {
>  		conn_info->req_ies_len = ies_len;
>  		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
> -		if (!conn_info->req_ies) {
> +		if (!conn_info->req_ies)
>  			return -ENOMEM;
> -		}
>  	}
>
>  	result = wilc_send_connect_wid(vif);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328181705.32572-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

