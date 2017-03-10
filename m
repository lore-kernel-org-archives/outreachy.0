X-GM-THRID: 6395910423688773632
X-Received: by 10.46.33.163 with SMTP id h35mr3618205lji.17.1489165241504;
        Fri, 10 Mar 2017 09:00:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls1050853ljt.24.gmail; Fri, 10 Mar
 2017 09:00:40 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr3722996ljd.26.1489165240823;
        Fri, 10 Mar 2017 09:00:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si15956wmd.0.2017.03.10.09.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:00:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216332478"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 18:00:40 +0100
Date: Fri, 10 Mar 2017 18:00:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: vc04_services: clean up
 anonymous field declarations
In-Reply-To: <cover.1489163547.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101800150.3356@hadrien>
References: <cover.1489163547.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Aishwarya Pant wrote:

> This patchset replaces anonymous field declarations for the typedef
> SERVICE_CREATION_T with explicit field declarations in the drivers
> bcm2835-audio and bcm2835-camera.
>
> typedef struct {
>         struct vchi_version version;
>         int32_t service_id;
>         VCHI_CONNECTION_T *connection;
>         uint32_t rx_fifo_size;
>         uint32_t tx_fifo_size;
>         VCHI_CALLBACK_T callback;
>         void *callback_param;
>         /* client intends to receive bulk transfers of
>                 odd lengths or into unaligned buffers */
>         int32_t want_unaligned_bulk_rx;
>         /* client intends to transmit bulk transfers of
>                 odd lengths or out of unaligned buffers */
>         int32_t want_unaligned_bulk_tx;
>         /* client wants to check CRCs on (bulk) xfers.
>                 Only needs to be set at 1 end - will do both directions. */
>         int32_t want_crc;
> } SERVICE_CREATION_T;
>
>
> ** HERE ***

I don't think this line is needed.

julia

>
> Aishwarya Pant (2):
>   staging: bcm2835-audio: remove anonymous field declarations
>   staging: bcm2835-camera: remove anonymous field declarations
>
>  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      | 20 ++++++++++----------
>  .../vc04_services/bcm2835-camera/mmal-vchiq.c        | 20 ++++++++++----------
>  2 files changed, 20 insertions(+), 20 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489163547.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

