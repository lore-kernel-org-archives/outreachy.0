X-GM-THRID: 1670193872896
X-Received: by 10.112.168.104 with SMTP id zv8mr205744lbb.10.1424509935022;
        Sat, 21 Feb 2015 01:12:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.200 with SMTP id de8ls242653wib.26.gmail; Sat, 21 Feb
 2015 01:12:14 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr170171wib.7.1424509934707;
        Sat, 21 Feb 2015 01:12:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si482200wib.1.2015.02.21.01.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 01:12:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,619,1418079600"; 
   d="scan'208";a="122782906"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 10:12:14 +0100
Date: Sat, 21 Feb 2015 10:12:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug().
In-Reply-To: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
References: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:

> For dynamic debugging pr_debug() metod is preferred over printk(), which
> is the raw way to print something. Issue found by checkpatch.pl.

This is a network driver.  See if it could be possible to use netdev_dbg 
instead.

julia

> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..447af93 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
>  	spin_lock_irqsave(&ieee->lock, flags);
>  	ieee80211_crypt_deinit_entries(ieee, 0);
>  	if (!list_empty(&ieee->crypt_deinit_list)) {
> -		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
> +		pr_debug("%s: entries remaining in delayed crypt "
>  		       "deletion list\n", ieee->dev->name);
>  		ieee->crypt_deinit_timer.expires = jiffies + HZ;
>  		add_timer(&ieee->crypt_deinit_timer);
> @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
>  	list_add(&alg->list, &hcrypt->algs);
>  	spin_unlock_irqrestore(&hcrypt->lock, flags);
>  
> -	printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
> +	pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
>  	       ops->name);
>  
>  	return 0;
> @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
>  	spin_unlock_irqrestore(&hcrypt->lock, flags);
>  
>  	if (del_alg) {
> -		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
> +		pr_debug("ieee80211_crypt: unregistered algorithm "
>  		       "'%s'\n", ops->name);
>  		kfree(del_alg);
>  	}
> @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
>  		struct ieee80211_crypto_alg *alg =
>  			(struct ieee80211_crypto_alg *) ptr;
>  		list_del(ptr);
> -		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
> +		pr_debug("ieee80211_crypt: unregistered algorithm "
>  		       "'%s' (deinit)\n", alg->ops->name);
>  		kfree(alg);
>  	}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

