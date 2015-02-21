X-GM-THRID: 1800831762432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2b393b786f2839ff
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.112.167 with SMTP id ir7mr3108450obb.29.1424531127723;
        Sat, 21 Feb 2015 07:05:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.102 with SMTP id 93ls1703991qge.54.gmail; Sat, 21 Feb
 2015 07:05:27 -0800 (PST)
X-Received: by 10.236.227.162 with SMTP id d32mr3285951yhq.7.1424531127569;
        Sat, 21 Feb 2015 07:05:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id mg3si410486igb.0.2015.02.21.07.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:05:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100855595"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:05:24 +0100
Date: Sat, 21 Feb 2015 16:05:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Fix line
 over 80 characters
In-Reply-To: <1424526541-15280-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211604330.2480@hadrien>
References: <1424526541-15280-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-659793156-1424531119=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-659793156-1424531119=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> Fix checkpatch.pl issues with line over
> 80 characters in rtw_iol.c
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_iol.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_iol.c b/drivers/staging/rtl8188eu/core/rtw_iol.c
> index cdcf0ea..0d1a246 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_iol.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_iol.c
> @@ -25,7 +25,8 @@ bool rtw_IOL_applied(struct adapter  *adapter)
>  	if (1 == adapter->registrypriv.fw_iol)
>  		return true;
>
> -	if ((2 == adapter->registrypriv.fw_iol) && (!adapter_to_dvobj(adapter)->ishighspeed))
> +	if ((2 == adapter->registrypriv.fw_iol) &&
> +			 (!adapter_to_dvobj(adapter)->ishighspeed))

The choice of indentation distance seems random.  It would be nicer to
line up the conditions.

In neither case are the parentheses needed.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424526541-15280-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-659793156-1424531119=:2480--

