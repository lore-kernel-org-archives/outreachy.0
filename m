X-GM-THRID: 1969702830080
X-Received: by 10.180.39.164 with SMTP id q4mr357892wik.5.1424542493314;
        Sat, 21 Feb 2015 10:14:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.163 with SMTP id dd3ls301942wib.18.gmail; Sat, 21 Feb
 2015 10:14:53 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr394499wjc.3.1424542492998;
        Sat, 21 Feb 2015 10:14:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si342476wib.2.2015.02.21.10.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 10:14:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100865272"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 19:14:52 +0100
Date: Sat, 21 Feb 2015 19:14:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] staging: rtl8192u: [PATCH v2 1/4] Convert
 from printk into netdev_dbg or pr_dbg
In-Reply-To: <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211914380.2480@hadrien>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:

> As this is a network driver file, convert printk(KERN_DEBUG.. ) to
> netdev_dbg if the calling function has arguments to support it else
> to pr_dbg , to fix the checkpatch.pl warning:

Much better, thanks.

julia

> WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
> pr_debug(...  to printk(KERN_DEBUG ...
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>     - Correct the commit message to be clearer.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..e517e81 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
>  	spin_lock_irqsave(&ieee->lock, flags);
>  	ieee80211_crypt_deinit_entries(ieee, 0);
>  	if (!list_empty(&ieee->crypt_deinit_list)) {
> -		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
> -		       "deletion list\n", ieee->dev->name);
> +		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
> +		       "deletion list\n");
>  		ieee->crypt_deinit_timer.expires = jiffies + HZ;
>  		add_timer(&ieee->crypt_deinit_timer);
>  	}
> @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
>  	list_add(&alg->list, &hcrypt->algs);
>  	spin_unlock_irqrestore(&hcrypt->lock, flags);
>
> -	printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
> +	pr_dbg("ieee80211_crypt: registered algorithm '%s'\n",
>  	       ops->name);
>
>  	return 0;
> @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
>  	spin_unlock_irqrestore(&hcrypt->lock, flags);
>
>  	if (del_alg) {
> -		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
> +		pr_dbg("ieee80211_crypt: unregistered algorithm "
>  		       "'%s'\n", ops->name);
>  		kfree(del_alg);
>  	}
> @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
>  		struct ieee80211_crypto_alg *alg =
>  			(struct ieee80211_crypto_alg *) ptr;
>  		list_del(ptr);
> -		printk(KERN_DEBUG "ieee80211_crypt: unregistered algorithm "
> +		pr_dbg("ieee80211_crypt: unregistered algorithm "
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

