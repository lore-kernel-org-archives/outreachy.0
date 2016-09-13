X-GM-THRID: 6329747467504975872
X-Received: by 10.28.27.132 with SMTP id b126mr2540088wmb.0.1473759560592;
        Tue, 13 Sep 2016 02:39:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.78 with SMTP id r75ls207480wmf.9.gmail; Tue, 13 Sep
 2016 02:39:20 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr3451760wjb.1.1473759560106;
        Tue, 13 Sep 2016 02:39:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si329638wmr.2.2016.09.13.02.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:39:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="192956703"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:39:19 +0200
Date: Tue, 13 Sep 2016 11:39:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: lirc: lirc_bt829.c:
 Remove the explicit NULL comparison
In-Reply-To: <6be9d24b82515d2758809431887a9b22b3fa61d8.1473758274.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1609131138010.3355@hadrien>
References: <cover.1473758274.git.anchalj109@gmail.com> <6be9d24b82515d2758809431887a9b22b3fa61d8.1473758274.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Anchal Jain wrote:

> CHECK: Remove the explicit NULL comparison

The change looks fine, but the patch should be CCd to some maintainers for
this file, which you can find using the scripts/get_maintainer.pl command.
Look at the section Submit a patch in the tutorial.

Also, the commit message should not just repeat the checkpatch warning,
but rather say what you did to address that warning.

julia

>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_bt829.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
> index 44f5655..f740115 100644
> --- a/drivers/staging/media/lirc/lirc_bt829.c
> +++ b/drivers/staging/media/lirc/lirc_bt829.c
> @@ -120,7 +120,7 @@ int init_module(void)
>  	int rc;
>
>  	pdev = do_pci_probe();
> -	if (pdev == NULL)
> +	if (!pdev)
>  		return -ENODEV;
>
>  	rc = pci_enable_device(pdev);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6be9d24b82515d2758809431887a9b22b3fa61d8.1473758274.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

