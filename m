X-GM-THRID: 6204103069755506688
X-Received: by 10.180.10.202 with SMTP id k10mr1134394wib.2.1444505562455;
        Sat, 10 Oct 2015 12:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.133 with SMTP id eu5ls556009wic.53.gmail; Sat, 10 Oct
 2015 12:32:42 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr3911065wjb.5.1444505562122;
        Sat, 10 Oct 2015 12:32:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si36532wib.1.2015.10.10.12.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:32:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,664,1437429600"; 
   d="scan'208";a="182110470"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 21:32:23 +0200
Date: Sat, 10 Oct 2015 21:32:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8192u: Add paranthesis
 to complex macro
In-Reply-To: <410805a906dc0db0f9477ee2429de100a1a0e77d.1444500823.git.cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510102131170.2053@localhost6.localdomain6>
References: <cover.1444500823.git.cristina.moraru09@gmail.com> <410805a906dc0db0f9477ee2429de100a1a0e77d.1444500823.git.cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Oct 2015, Cristina Moraru wrote:

> Fix 'Macros with complex values should be enclosed in parentheses'
> checkpatch warning
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index c639aac..2c0060c 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -1513,7 +1513,7 @@ static int ieee80211_parse_qos_info_param_IE(struct ieee80211_info_element
>  }
>  
>  #ifdef CONFIG_IEEE80211_DEBUG
> -#define MFIE_STRING(x) case MFIE_TYPE_ ##x: return #x
> +#define MFIE_STRING(x) (case MFIE_TYPE_ ##x: return #x)

This will not work.  One can't put parentheses around statements.  Did the 
code compile?  Perhaps the macro is never used?  Or probably 
CONFIG_IEEE80211_DEBUG was not turned on.

julia

>  
>  static const char *get_info_element_string(u16 id)
>  {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/410805a906dc0db0f9477ee2429de100a1a0e77d.1444500823.git.cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

