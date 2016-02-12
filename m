X-GM-THRID: 6249367928124211200
X-Received: by 10.182.87.2 with SMTP id t2mr46859829obz.20.1455249500375;
        Thu, 11 Feb 2016 19:58:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls47881igr.4.gmail; Thu, 11 Feb 2016
 19:58:20 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr475627ioe.28.1455249500025;
        Thu, 11 Feb 2016 19:58:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1536259pab.0.2016.02.11.19.58.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:58:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BD728CE3;
	Fri, 12 Feb 2016 03:58:19 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:58:19 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8192u: Use
 kmalloc_array instead of kmalloc
Message-ID: <20160212035819.GA30932@kroah.com>
References: <20160210131912.GA2523@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210131912.GA2523@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 08:19:12AM -0500, Janani Ravichandran wrote:
> Use kmalloc_array instead of kmalloc for arrays. The Coccinelle patch
> for this conversion is:
> 
> @@
> type T;
> expression F;
> constant FLAG;
> @@
> 
> - kmalloc(sizeof(T)*F, FLAG)
> + kmalloc_array(F, sizeof(T), FLAG)
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v3:
>  * Changed RECORDER_WIN_SIZE to REORDER_WIN_SIZE as the former was
>    incorrect.
> 
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
> +	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
> +			sizeof(struct ieee80211_rxb *), GFP_KERNEL);

For "static" allocations like this, where we know the size at compile
time, it doesn't make any sense to call kmalloc_array(), in fact, it
just adds complexity.

sorry,

greg k-h

