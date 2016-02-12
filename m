X-GM-THRID: 6250332404581400576
X-Received: by 10.66.244.171 with SMTP id xh11mr717408pac.32.1455274642086;
        Fri, 12 Feb 2016 02:57:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.2.23 with SMTP id 23ls364782ioc.58.gmail; Fri, 12 Feb 2016
 02:57:21 -0800 (PST)
X-Received: by 10.98.72.199 with SMTP id q68mr724414pfi.14.1455274641624;
        Fri, 12 Feb 2016 02:57:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 79si1679612pft.0.2016.02.12.02.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:57:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="202807263"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 11:57:19 +0100
Date: Fri, 12 Feb 2016 11:57:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 MSEC macro with msecs_to_jiffies
In-Reply-To: <20160212092152.GA26927@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602121157010.2055@localhost6.localdomain6>
References: <20160212092152.GA26927@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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

Can you get rid of all the uses and remove the definition?

julia

> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index f33c743..3badd44 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -212,7 +212,8 @@ static void AdmitTS(struct ieee80211_device *ieee,
>  	del_timer_sync(&pTsCommonInfo->InactTimer);
>  
>  	if(InactTime!=0)
> -		mod_timer(&pTsCommonInfo->InactTimer, jiffies + MSECS(InactTime));
> +		mod_timer(&pTsCommonInfo->InactTimer,
> +			  jiffies + msecs_to_jiffies(InactTime));
>  }
>  
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212092152.GA26927%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

