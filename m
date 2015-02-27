X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr2202873lbb.11.1425052590307;
        Fri, 27 Feb 2015 07:56:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.198.225 with SMTP id jf1ls152034wic.12.gmail; Fri, 27 Feb
 2015 07:56:29 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr581183wia.7.1425052589968;
        Fri, 27 Feb 2015 07:56:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si137226wib.3.2015.02.27.07.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:56:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="101563765"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 16:56:29 +0100
Date: Fri, 27 Feb 2015 16:56:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 14/24] staging: lustre: lov: remove
 unused variable
In-Reply-To: <8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271656040.2663@hadrien>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com> <8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 27 Feb 2015, Aya Mahfouz wrote:

> This patch removes a variable that was simply used to
> store the return value of a function call before
> returning it.
>
> The issue was detected and resolved using the following
> coccinelle script:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;																																		Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> index 2c6c558..9960b45 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> @@ -314,7 +314,7 @@ static int lov_disconnect(struct obd_export *exp)
>  {
>  	struct obd_device *obd = class_exp2obd(exp);
>  	struct lov_obd *lov = &obd->u.lov;
> -	int i, rc;
> +	int i;
>
>  	if (!lov->lov_tgts)
>  		goto out;
> @@ -340,8 +340,7 @@ static int lov_disconnect(struct obd_export *exp)
>  	obd_putref(obd);
>
>  out:
> -	rc = class_disconnect(exp); /* bz 9811 */
> -	return rc;
> +	return class_disconnect(exp);

The comment should probably be preserved.

julia

>  }
>
>  /* Error codes:
> --
> 1.9.3
>
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8f04ef8c0696cbc93f0ec76b4860354d50fd0b88.1425035010.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

