X-GM-THRID: 8708200333312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d44f7e60dab64738
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr9713046lbb.14.1426581452693;
        Tue, 17 Mar 2015 01:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls8760lal.49.gmail; Tue, 17 Mar
 2015 01:37:32 -0700 (PDT)
X-Received: by 10.152.6.41 with SMTP id x9mr9821011lax.10.1426581452159;
        Tue, 17 Mar 2015 01:37:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id gj20si67075wic.1.2015.03.17.01.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 01:37:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,415,1422918000"; 
   d="scan'208";a="103637623"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2015 09:37:31 +0100
Date: Tue, 17 Mar 2015 09:37:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: ft1000: replace pr_err
 with dev_err
In-Reply-To: <1426570656-22498-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1503170936300.2408@hadrien>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com> <1426570656-22498-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Mar 2015, Haneen Mohammed wrote:

> This patch replace pr_err with dev_err, when appropriate device
> structure is found.

How did you run Coccinelle for this?  You may get more results with eg
--all-includes, since structure definitions may be in header files.

julia


> Issue found using the following Coccinelle script:
>
> @r exists@
> identifier f, s, i;
> position p;
> @@
>
> f(...,struct s *i,...) {
> <+...
> when != i == NULL
> pr_err@p(...);
> ...+>
> }
>
> @rr@
> identifier r.s, fld;
> @@
>
> struct s {
> 	...
> 	struct device *fld;
> 	...
> };
>
> @@
> identifier r.i, rr.fld;
> position r.p;
> @@
> -pr_err@p
> +dev_err
>    (
> + i->fld,
> ...)
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/ft1000/ft1000-usb/ft1000_usb.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c b/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
> index a6b55f4..3b303b6 100644
> --- a/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
> +++ b/drivers/staging/ft1000/ft1000-usb/ft1000_usb.c
> @@ -136,7 +136,7 @@ static int ft1000_probe(struct usb_interface *interface,
>
>  	ret = request_firmware(&dsp_fw, "ft3000.img", &dev->dev);
>  	if (ret < 0) {
> -		pr_err("Error request_firmware()\n");
> +		dev_err(interface->usb_dev, "Error request_firmware()\n");
>  		goto err_fw;
>  	}
>
> @@ -164,7 +164,8 @@ static int ft1000_probe(struct usb_interface *interface,
>  	pr_debug("pft1000info=%p\n", pft1000info);
>  	ret = dsp_reload(ft1000dev);
>  	if (ret) {
> -		pr_err("Problem with DSP image loading\n");
> +		dev_err(interface->usb_dev,
> +			"Problem with DSP image loading\n");
>  		goto err_load;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426570656-22498-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

