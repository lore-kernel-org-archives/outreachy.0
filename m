X-GM-THRID: 6255174168530124800
X-Received: by 10.112.138.98 with SMTP id qp2mr5605102lbb.4.1456396596375;
        Thu, 25 Feb 2016 02:36:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.13 with SMTP id h13ls61889lfb.51.gmail; Thu, 25 Feb 2016
 02:36:35 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr3826400lbb.17.1456396595853;
        Thu, 25 Feb 2016 02:36:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si108024wmy.2.2016.02.25.02.36.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:36:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165937267"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 11:36:35 +0100
Date: Thu, 25 Feb 2016 11:36:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "pooja.shamili" <poojashamili@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm72x: Adding spaces before
 and after '*'
In-Reply-To: <20160225103007.GA702@localhost>
Message-ID: <alpine.DEB.2.10.1602251131530.2708@hadrien>
References: <20160225103007.GA702@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, pooja.shamili wrote:

> This patch fixes the checkpatch.pl error: Spaces preferred around the
> '*'

It is better to write the commit message in the imperative.  This tends to
be more concise, while also making it clear what is done. See
http://kernelnewbies.org/PatchPhilosophy

In this case, you donn't have much to say, so perhaps the current commit
message is OK.  But in the subject, it would be better to say "Add" rather
than "Adding".

julia

>
> Signed-off-by: pooja.shamili <poojashamili@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_mux.h | 4 ++--
>  drivers/staging/gdm724x/gdm_usb.h | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/gdm724x/gdm_mux.h b/drivers/staging/gdm724x/gdm_mux.h
> index 3d50383..0871b8f 100644
> --- a/drivers/staging/gdm724x/gdm_mux.h
> +++ b/drivers/staging/gdm724x/gdm_mux.h
> @@ -27,8 +27,8 @@
>
>  #define START_FLAG 0xA512485A
>  #define MUX_HEADER_SIZE 14
> -#define MUX_TX_MAX_SIZE (1024*10)
> -#define MUX_RX_MAX_SIZE (1024*30)
> +#define MUX_TX_MAX_SIZE (1024 * 10)
> +#define MUX_RX_MAX_SIZE (1024 * 30)
>  #define AT_PKT_TYPE 0xF011
>  #define DM_PKT_TYPE 0xF010
>
> diff --git a/drivers/staging/gdm724x/gdm_usb.h b/drivers/staging/gdm724x/gdm_usb.h
> index e6486e7..ffb3d99 100644
> --- a/drivers/staging/gdm724x/gdm_usb.h
> +++ b/drivers/staging/gdm724x/gdm_usb.h
> @@ -26,10 +26,10 @@
>  #define PM_SUSPEND 1
>  #define AUTO_SUSPEND_TIMER 5000 /* ms */
>
> -#define RX_BUF_SIZE		(1024*32)
> -#define TX_BUF_SIZE		(1024*32)
> +#define RX_BUF_SIZE		(1024 * 32)
> +#define TX_BUF_SIZE		(1024 * 32)
>  #define SDU_BUF_SIZE	2048
> -#define MAX_SDU_SIZE	(1024*30)
> +#define MAX_SDU_SIZE	(1024 * 30)
>  #define MAX_PACKET_IN_MULTI_SDU	256
>
>  #define VID_GCT			0x1076
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225103007.GA702%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

