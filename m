X-GM-THRID: 6256670345142468608
X-Received: by 10.112.157.164 with SMTP id wn4mr1515544lbb.5.1456744691674;
        Mon, 29 Feb 2016 03:18:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.156.81 with SMTP id f78ls506048lfe.9.gmail; Mon, 29 Feb
 2016 03:18:11 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr1549573lbd.19.1456744691049;
        Mon, 29 Feb 2016 03:18:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v68si122545wmd.1.2016.02.29.03.18.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 03:18:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,520,1449529200"; 
   d="scan'208";a="166319944"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Feb 2016 12:18:10 +0100
Date: Mon, 29 Feb 2016 12:18:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:wilc1000:coreconfigurator.h
 Remove an unnecessary typedef keyword
In-Reply-To: <20160229111620.GA9474@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1602291217450.2600@hadrien>
References: <20160229111620.GA9474@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

I don't think this is correct.  Look into the meaning of typedef.

julia

On Mon, 29 Feb 2016, Muraru Mihaela wrote:

> This patch fixes these warning messages found by checkpatch.pl:
> WARNING: do not add new typedefs
>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 63eca24..1e1892f 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -50,7 +50,7 @@
>  #define MAKE_WORD16(lsb, msb) ((((u16)(msb) << 8) & 0xFF00) | (lsb))
>  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
>
> -typedef enum {
> +enum {
>  	SUCCESSFUL_STATUSCODE    = 0,
>  	UNSPEC_FAIL              = 1,
>  	UNSUP_CAP                = 10,
> @@ -70,7 +70,7 @@ typedef enum {
>  	CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  } tenuConnectSts;
>
> -typedef struct {
> +struct {
>  	u8 u8Full;
>  	u8 u8Index;
>  	s8 as8RSSI[NUM_RSSI];
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160229111620.GA9474%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

