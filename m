X-GM-THRID: 675560816640
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3e77155b76fea8d3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr493777wjb.1.1424343848885;
        Thu, 19 Feb 2015 03:04:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.101 with SMTP id a5ls1048182wix.6.canary; Thu, 19 Feb
 2015 03:04:08 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr619680wix.2.1424343848569;
        Thu, 19 Feb 2015 03:04:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si4136307wib.2.2015.02.19.03.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 03:04:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,512,1418079600"; 
   d="scan'208";a="100596249"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 12:04:08 +0100
Date: Thu, 19 Feb 2015 12:04:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Remove unneeded void
 return
In-Reply-To: <20150219105055.GA29289@gmail.com>
Message-ID: <alpine.DEB.2.10.1502191202420.2589@hadrien>
References: <20150219105055.GA29289@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Vatika Harlalka wrote:

> This patch is to remove return statement from void function.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/media/tlg2300/pd-alsa.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/media/tlg2300/pd-alsa.c b/drivers/staging/media/tlg2300/pd-alsa.c
> index e23f437..7a07a1d 100644
> --- a/drivers/staging/media/tlg2300/pd-alsa.c
> +++ b/drivers/staging/media/tlg2300/pd-alsa.c
> @@ -195,7 +195,6 @@ static void complete_handler_audio(struct urb *urb)
>  	ret = usb_submit_urb(urb, GFP_ATOMIC);
>  	if (ret < 0)
>  		log("audio urb failed (errcod = %i)", ret);
> -	return;

You could consider getting rid of all of the uses of the non-standard log
macro in this driver.

Some cases are for just indicating the entry or exit from a function.
These could be just dropped competely, as the kernel provides other
mechanisms for function tracing.

julia

