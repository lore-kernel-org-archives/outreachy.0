X-GM-THRID: 6388438478115307520
X-Received: by 10.46.20.72 with SMTP id 8mr1342533lju.19.1487424642223;
        Sat, 18 Feb 2017 05:30:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.144 with SMTP id y138ls285590lfd.22.gmail; Sat, 18 Feb
 2017 05:30:41 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr1277613ljd.23.1487424641460;
        Sat, 18 Feb 2017 05:30:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si374947wme.1.2017.02.18.05.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:30:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261083686"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 14:30:41 +0100
Date: Sat, 18 Feb 2017 14:30:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: function definition
 argument should also have an identifier name'
In-Reply-To: <20170218132356.GA4907@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702181429180.3112@hadrien>
References: <20170218132356.GA4907@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Arushi Singhal wrote:

> function definition argument 'struct vb_device_info *' and 'unsigned
> long' should also have an identifier name.

This could be a bit more clear as "Add variable names to function
prototype parameter list."

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/xgifb/vb_init.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
> index 500cabe41a3c..e4929314d33e 100644
> --- a/drivers/staging/xgifb/vb_init.h
> +++ b/drivers/staging/xgifb/vb_init.h
> @@ -1,6 +1,6 @@
>  #ifndef _VBINIT_
>  #define _VBINIT_
>  unsigned char XGIInitNew(struct pci_dev *pdev);
> -void XGIRegInit(struct vb_device_info *, unsigned long);
> +void XGIRegInit(struct vb_device_info *pVBInfo, unsigned long BaseAddr);

Actually, you should use the same names as found in the definition of the
function, which seem to be:

void XGIRegInit(struct vb_device_info *XGI_Pr, unsigned long BaseAddr)

julia


>  #endif
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218132356.GA4907%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

