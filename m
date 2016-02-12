X-GM-THRID: 6250414511846588416
X-Received: by 10.112.77.169 with SMTP id t9mr301491lbw.8.1455289021654;
        Fri, 12 Feb 2016 06:57:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.73 with SMTP id k70ls374084lfe.22.gmail; Fri, 12 Feb
 2016 06:57:01 -0800 (PST)
X-Received: by 10.112.129.65 with SMTP id nu1mr308382lbb.18.1455289021041;
        Fri, 12 Feb 2016 06:57:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si110235wmw.3.2016.02.12.06.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:57:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202850511"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 15:57:00 +0100
Date: Fri, 12 Feb 2016 15:56:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8192u: ieee80211:
 ieee80211_rx: Replace MSECS with msecs_to_jiffies
In-Reply-To: <20160212144029.GA1317@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602121556370.2510@hadrien>
References: <20160212144029.GA1317@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace driver specific macro MSECS with msecs_to_jiffies().
>
> This was found using the following Coccinelle semantic patch:
>
> //<smpl>
> @@
> expression e;
> @@
>
> - MSECS(e)
> + msecs_to_jiffies(e)
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 28ad63a..9dfde07 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -761,7 +761,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
>  		if(timer_pending(&pTS->RxPktPendingTimer))
>  			del_timer_sync(&pTS->RxPktPendingTimer);
> -		pTS->RxPktPendingTimer.expires = jiffies + MSECS(pHTInfo->RxReorderPendingTime);
> +		pTS->RxPktPendingTimer.expires = jiffies +
> +				msecs_to_jiffies(pHTInfo->RxReorderPendingTime);
>  		add_timer(&pTS->RxPktPendingTimer);

I wonder if this could rather be using mod_timer.

julia

>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212144029.GA1317%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

