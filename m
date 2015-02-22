X-GM-THRID: 2063631122432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfa74777ed570cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.219.102 with SMTP id pn6mr120377lbc.12.1424619256185;
        Sun, 22 Feb 2015 07:34:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls471286lah.33.gmail; Sun, 22 Feb
 2015 07:34:15 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr788220lbb.13.1424619255661;
        Sun, 22 Feb 2015 07:34:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si690067wia.0.2015.02.22.07.34.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 07:34:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="100916604"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 16:34:15 +0100
Date: Sun, 22 Feb 2015 16:34:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Convert
 comments from C99 to C89 style
In-Reply-To: <b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221633300.2612@hadrien>
References: <cover.1424618906.git.ksenija.stanojevic@gmail.com> <b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Ksenija Stanojevic wrote:

> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: Remove linux/config.h because it is not used in modern linux versions.

Actually, the choice about what to do with linux/config.h should be above
the ---

julia

>  .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> index afbd09d..4d6bd2e 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> @@ -31,7 +31,6 @@
>  *******************************************************************************/
>
>  #include <linux/compiler.h>
> -//#include <linux/config.h>
>  #include <linux/errno.h>
>  #include <linux/if_arp.h>
>  #include <linux/in6.h>
> @@ -141,7 +140,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	spin_lock_init(&ieee->wpax_suitlist_lock);
>  	spin_lock_init(&ieee->bw_spinlock);
>  	spin_lock_init(&ieee->reorder_spinlock);
> -	//added by WB
> +	/* added by WB */
>  	atomic_set(&(ieee->atm_chnlop), 0);
>  	atomic_set(&(ieee->atm_swbw), 0);
>
> @@ -152,8 +151,8 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	ieee->privacy_invoked = 0;
>  	ieee->ieee802_1x = 1;
>  	ieee->raw_tx = 0;
> -	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
> -	ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
> +	/* ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead. */
> +	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
>
>  	ieee80211_softmac_init(ieee);
>
> @@ -164,7 +163,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  		goto failed;
>  	}
>  	HTUpdateDefaultSetting(ieee);
> -	HTInitializeHTInfo(ieee); //may move to other place.
> +	HTInitializeHTInfo(ieee); /* may move to other place. */
>  	TSInitialize(ieee);
>
>  	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
> @@ -176,7 +175,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>  	  ieee->last_packet_time[i] = 0;
>  	}
>
> -//These function were added to load crypte module autoly
> +/* These function were added to load crypte module autoly */
>  	ieee80211_tkip_null();
>  	ieee80211_wep_null();
>  	ieee80211_ccmp_null();
> @@ -195,8 +194,8 @@ void free_ieee80211(struct net_device *dev)
>  {
>  	struct ieee80211_device *ieee = netdev_priv(dev);
>  	int i;
> -	//struct list_head *p, *q;
> -//	del_timer_sync(&ieee->SwBwTimer);
> +	/* struct list_head *p, *q; */
> +     /* del_timer_sync(&ieee->SwBwTimer); */
>  	kfree(ieee->pHTInfo);
>  	ieee->pHTInfo = NULL;
>  	RemoveAllTS(ieee);
> @@ -222,24 +221,25 @@ void free_ieee80211(struct net_device *dev)
>
>  u32 ieee80211_debug_level;
>  static int debug = \
> -	//		    IEEE80211_DL_INFO	|
> -	//		    IEEE80211_DL_WX	|
> -	//		    IEEE80211_DL_SCAN	|
> -	//		    IEEE80211_DL_STATE	|
> -	//		    IEEE80211_DL_MGMT	|
> -	//		    IEEE80211_DL_FRAG	|
> -	//		    IEEE80211_DL_EAP	|
> -	//		    IEEE80211_DL_DROP	|
> -	//		    IEEE80211_DL_TX	|
> -	//		    IEEE80211_DL_RX	|
> -			    //IEEE80211_DL_QOS    |
> -	//		    IEEE80211_DL_HT	|
> -	//		    IEEE80211_DL_TS	|
> -//			    IEEE80211_DL_BA	|
> -	//		    IEEE80211_DL_REORDER|
> -//			    IEEE80211_DL_TRACE  |
> -			    //IEEE80211_DL_DATA	|
> -			    IEEE80211_DL_ERR	  //awayls open this flags to show error out
> +			 /* IEEE80211_DL_INFO	| */
> +			 /* IEEE80211_DL_WX	| */
> +			 /* IEEE80211_DL_SCAN	| */
> +			 /* IEEE80211_DL_STATE	| */
> +			 /* IEEE80211_DL_MGMT	| */
> +			 /* IEEE80211_DL_FRAG	| */
> +			 /* IEEE80211_DL_EAP	| */
> +			 /* IEEE80211_DL_DROP	| */
> +			 /* IEEE80211_DL_TX	| */
> +			 /* IEEE80211_DL_RX	| */
> +			 /* IEEE80211_DL_QOS    | */
> +			 /* IEEE80211_DL_HT	| */
> +			 /* IEEE80211_DL_TS	| */
> +			 /* IEEE80211_DL_BA	| */
> +			 /* IEEE80211_DL_REORDER| */
> +			 /* IEEE80211_DL_TRACE  | */
> +			 /* IEEE80211_DL_DATA	| */
> +			    IEEE80211_DL_ERR	  /* awayls open this flags
> +						   * to show error out */
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

