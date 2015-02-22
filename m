X-GM-THRID: 1779965100032
X-Received: by 10.112.9.65 with SMTP id x1mr477261lba.16.1424609547968;
        Sun, 22 Feb 2015 04:52:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls380876lad.87.gmail; Sun, 22 Feb
 2015 04:52:27 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr389465lbb.18.1424609547457;
        Sun, 22 Feb 2015 04:52:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si476592wic.1.2015.02.22.04.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 04:52:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="122869644"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 13:52:27 +0100
Date: Sun, 22 Feb 2015 13:52:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix do not use //
 c99 comments.
In-Reply-To: <1424609406-6259-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221351190.2612@hadrien>
References: <1424609406-6259-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes "do not use // C99 comments" errors in ieee80211_module.c

I believe that someone else has already made these changes.

julia

>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> index afbd09d..d8900dd 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> @@ -31,7 +31,7 @@
>  *******************************************************************************/
>
>  #include <linux/compiler.h>
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */
>  #include <linux/errno.h>
>  #include <linux/if_arp.h>
>  #include <linux/in6.h>
> @@ -141,7 +141,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	spin_lock_init(&ieee->wpax_suitlist_lock);
>  	spin_lock_init(&ieee->bw_spinlock);
>  	spin_lock_init(&ieee->reorder_spinlock);
> -	//added by WB
> +	/* added by WB */
>  	atomic_set(&(ieee->atm_chnlop), 0);
>  	atomic_set(&(ieee->atm_swbw), 0);
>
> @@ -153,7 +153,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	ieee->ieee802_1x = 1;
>  	ieee->raw_tx = 0;
>  	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
> -	ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
> +	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
>
>  	ieee80211_softmac_init(ieee);
>
> @@ -164,7 +164,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  		goto failed;
>  	}
>  	HTUpdateDefaultSetting(ieee);
> -	HTInitializeHTInfo(ieee); //may move to other place.
> +	HTInitializeHTInfo(ieee); /* may move to other place. */
>  	TSInitialize(ieee);
>
>  	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
> @@ -176,7 +176,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	  ieee->last_packet_time[i] = 0;
>  	}
>
> -//These function were added to load crypte module autoly
> +/* These function were added to load crypte module autoly */
>  	ieee80211_tkip_null();
>  	ieee80211_wep_null();
>  	ieee80211_ccmp_null();
> @@ -195,7 +195,7 @@ void free_ieee80211(struct net_device *dev)
>  {
>  	struct ieee80211_device *ieee = netdev_priv(dev);
>  	int i;
> -	//struct list_head *p, *q;
> +	/* struct list_head *p, *q; */
>  //	del_timer_sync(&ieee->SwBwTimer);
>  	kfree(ieee->pHTInfo);
>  	ieee->pHTInfo = NULL;
> @@ -239,7 +239,7 @@ static int debug = \
>  	//		    IEEE80211_DL_REORDER|
>  //			    IEEE80211_DL_TRACE  |
>  			    //IEEE80211_DL_DATA	|
> -			    IEEE80211_DL_ERR	  //awayls open this flags to show error out
> +			    IEEE80211_DL_ERR	  /* awayls open this flags to show error out */
>  			    ;
>  static struct proc_dir_entry *ieee80211_proc;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424609406-6259-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

