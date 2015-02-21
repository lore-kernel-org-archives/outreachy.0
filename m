X-GM-THRID: 2104888393728
X-Received: by 10.194.86.1 with SMTP id l1mr451402wjz.0.1424552956131;
        Sat, 21 Feb 2015 13:09:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.129 with SMTP id d1ls345480laf.18.gmail; Sat, 21 Feb
 2015 13:09:15 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr465379lbc.22.1424552955216;
        Sat, 21 Feb 2015 13:09:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si373873wic.1.2015.02.21.13.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:09:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122824795"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:09:14 +0100
Date: Sat, 21 Feb 2015 22:09:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comments
 from C99 to C89
In-Reply-To: <1424549883-29082-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212207091.2296@localhost6.localdomain6>
References: <1424549883-29082-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> @@ -195,8 +195,8 @@ void free_ieee80211(struct net_device *dev)
>  {
>  	struct ieee80211_device *ieee = netdev_priv(dev);
>  	int i;
> -	//struct list_head *p, *q;
> -//	del_timer_sync(&ieee->SwBwTimer);
> +	/* struct list_head *p, *q; */
> +/* del_timer_sync(&ieee->SwBwTimer); */

The code shouldn't be moved out to the left.  Indent the comment like on
the line before.

>  	kfree(ieee->pHTInfo);
>  	ieee->pHTInfo = NULL;
>  	RemoveAllTS(ieee);
> @@ -222,24 +222,24 @@ void free_ieee80211(struct net_device *dev)
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
> +	/* IEEE80211_DL_INFO	| */
> +	/* IEEE80211_DL_WX	| */
> +	/* IEEE80211_DL_SCAN	| */
> +	/* IEEE80211_DL_STATE	| */
> +	/* IEEE80211_DL_MGMT	| */
> +	/* IEEE80211_DL_FRAG	| */
> +	/* IEEE80211_DL_EAP	| */
> +	/* IEEE80211_DL_DROP	| */
> +	/* IEEE80211_DL_TX	| */
> +	/* IEEE80211_DL_RX	| */
> +			    /* IEEE80211_DL_QOS    | */
> +	/* IEEE80211_DL_HT	| */
> +	/* IEEE80211_DL_TS	| */
> +/* IEEE80211_DL_BA	| */
> +	/* IEEE80211_DL_REORDER| */
> +/* IEEE80211_DL_TRACE  | */
> +			    /* IEEE80211_DL_DATA	| */
> +			    IEEE80211_DL_ERR	  /* awayls open this flags to show error out */

The indentation should be uniform.  You could make a patch series and fix
the spelling mistake: awayls -> always

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424549883-29082-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

