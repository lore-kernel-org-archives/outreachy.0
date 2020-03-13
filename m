X-GM-THRID: 6802949681377705984
X-Received: by 2002:a25:d0e:: with SMTP id 14mr3051666ybn.355.1584134624422;
        Fri, 13 Mar 2020 14:23:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls3346988ybi.8.gmail; Fri, 13 Mar
 2020 14:23:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvBFgOJG8Z5V47cKOorpZxjOhztPjBaV68mmq67oEYfodaQgGz0wU6us/4fIyNaBTGdHOo5
X-Received: by 2002:a25:6882:: with SMTP id d124mr19275549ybc.434.1584134622977;
        Fri, 13 Mar 2020 14:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584134622; cv=none;
        d=google.com; s=arc-20160816;
        b=TNouqq5q8Po9ur3a+YFvDI6+zH+nGrQt636DbpVvEVY/ytCczTxg4ubqGfeD1seB28
         wVzTzVcq6JoaV7JxfUmzWx3auith8+SRcNrCi1oJEI7egvpVbzP2UTk0opKKEcmOl8ax
         amngBW0LDABZbYtjgUeYJE+yBLUSxQp5IQYypwed7w0POz92ZFI4eI7Y5ajAQTAq4YCX
         exge94SmDRHnTXIUpSONLSd3zoZnJNnUWmBBnkS76wIOq2tcCl+E+wpA5EjDRVE/WnrQ
         NpGPBIJFTSuKZ2cKSX0T3wP6f1ZcDjrymIcGUZ1oOyT/v1V54SUxRAyojwoR/nJIw2qP
         edXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=OmqvoodscrGQC6WK/zTEif0AaFiJeX2fWz1crSsuRsE=;
        b=BujA3fUqBRpE6ry7NCi1uS8BfQxgHnuKAgGnRoA8p/WeSmm5WbENmoKyBmGU5C+QrP
         JaxJ4QZ1e9K4b7Uw1qHv3imtqAc9nCpW3KvtNhMxNhh2MgJRF2Bbiupkv2GNE1dhzMrm
         zqdLd1w/OPKQPAqBDM8uo9+GDfxy8e50vkwnfyhsUpEIWe2H9G2hHg+OYksF7sZthrnu
         KL/+XSVLlqGjw7WnjYYTXkjaBZPccq/EjKcHsBxS/uW8fdphSfz4LrmCKLMh3tlix8mk
         rmWx2b6v3WYGBX/EgME6Lt7Ejs4dzFM37dOANxAvwWktr5xB74KquTZWI61mbet6I+nA
         K7Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com. [216.40.44.35])
        by gmr-mx.google.com with ESMTPS id e14si209087ybp.0.2020.03.13.14.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:23:42 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.35;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 42BE018017528;
	Fri, 13 Mar 2020 21:23:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2729:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:4225:4250:4321:5007:7903:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12297:12679:12740:12760:12895:13069:13255:13311:13357:13439:13972:14096:14097:14659:14721:21080:21627:21990:30054:30056:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: magic84_5a52c2e86bc2d
X-Filterd-Recvd-Size: 2535
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Fri, 13 Mar 2020 21:23:40 +0000 (UTC)
Message-ID: <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme:
 Remove unnecessary conditions
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Fri, 13 Mar 2020 14:21:57 -0700
In-Reply-To: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
References: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-13 at 15:59 +0530, Shreeya Patel wrote:
> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> Also, remove the unnecessary else-if condition since it does nothing.
[]
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
[]
> @@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  
>  	/* maybe needs check if ap supports rx ampdu. */
>  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
> -		if (pregistrypriv->wifi_spec == 1) {
> -			/* remove this part because testbed AP should disable RX AMPDU */
> -			/* phtpriv->ampdu_enable = false; */
> -			phtpriv->ampdu_enable = true;
> -		} else {
> -			phtpriv->ampdu_enable = true;
> -		}
> -	} else if (pregistrypriv->ampdu_enable == 2) {
> -		/* remove this part because testbed AP should disable RX AMPDU */
> -		/* phtpriv->ampdu_enable = true; */
> +		phtpriv->ampdu_enable = true;

This isn't the same test.

This could be:
 	if ((!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1)) ||
	    pregistrypriv->ampdu_enable == 2)
		phtpriv->ampdu_enable = true;

Though it is probably more sensible to just set
phtpriv->ampdu_enable without testing whether or
not it's already set:

	if (pregistrypriv->ampdu_enable == 1 ||
	    pregistrypriv->ampdu_enable == 2)
		phtpriv->ampdu_enable = true;



