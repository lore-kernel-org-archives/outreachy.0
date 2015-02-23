X-GM-THRID: 2517133950976
X-Received: by 10.50.23.75 with SMTP id k11mr13042454igf.3.1424720985866;
        Mon, 23 Feb 2015 11:49:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.74 with SMTP id m71ls1703063iom.109.gmail; Mon, 23 Feb
 2015 11:49:45 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr13659130pac.37.1424720985653;
        Mon, 23 Feb 2015 11:49:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x236.google.com (mail-qa0-x236.google.com. [2607:f8b0:400d:c00::236])
        by gmr-mx.google.com with ESMTPS id e5si3607477qcg.1.2015.02.23.11.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) client-ip=2607:f8b0:400d:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f54.google.com with SMTP id x12so23807361qac.13
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=k5WAz0SccnOQylkl6Iq8yp/oSgYoFer2AC1eNUluR1Q=;
        b=EUK1aopFAXXf/fgnWCirlXgHMbtFsab+/Qk5oPZHCLBCOgCAtHFKZ6329bAjTW2/Oh
         5m9ERPAGbErxjplddE32dCOR4gPk+4P0qyeijGkerqoPhJnr7z50kg8mYK0u8FJTqYBE
         qqG57OrO/+1i0pmfrkyyZPnF/RZFwndkqmXKNF1AGGR5oge+G/fvCzJAfv/T1B84QWsa
         EFcUS0VzLAaqDW36A1J9DtzqVMEYDp4hi5AXD+/ehsBnVFHeuEZSAqaANpfyeVArIUV0
         VSH91/u0x5+fFzAadAUbJ+RPRloFL9vYs4PiekRu4MN4uYgJC7uySCtEX73PH1rwoWsE
         m9FQ==
X-Received: by 10.140.98.35 with SMTP id n32mr19123151qge.62.1424720985505;
        Mon, 23 Feb 2015 11:49:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id f20sm10862425qax.37.2015.02.23.11.49.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:49:44 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8457.3010108@gmail.com>
Date: Mon, 23 Feb 2015 14:49:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8192u: Fix quoted
 string split across lines.
References: <cover.1424683659.git.navyasri.tech@gmail.com> <6583fe4c851d1364e66448ecf733b693200f56d0.1424683660.git.navyasri.tech@gmail.com>
In-Reply-To: <6583fe4c851d1364e66448ecf733b693200f56d0.1424683660.git.navyasri.tech@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 04:54, Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: quoted string split across lines
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v3:
>     -None in this patch.
>     
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 0aed175..c81193b 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
>  	spin_lock_irqsave(&ieee->lock, flags);
>  	ieee80211_crypt_deinit_entries(ieee, 0);
>  	if (!list_empty(&ieee->crypt_deinit_list)) {
> -		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
> -		       "deletion list\n");
> +		netdev_dbg(ieee->dev,
> +		   "entries remaining in delayed crypt deletion list\n");

The principle of your changes is good, but you need to get the
indentation right. If you put an argument to a function on the next
line, it needs to line up with the first argument of the function.

	netdev_dbg(foo,
		   very_long_argument_that_should_not_break_lines);

This is the same in all the cases below as well.

Jes


>  		ieee->crypt_deinit_timer.expires = jiffies + HZ;
>  		add_timer(&ieee->crypt_deinit_timer);
>  	}
> @@ -146,8 +146,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
>  	spin_unlock_irqrestore(&hcrypt->lock, flags);
>  
>  	if (del_alg) {
> -		pr_debug("ieee80211_crypt: unregistered algorithm "
> -		       "'%s'\n", ops->name);
> +		pr_debug("ieee80211_crypt: unregistered algorithm '%s'\n",
> +		     ops->name);
>  		kfree(del_alg);
>  	}
>  
> @@ -232,8 +232,8 @@ void __exit ieee80211_crypto_deinit(void)
>  		struct ieee80211_crypto_alg *alg =
>  			(struct ieee80211_crypto_alg *) ptr;
>  		list_del(ptr);
> -		pr_debug("ieee80211_crypt: unregistered algorithm "
> -		       "'%s' (deinit)\n", alg->ops->name);
> +		pr_debug("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
> +		     alg->ops->name);
>  		kfree(alg);
>  	}
>  
> 


