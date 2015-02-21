X-GM-THRID: 1725764206592
X-Received: by 10.112.162.135 with SMTP id ya7mr312362lbb.14.1424528653368;
        Sat, 21 Feb 2015 06:24:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.72 with SMTP id le8ls269035lac.41.gmail; Sat, 21 Feb
 2015 06:24:12 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr314773lah.8.1424528652824;
        Sat, 21 Feb 2015 06:24:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si532397wib.1.2015.02.21.06.24.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:24:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100853653"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:24:12 +0100
Date: Sat, 21 Feb 2015 15:24:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Missing a blank
 line after declarations
In-Reply-To: <1424518803-20718-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211522270.2480@hadrien>
References: <1424518803-20718-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes these warning messages found by checkpatch.pl:
> WARNING : Missing a blank line after declarations.
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 8f20910..3bb8c1b 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1166,6 +1166,7 @@ typedef struct hfa384x_usbctlx {
>  	CTLX_STATE state;	/* Tracks running state */
>
>  	struct completion done;
> +

This is not the end of a list of declarations.

Unrelatedly, this could be a good candidate for typedef removal.

julia

>  	volatile int reapable;	/* Food for the reaper task */
>
>  	ctlx_cmdcb_t cmdcb;	/* Async command callback */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424518803-20718-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

