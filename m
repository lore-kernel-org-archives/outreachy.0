X-GM-THRID: 6388438478115307520
X-Received: by 10.25.196.194 with SMTP id u185mr1241552lff.6.1487425651163;
        Sat, 18 Feb 2017 05:47:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.90 with SMTP id h87ls283111lfi.32.gmail; Sat, 18 Feb
 2017 05:47:30 -0800 (PST)
X-Received: by 10.25.190.6 with SMTP id o6mr1352760lff.31.1487425650428;
        Sat, 18 Feb 2017 05:47:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si287354wme.2.2017.02.18.05.47.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:47:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="213894098"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 14:47:29 +0100
Date: Sat, 18 Feb 2017 14:47:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: function definition
 argument should also have an identifier name'
In-Reply-To: <20170218134004.GA5075@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702181447120.3112@hadrien>
References: <20170218134004.GA5075@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Arushi Singhal wrote:

> function definition argument 'struct vb_device_info *' and 'unsigned
> long' should also have an identifier name.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/xgifb/vb_init.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
> index 500cabe41a3c..e835054b87bf 100644
> --- a/drivers/staging/xgifb/vb_init.h
> +++ b/drivers/staging/xgifb/vb_init.h
> @@ -1,6 +1,5 @@
>  #ifndef _VBINIT_
>  #define _VBINIT_
>  unsigned char XGIInitNew(struct pci_dev *pdev);
> -void XGIRegInit(struct vb_device_info *, unsigned long);
> +void XGIRegInit(struct vb_device_info *XGI_Pr, unsigned long BaseAddr);
>  #endif
> -
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218134004.GA5075%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

