X-GM-THRID: 6528705081880084480
X-Received: by 10.55.163.77 with SMTP id m74mr10388346qke.29.1520231722630;
        Sun, 04 Mar 2018 22:35:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.40.247 with SMTP id j52ls9106308qtj.9.gmail; Sun, 04 Mar
 2018 22:35:21 -0800 (PST)
X-Received: by 10.200.51.85 with SMTP id u21mr10436049qta.12.1520231721271;
        Sun, 04 Mar 2018 22:35:21 -0800 (PST)
Received: by 10.55.73.135 with SMTP id w129msqka;
        Sun, 4 Mar 2018 17:57:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELvWQJhPoyP9ROAt4q170duVRH0LM123XyzBlp2Rl+3HbBMP+dT82p7H7ChcNUY3GmeE+JW7
X-Received: by 10.200.50.204 with SMTP id a12mr9732147qtb.39.1520215037824;
        Sun, 04 Mar 2018 17:57:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520215037; cv=none;
        d=google.com; s=arc-20160816;
        b=aSq1+5w8BqT4k2OmxZH7mEbxtKmDQbCNeEiyE6anm75FrxpkLkmCFO++r2L74w9IGI
         6Npjg7uNOx1+aiCr8rAozpd0O8K7asFtyxVH5lJs0JzOmCWmSOdSZrUz2ZQdimeCchrn
         iv8FhgkZ40gjNHut/gfhVY5hC3uRDzDkkQbYWfXn+RLXTjdTB6c36+yWpMyDCxsJAMKA
         0c6V8QHOlcTwOFoXs9s/aUBNdD+Zx3n/kASbiRVGe0nonAQCpl82fIoSmfLG/IRQq7jI
         VbI2a6o4rATg/7AEDUSJBXs18J/4z5YT6rzDEk2aIP4nUSd/el8qYGYl0/KAYWvZnpqA
         Bi+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=BU7RsmZupkUe75oebmaixL8G1y3csUrVmnPrFnpZPao=;
        b=IL/ZFaoIRhjAWGvf7Ig5OX2Z0zclJtPJAU8BusiDvmdUuIbbDDJbLcvyskzeZVT8M2
         aKOiGyNWPxmPoWoq9rlbrjykHWzHGCisMJddD13ejaQ3Qz/iNEG/SKuOjAsViqb++rqX
         eNYU8XEPeusDaBr6j/Q/UZBiwZ8Qu49JLO3nQ3vcBWNDwG+NI/pCzz0uk+YYVhJZmvEr
         JTk7zkUWonm/E6OIYOU1h3Gde3Ws0UKDr/xWbVq/nQbiXJ8GJsklYLLxP55Y2rKN3rur
         K6hmkGt7SN70HJh+kZLDpEuftgm3j3D9KlOqIfiKayPus08Dd7GP//sJce30ppSWtmSK
         Y+Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=18TOPH3+;
       spf=neutral (google.com: 2607:f8b0:400d:c09::232 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
Return-Path: <jakub.kicinski@netronome.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id f40si852201qta.5.2018.03.04.17.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 17:57:17 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400d:c09::232 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=18TOPH3+;
       spf=neutral (google.com: 2607:f8b0:400d:c09::232 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
Received: by mail-qk0-x232.google.com with SMTP id w142so18840776qkb.8
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 17:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=BU7RsmZupkUe75oebmaixL8G1y3csUrVmnPrFnpZPao=;
        b=18TOPH3+9EKU2bERLnaxQjLkaC3g9Yw0y0mjITxi0ZaPrgoKFEp38v00lkgTantG29
         03U/pTuNtgsZQLABH+8WfVdzYmrd66GKG1kMa5yLsmS8BXMuC4VzjyWG/FTSh/eocFtd
         oX78F4RqXXaUTajPpjAIkpU8H3AScFrLQWEfdPOPT1pAbZ6J772o8rF+xEwpJN60w87P
         GpQPIi2LgJL5yyj/xlpH7FbZfDI0m/Ro1iHdSPxhFBVGAzEeyOoESdnceJbmG8/lyyJ8
         d0QlLfkG0FvwppBUZHx9Y+gLK6PpjtjpvqHpP1A3HYLjBg51tjHRT6OIXUW4EaK97ptR
         t8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=BU7RsmZupkUe75oebmaixL8G1y3csUrVmnPrFnpZPao=;
        b=E4ac6t838Cm7p8DC7MLc68Jo1biDkMTvY3515I7g1gES/qnjFpo+FlSc+bBn2yL5qN
         uOfrWRVYWDWfyC5bxMR9Ht1QwEv28dJcyU8XtXIre56gFQdCFzL6ayaKN3O90WpgKLFl
         9LPOkK+QhiW+MfjhSuN6SP/k9+b3BNfvP0xwQAetCp38TxfMWk+1APJ2cDzshumgQiVG
         vmXHuargX8seEiBLiu+QBUWH/YqISNEsCln/gPpRPsIntIg3RFs/J9vZP8PRKtJQZNxb
         KkYffmQerwZhLY//0Ur75yOGk57VZS/E29wJWNeHFm1ndwtPyEicjr5cjbUZAG+akD6T
         NFtg==
X-Gm-Message-State: AElRT7H1+pcN2GcyefzQa6E6FqJbIRJIvZ0+W0iSe8FNsDxLWrIDedka
	fK/DeHKkdyr8GAuZir+0E1nZcn9V
X-Received: by 10.55.136.129 with SMTP id k123mr18992917qkd.296.1520215037608;
        Sun, 04 Mar 2018 17:57:17 -0800 (PST)
Return-Path: <jakub.kicinski@netronome.com>
Received: from cakuba.netronome.com ([75.53.12.129])
        by smtp.gmail.com with ESMTPSA id p25sm8714788qte.29.2018.03.04.17.57.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 04 Mar 2018 17:57:17 -0800 (PST)
Date: Sun, 4 Mar 2018 17:57:13 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: jdmason@kudzu.us, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 oss-drivers@netronome.com, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] net: ethernet: Drop unnecessary continue
Message-ID: <20180304175713.25a44ac6@cakuba.netronome.com>
In-Reply-To: <20180303161456.GA20194@seema-Inspiron-15-3567>
References: <20180303161456.GA20194@seema-Inspiron-15-3567>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 3 Mar 2018 21:44:56 +0530, Arushi Singhal wrote:
> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> index 15fa47f..5cd4f3f 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_main.c
> @@ -258,10 +258,8 @@ nfp_net_pf_alloc_vnics(struct nfp_pf *pf, void __iomem *ctrl_bar,
>  		ctrl_bar += NFP_PF_CSR_SLICE_SIZE;
>  
>  		/* Kill the vNIC if app init marked it as invalid */
> -		if (nn->port && nn->port->type == NFP_PORT_INVALID) {
> +		if (nn->port && nn->port->type == NFP_PORT_INVALID)
>  			nfp_net_pf_free_vnic(pf, nn);
> -			continue;
> -		}

This is an error handling path so the continue makes sense here to
indicate the processing can't ever fall through if more statements are
ever added to the loop.  But OK.

>  	}
>  
>  	if (list_empty(&pf->vnics))

