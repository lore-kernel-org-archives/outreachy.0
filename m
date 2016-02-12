X-GM-THRID: 6250414434247770112
X-Received: by 10.112.167.136 with SMTP id zo8mr300757lbb.10.1455289242005;
        Fri, 12 Feb 2016 07:00:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.127.204 with SMTP id a195ls136032wmd.16.canary; Fri, 12 Feb
 2016 07:00:41 -0800 (PST)
X-Received: by 10.194.216.3 with SMTP id om3mr300283wjc.7.1455289241484;
        Fri, 12 Feb 2016 07:00:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si89743wmd.1.2016.02.12.07.00.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:00:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="202851357"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 16:00:40 +0100
Date: Fri, 12 Feb 2016 16:00:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8192u: ieee80211:
 rtl819x_BAProc: Replace MSECS with msecs_to_jiffies
In-Reply-To: <20160212144011.GA1274@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602121600160.2510@hadrien>
References: <20160212144011.GA1274@amitoj-Inspiron-3542>
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
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> index 3bde744..0f46a28 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> @@ -19,7 +19,8 @@ static void ActivateBAEntry(struct ieee80211_device *ieee, PBA_RECORD pBA, u16 T
>  {
>  	pBA->bValid = true;
>  	if(Time != 0)
> -		mod_timer(&pBA->Timer, jiffies + MSECS(Time));
> +		mod_timer(&pBA->Timer,
> +			  jiffies + msecs_to_jiffies(Time));

I think that the call would fit on one line.

julia

>  }
>
>  /********************************************************************************************************************
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212144011.GA1274%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

