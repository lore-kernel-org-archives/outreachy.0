X-GM-THRID: 6388328536690655232
X-Received: by 10.223.164.138 with SMTP id g10mr494843wrb.6.1487400119650;
        Fri, 17 Feb 2017 22:41:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.107.3 with SMTP id g3ls547754wmc.26.gmail; Fri, 17 Feb 2017
 22:41:58 -0800 (PST)
X-Received: by 10.28.129.21 with SMTP id c21mr198481wmd.10.1487400118798;
        Fri, 17 Feb 2017 22:41:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si248748wmg.1.2017.02.17.22.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:41:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,173,1484002800"; 
   d="scan'208";a="213865411"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 07:41:57 +0100
Date: Sat, 18 Feb 2017 07:41:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Remove
 typedef to structure _bandwidth_autoswitch
In-Reply-To: <20170218061710.GA24477@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1702180741200.2121@hadrien>
References: <20170218061710.GA24477@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, sayli karnik wrote:

> Using typedef for a structure type is not suggested in Linux kernel coding
> style guidelines. So remove typedef from the _bandwidth_autoswitch structure.

I think you could remove the _ from the front of the name too.  That is
normally to indicate a hidden name, but the name is not hidden any more.

julia

> The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
> it.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 176083e..0df9812 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1461,13 +1461,12 @@ struct tx_pending {
>  	struct ieee80211_txb *txb;
>  };
>
> -typedef struct _bandwidth_autoswitch {
> +struct _bandwidth_autoswitch {
>  	long threshold_20Mhzto40Mhz;
> -	long	threshold_40Mhzto20Mhz;
> +	long threshold_40Mhzto20Mhz;
>  	bool bforced_tx20Mhz;
>  	bool bautoswitch_enable;
> -} bandwidth_autoswitch, *pbandwidth_autoswitch;
> -
> +};
>
>  //added by amy for order
>
> @@ -1873,7 +1872,7 @@ struct ieee80211_device {
>  	Fsync_State			fsync_state;
>  	bool		bis_any_nonbepkts;
>  	//20Mhz 40Mhz AutoSwitch Threshold
> -	bandwidth_autoswitch bandwidth_auto_switch;
> +	struct _bandwidth_autoswitch bandwidth_auto_switch;
>  	//for txpower tracking
>  	bool FwRWRF;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218061710.GA24477%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

