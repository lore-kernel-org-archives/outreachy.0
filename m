X-GM-THRID: 6249367928124211200
X-Received: by 10.194.171.198 with SMTP id aw6mr4368794wjc.1.1455054859379;
        Tue, 09 Feb 2016 13:54:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.211 with SMTP id m202ls704261wma.1.canary; Tue, 09 Feb
 2016 13:54:18 -0800 (PST)
X-Received: by 10.194.201.234 with SMTP id kd10mr4365818wjc.6.1455054857676;
        Tue, 09 Feb 2016 13:54:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si565107wmw.3.2016.02.09.13.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 13:54:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,423,1449529200"; 
   d="scan'208";a="164105703"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 22:54:16 +0100
Date: Tue, 9 Feb 2016 22:54:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Use kmalloc_array
 instead of kmalloc
In-Reply-To: <20160209235837.GA11402@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602092253580.2066@localhost6.localdomain6>
References: <20160209235837.GA11402@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch used:
> 
> @@
> expression E, F;
> constant FLAG;
> @@
> 
> - kmalloc(E*F, FLAG)
> + kmalloc(E, F, FLAG)

You have the wrong function call in the + case here.

julia

> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 28ad63a..fb344d1 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	bool			bMatchWinStart = false, bPktInBuf = false;
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>  
> -	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
> -			REORDER_WIN_SIZE, GFP_KERNEL);
> +	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
> +			sizeof(struct ieee80211_rxb *), GFP_KERNEL);
>  	if (!prxbIndicateArray)
>  		return;
>  
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209235837.GA11402%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

