X-GM-THRID: 6250276130683617280
X-Received: by 10.112.138.98 with SMTP id qp2mr6206203lbb.4.1455259922525;
        Thu, 11 Feb 2016 22:52:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.135 with SMTP id k129ls333500lfg.53.gmail; Thu, 11 Feb
 2016 22:52:01 -0800 (PST)
X-Received: by 10.112.167.136 with SMTP id zo8mr5945710lbb.10.1455259921930;
        Thu, 11 Feb 2016 22:52:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si39081wme.2.2016.02.11.22.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 22:52:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="164423889"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 07:51:38 +0100
Date: Fri, 12 Feb 2016 07:51:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: osc: Declare
 structure as static
In-Reply-To: <1455255789-6050-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602120750400.2055@localhost6.localdomain6>
References: <1455255789-6050-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 12 Feb 2016, Bhumika Goyal wrote:

> Declare structure as static since it is used only in this file.
> Problem found using sparse. Used grep to find occurences.

Could it also be const?  You can try annotating all declarations of this 
type as const and seeing if it compiles.

julia

> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
> index 3ae00fc..beabb1c 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -3256,7 +3256,7 @@ static int osc_process_config(struct obd_device *obd, u32 len, void *buf)
>  	return osc_process_config_base(obd, buf);
>  }
>  
> -struct obd_ops osc_obd_ops = {
> +static struct obd_ops osc_obd_ops = {
>  	.owner          = THIS_MODULE,
>  	.setup          = osc_setup,
>  	.precleanup     = osc_precleanup,
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455255789-6050-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

