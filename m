X-GM-THRID: 6670848374106750976
X-Received: by 2002:a02:c908:: with SMTP id t8mr4096470jao.59.1553195364166;
        Thu, 21 Mar 2019 12:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls2320904jaa.2.gmail; Thu, 21 Mar
 2019 12:09:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJIF782qcyfpRqFE+ktKHJJm9VG09cfnV2XFrIzzxkiX+7rpZkQCICefHdovA2dBsuL0JI
X-Received: by 2002:a02:1209:: with SMTP id i9mr4156543jad.111.1553195363524;
        Thu, 21 Mar 2019 12:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195363; cv=none;
        d=google.com; s=arc-20160816;
        b=B9LyMSYZvtLvFi/K6kosIYNcDwhD8kbeL7sXeVYkq9w4jtjZKQWZYAlR5xzKsObXZD
         kAeyNQD/ImbVS1Xal/x7cWMiD/uTD+yxt+iLwD2uxcf/wGzen54bHOBXSP3xJUUBptgC
         fFXQKC6TyGplnepkciCsgXMHLufdjsci8MKms1pgoA+H0N+gWs7GqDAb8Tig1kHp/R7R
         v2WUAYs1OmW+hkXws7WKGTC3UrsVrg9rU7uu8W5d1m7TRqrlm9uBOsbgwSZ7g6JJ9ZtG
         oVEyHotS8aUNKCbXl3n/bSUGrTXvF9AZyrwbcmcQmJ4lFhRO4aTR31dvVnUkHI1QUYbb
         zOVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o8Y9aamXjNZGYobfgWZa8TTP8a0n1KZ/xZbyWs/9Gsg=;
        b=SG+D4j7/5jOg45JdrvnOwQFcl/3+xLWw7o1DRvH62TFC3C5ch+sLNVcjaMNZqVTQxh
         M/nOltQYKcHT1WLOVYzMGPwkzM0tuYnmGbV5CkOeRqrof6w0EYAAiHTmnkPheiF9S461
         PDnKbTNsL5pOwZeoishnc3IHSTGEqXq0rzb6mWEDbyfhxm5WuLFtsMWdXazZvKpmonAR
         8AcNOEKp/hKWKdtFSi0E0N6EnBWJyowvmM67uvJc4uVxBp33xqGXrpmcdVdhJAHPZnQv
         R5srX86GuYJmCU6EswabseI8KOPaexjxnm2HyBo4sgE+piqNWqzqziRCFNaDfWyx7Z3r
         JUTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CP5COb9t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j196si568046itb.0.2019.03.21.12.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CP5COb9t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 37D87218D3;
	Thu, 21 Mar 2019 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195362;
	bh=7K8k3ci64BO0wqM/22/yD+Dq/7ijQYcdtdFauLcegBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CP5COb9tAAoBFfyCAT9tP1UAudwi4rczo87J/AZHp9IhUIrkk3UmB09iS4Hwxt3Mu
	 PW631g7uYHjB9jFb4PPYoz8ObKdinIFREC9TmzfTsGqWc5iCwjvPk7NiGr58rAUS2Q
	 xaQBlPTBq7KtFSnC3eCdGmMXgOSmmhRqSUs2aw7g=
Date: Thu, 21 Mar 2019 20:09:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rtl8712: line over 80
 characters
Message-ID: <20190321190904.GA11178@kroah.com>
References: <1553177903-5647-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553177903-5647-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 07:48:23PM +0530, Payal Kshirsagar wrote:
> Fix line over 80 characters issue.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8712/ieee80211.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
> index 2eae11d..4cca739 100644
> --- a/drivers/staging/rtl8712/ieee80211.c
> +++ b/drivers/staging/rtl8712/ieee80211.c
> @@ -238,7 +238,8 @@ unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
>  	return NULL;
>  }
>  
> -unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
> +unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
> +				 int limit)
>  {
>  	return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
>  }

This patch does not apply to my tree :(

