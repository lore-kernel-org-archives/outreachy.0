X-GM-THRID: 6329409995903336448
X-Received: by 10.194.79.231 with SMTP id m7mr1549981wjx.4.1473681041589;
        Mon, 12 Sep 2016 04:50:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.214 with SMTP id e83ls1322426wmi.0.gmail; Mon, 12 Sep
 2016 04:50:40 -0700 (PDT)
X-Received: by 10.28.208.134 with SMTP id h128mr1625708wmg.1.1473681040825;
        Mon, 12 Sep 2016 04:50:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si993270wmd.1.2016.09.12.04.50.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 04:50:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,322,1470693600"; 
   d="scan'208";a="192839071"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 13:50:40 +0200
Date: Mon, 12 Sep 2016 13:50:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, ciorneiioana@gmail.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: Add spaces around
 the '*' operator
In-Reply-To: <20160912114309.GA6964@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609121349000.3049@hadrien>
References: <20160912114309.GA6964@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Sep 2016, sayli karnik wrote:

> This patch fixes the checkpatch.pl warning:
> Spaces required around the '*' operator.

Hello,

The patch looks OK, but I wonder how you got the CC list?  I get the
following:

scripts/get_maintainer.pl  --separator , --nokeywords --nogit
--nogit-fallback --norolestats -f drivers/staging/gdm724x/gdm_mux.h

produces:

Greg Kroah-Hartman <gregkh@linuxfoundation.org>,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org

Ioana is a former intern.  She may have modified this code, but she is not
the maintainer.

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
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
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912114309.GA6964%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

