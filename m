X-GM-THRID: 6529360493201588224
X-Received: by 10.25.233.93 with SMTP id g90mr1280753lfh.16.1520337906448;
        Tue, 06 Mar 2018 04:05:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.79 with SMTP id l76ls2029969lfe.1.gmail; Tue, 06 Mar
 2018 04:05:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELtkJVPUgRVxS/3B104IUaCX2HRQvNYitkT5dhFK/Bcq9FS7qgkcCZlEZoD42PsjN7ooyNMa
X-Received: by 10.25.56.12 with SMTP id f12mr1330394lfa.11.1520337904933;
        Tue, 06 Mar 2018 04:05:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520337904; cv=none;
        d=google.com; s=arc-20160816;
        b=HnBDZb1wXV3PuYRQ5TFuPr2iamAuLjkrgWX0m8tfQIuESH7T9+yYDI0jxQ5zCzfQp/
         6u14PN5/zCYTO2L8xxR+JY9C1yZm4b0l02+VlZv0tFSc7iAaXsbh1k2sCGGbGHBOcMt4
         FG8aVqzA4VPc9EjWZ5i+XkZ5smSuP6O/YrFHrMaR5H/wLyvFd8yx8lah9Q9UpYoJm4ak
         fUWlsJJdFE/Jt1RpwziCtdZGOXuHb85QJ/1b1RZAe7lYaHDlCLN4UqbSdyjQYtiU9eqi
         qwAPYinfhO+D+aszrymRfDxwS+s7bsc8Trx8lMYK0besz04x0CZKuAanuP8YqkSYL50h
         hCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=f+50vFtpY5Y/ZrmDmxcp+4vOrnTCNev5sU+orCnuUQQ=;
        b=d4On70uBWU8aCUqJIeEInXbVu+2UZLcGSIewcpQzQDPV73AonfbYXkWVeqromnFUBZ
         RFze0M+VgQX9IA3Rjw0jx+ZHtP9SbXH+6pj5tpbuSdz+tYsxsASDMGHWU3Kgt1950bdm
         Fn3CPjorrnjfQIbEs8GhauFE81l+1y4Ka3fI10CzOyJqwPMiq6888GbkfgpxpR8fuYM5
         nQELMcLXRC4l6JdEmxI1joZQCqbgWjLasIxgpgIQlMNJQnxDgxHj0jSqGb8GackN9HNy
         pHX3DmzNOn/Ef7Ds4BhnyCKOgAWRCnDx5SRXrRNU6O+u3mqr+sKS6uqDD+ks6XSescCm
         gdsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m18si552108lfj.0.2018.03.06.04.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 04:05:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.236.200.248])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EEBA31155;
	Tue,  6 Mar 2018 12:05:02 +0000 (UTC)
Date: Tue, 6 Mar 2018 04:05:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Subject: Re: [PATCH v2] staging: rtl8192u: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180306120506.GA26600@kroah.com>
References: <20180305073256.GA4347@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180305073256.GA4347@seema-Inspiron-15-3567>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 05, 2018 at 01:02:56PM +0530, Arushi Singhal wrote:
> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
> Indentation is also changed, to fix the  checkpatch issue if line is not
> exceding 80 characters.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *change the subject line, in v1 driver name was wrong.
> 
>  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> index e6648f7..200fe5f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
>  
>  	priv->tfm = (void *)crypto_alloc_cipher("aes", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not allocate crypto API aes\n");
> +		net_dbg_ratelimited("ieee80211_crypt_ccmp: could not allocate crypto API aes\n");

Why would this need to be ratelimited at all?

Same for the other changes in this file.  Only use the _ratelimited()
calls if the message can be triggered a lot.

> @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
> -				hdr->addr2);
> +			net_dbg_ratelimited("CCMP: received packet without ExtIV flag from %pM\n",
> +					    hdr->addr2);

Also, "ratelimit" is already checked right above this, so that's a hint
you don't need to check it again :)

thanks,

greg k-h

