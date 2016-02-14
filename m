X-GM-THRID: 6251161839379415040
X-Received: by 10.107.33.200 with SMTP id h191mr13039045ioh.9.1455466147395;
        Sun, 14 Feb 2016 08:09:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.195 with SMTP id y3ls570876igl.5.gmail; Sun, 14 Feb 2016
 08:09:07 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr12691809ioi.5.1455466147057;
        Sun, 14 Feb 2016 08:09:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id kr4si928792igb.0.2016.02.14.08.09.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:09:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="164671617"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:09:05 +0100
Date: Sun, 14 Feb 2016 17:09:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl8188eu: core: Remove
 NULL test before vfree
In-Reply-To: <c2c521e2570272a1749cef362817e6231000530e.1455461125.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602141708100.2066@localhost6.localdomain6>
References: <cover.1455461124.git.bhumirks@gmail.com> <c2c521e2570272a1749cef362817e6231000530e.1455461125.git.bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 14 Feb 2016, Bhumika Goyal wrote:

> The function vfree test whether the argument is NULL and return
> immediately. SO NULL test is not needed before vfree.

test -> tests, return -> returns, SO -> So.

> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index 9c2e659..d9b9bf3 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -123,8 +123,7 @@ void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
>  	rtw_free_mlme_priv_ie_data(pmlmepriv);
>  
>  	if (pmlmepriv) {
> -		if (pmlmepriv->free_bss_buf)
> -			vfree(pmlmepriv->free_bss_buf);
> +		vfree(pmlmepriv->free_bss_buf);
>  	}

Check patch should have warned about the braces around the if branch no 
longer being needed.  They should be removed as well.

julia

>  }
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c2c521e2570272a1749cef362817e6231000530e.1455461125.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

