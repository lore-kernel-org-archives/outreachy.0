X-GM-THRID: 6250414640766910464
X-Received: by 10.28.63.19 with SMTP id m19mr131439wma.0.1455345359251;
        Fri, 12 Feb 2016 22:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.12 with SMTP id o12ls410721lfo.38.gmail; Fri, 12 Feb
 2016 22:35:58 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr721809lbb.23.1455345358392;
        Fri, 12 Feb 2016 22:35:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v197si191607wmv.1.2016.02.12.22.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:35:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,438,1449529200"; 
   d="scan'208";a="164551688"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2016 07:35:57 +0100
Date: Sat, 13 Feb 2016 07:35:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 6/6] staging: rtl8192u: ieee80211:
 Remove MSECS macro
In-Reply-To: <20160213043423.GA6239@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602130734590.2225@localhost6.localdomain6>
References: <20160213043423.GA6239@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 13 Feb 2016, Amitoj Kaur Chawla wrote:

> Remove driver specific macro MSECS since all instances of this macro
> have been replaced by direct calls to msecs_to_jiffies().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -None
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 967ef9a..c0a0897 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -329,7 +329,6 @@ typedef struct ieee_param {
>  
>  
>  // linux under 2.6.9 release may not support it, so modify it for common use
> -#define MSECS(t) msecs_to_jiffies(t)
>  #define msleep_interruptible_rsl  msleep_interruptible

In another patch, this macro looks like a good candidate for dropping too.

julia

>  
>  #define IEEE80211_DATA_LEN		2304
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160213043423.GA6239%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

