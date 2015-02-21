X-GM-THRID: 1800831762432
X-Received: by 10.194.142.174 with SMTP id rx14mr347218wjb.4.1424533831670;
        Sat, 21 Feb 2015 07:50:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls361109lac.94.gmail; Sat, 21 Feb
 2015 07:50:31 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr342992lbs.12.1424533831217;
        Sat, 21 Feb 2015 07:50:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si326348wib.3.2015.02.21.07.50.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:50:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122808370"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:50:30 +0100
Date: Sat, 21 Feb 2015 16:50:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Fix line
 over 80 characters
In-Reply-To: <1424532440-17988-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211649070.2480@hadrien>
References: <1424532440-17988-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-124342132-1424533825=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-124342132-1424533825=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> Fix checkpatch.pl issues with line over
> 80 characters in rtw_iol.c
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_iol.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_iol.c b/drivers/staging/rtl8188eu/core/rtw_iol.c
> index 0d1a246..0d0980b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_iol.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_iol.c
> @@ -26,7 +26,7 @@ bool rtw_IOL_applied(struct adapter  *adapter)
>  		return true;
>
>  	if ((2 == adapter->registrypriv.fw_iol) &&
> -			 (!adapter_to_dvobj(adapter)->ishighspeed))
> +	(!adapter_to_dvobj(adapter)->ishighspeed))

It should be lined up with the other condition, not with the if.

Is this v2 of a previously submitted patch?  You patch should be based on
the original code, not the cange you proposed previously.  And the subject
line should say v2, and there should be a description of the v2 change
below the ---.

julia

>  		return true;
>  	return false;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424532440-17988-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-124342132-1424533825=:2480--

