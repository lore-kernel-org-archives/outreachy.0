X-GM-THRID: 6950618792247427072
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr26592459ilu.186.1618318774029;
        Tue, 13 Apr 2021 05:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:2184:: with SMTP id j4ls4564327ila.8.gmail; Tue, 13
 Apr 2021 05:59:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJycYgb2csknQKnILS+CnogcbEgkVVlDmw60nRChdV1wIVIMiujW7dFsjRLDJRvcuQvyG7t+
X-Received: by 2002:a05:6e02:118b:: with SMTP id y11mr13806352ili.163.1618318773261;
        Tue, 13 Apr 2021 05:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618318773; cv=none;
        d=google.com; s=arc-20160816;
        b=TLD/BIgWD/JrjsVJlmycNMpk5BbmpHozOq8ap2V1G1cdzppA5NMvvZvfEz3zaqKMJ3
         xjAAsPZWtNnqNU6TC+IXnIyTalszu+l+xma5rnQr9YUR0lnldk2Zf48EV7/qEVtXt9vo
         EkIQRcLI9ubzl8xAiNBxuJSxgliLhOwhk/F6pEJBni6alzLz6I9T3zcYSiB/cJUJLomT
         IAwSVYPdbpSG5YJsmYmlm6cuER6V+q/p7QgsG+fqlavM/gfYTyG/pfQpB8eu+eWKJnbr
         J8AiZ+lPQA7OaQg26uCQH2IwMq/cr0A0d0/edpkS/n6VbMH5QtLX1NMACXf1JsxxMatn
         bOsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UGjKkT8qJP8Jf4th0f8RDt8n/ffhUxzbW5WImOjADcg=;
        b=IT2BnxYZl93xxpBgjTn3RA5WgbGwEhRx2lVB3LF346fwrc8++j2NZBsN33a0BO+Ex8
         jUhXqijGxnmQCbRWRJmzzPaJ41UDzVOxCwuJ4/CeEGr0JYfXfI1RUvGorB//rXf087+T
         0piTohvI1DnD2xF3UWWKtrV78RgvxnpSepQaJz3WwfdvDZk3xU5syy8/uaAL2mGqVqef
         BipJi1cdAO/Ar5SCWzGHI3I2OUQInFbc+myuW9DjK38+teLWb2jCA+7uRlJ/8NHalcXj
         5rAva++Y5IHRNthYLWIFs+HjgCAeIGAA9l76iW3X6EO53R/1e8hFy9nN0iv24+SJhV/0
         2pDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="HRZZp/nN";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n13si803838iop.3.2021.04.13.05.59.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="HRZZp/nN";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 012E0613AE;
	Tue, 13 Apr 2021 12:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618318772;
	bh=aKtum944X7oeenAWgmQgDcJZvTXmMz3gUbpNSPJyU8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HRZZp/nN3mhOQgmRjVbkHRGs0pQ25itch/o9i3kiQepQran+rOaCkj2ah0UN152Z+
	 vxddEeb1ZJJwsgjUmD4xwpwp0RcQnAwqHk5b8rwV9hCZbTeZ9W/Uaa2sBXOVMiu26q
	 h6LKIutVyRa1GZs4DmiaFuMtin+uFB3C66r0l3UE=
Date: Tue, 13 Apr 2021 14:59:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211:
 Replaced strncpy() with strscpy()
Message-ID: <YHWVsahY4nfo9xF/@kroah.com>
References: <20210413123041.24260-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413123041.24260-1-fmdefrancesco@gmail.com>

On Tue, Apr 13, 2021 at 02:30:41PM +0200, Fabio M. De Francesco wrote:
> Replaced strncpy() with strscpy() because of compilation time warnings
> about possible truncation of output [-Wstringop-truncation].

build warnings?  What build warnings?

> Furthermore, according to the Linux official documentation, strscpy() is
> preferred to strncpy.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 25ea8e1b6b65..aa58eedf5e86 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -1385,12 +1385,12 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
>  			 * essid provided by the user.
>  			 */
>  			if (!ssidbroad) {
> -				strncpy(tmp_ssid, ieee->current_network.ssid, IW_ESSID_MAX_SIZE);
> +				strscpy(tmp_ssid, ieee->current_network.ssid, IW_ESSID_MAX_SIZE);

Are you sure you can just replace this like this?


>  				tmp_ssid_len = ieee->current_network.ssid_len;
>  			}
>  			memcpy(&ieee->current_network, net, sizeof(struct ieee80211_network));
>  
> -			strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
> +			strscpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);

Same here, are you sure?

thanks,

greg k-h

