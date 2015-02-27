X-GM-THRID: 4704101728256
X-Received: by 10.112.189.227 with SMTP id gl3mr2307447lbc.2.1425060911759;
        Fri, 27 Feb 2015 10:15:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls203893laz.61.gmail; Fri, 27 Feb
 2015 10:15:11 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr2307292lbc.22.1425060911281;
        Fri, 27 Feb 2015 10:15:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si165358wic.1.2015.02.27.10.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:15:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,661,1418079600"; 
   d="scan'208";a="101578532"
Received: from unknown (HELO hadrien.local) ([88.128.80.16])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 19:15:10 +0100
Date: Fri, 27 Feb 2015 19:15:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Removed Use of
 volatile is usually wrong
In-Reply-To: <1425059769-20058-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271914561.3793@hadrien>
References: <1425059769-20058-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Melike Yurtoglu wrote:

> WARNING: Use of volatile is usually wrong.
> That was found by running checkpatch.

How do you know that it is wrong in this case?

julia

>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 8f20910..47f65c3 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1166,7 +1166,7 @@ typedef struct hfa384x_usbctlx {
>  	CTLX_STATE state;	/* Tracks running state */
>
>  	struct completion done;
> -	volatile int reapable;	/* Food for the reaper task */
> +	int reapable;	/* Food for the reaper task */
>
>  	ctlx_cmdcb_t cmdcb;	/* Async command callback */
>  	ctlx_usercb_t usercb;	/* Async user callback, */
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425059769-20058-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

