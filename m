X-GM-THRID: 3440504733696
X-Received: by 10.180.87.166 with SMTP id az6mr3183617wib.1.1424899043084;
        Wed, 25 Feb 2015 13:17:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls769427lac.49.gmail; Wed, 25 Feb
 2015 13:17:22 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr802482laa.2.1424899042497;
        Wed, 25 Feb 2015 13:17:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si1216521wif.0.2015.02.25.13.17.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 13:17:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,647,1418079600"; 
   d="scan'208";a="101336702"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 22:17:21 +0100
Date: Wed, 25 Feb 2015 22:17:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove return in
 void function
In-Reply-To: <1424898905-6290-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502252217060.2029@localhost6.localdomain6>
References: <1424898905-6290-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 25 Feb 2015, Melike Yurtoglu wrote:

> WARNING: void function return statements are not generally useful
> Remove return in void function. That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/hal_com.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/hal_com.c b/drivers/staging/rtl8723au/hal/hal_com.c
> index bf4cae2..ce0516b 100644
> --- a/drivers/staging/rtl8723au/hal/hal_com.c
> +++ b/drivers/staging/rtl8723au/hal/hal_com.c
> @@ -237,7 +237,6 @@ void HalSetBrateCfg23a(struct rtw_adapter *padapter, u8 *mBratesOS)
>  		/*  Ziv - Check */
>  	rtl8723au_write8(padapter, REG_INIRTS_RATE_SEL, rate_index);
>  

You don't need this blank line either.

julia

> -	return;
>  }
>  
>  static void _OneOutPipeMapping(struct rtw_adapter *pAdapter)
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424898905-6290-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

