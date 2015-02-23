X-GM-THRID: 2067485687808
X-Received: by 10.112.162.135 with SMTP id ya7mr1054204lbb.14.1424675715350;
        Sun, 22 Feb 2015 23:15:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls397432lap.17.gmail; Sun, 22 Feb 2015
 23:15:14 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr832186lba.16.1424675714769;
        Sun, 22 Feb 2015 23:15:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si608482wic.1.2015.02.22.23.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 23:15:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="122924297"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 08:15:14 +0100
Date: Mon, 23 Feb 2015 08:15:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 5/6] Staging: emxx_udc: Remove
 custom printk micro ERR
In-Reply-To: <d0975ddfd74bef068fbf73f3d4089253ba1d1614.1424645872.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502230814460.2053@localhost6.localdomain6>
References: <cover.1424645871.git.hamohammed.sa@gmail.com> <d0975ddfd74bef068fbf73f3d4089253ba1d1614.1424645872.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Haneen Mohammed wrote:

> This patch removes custom printk micro ERR. All the calls to this micro were replaced by de_err and pr_err.

micro -> macro

> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index 7b2fcb6..c6cdde4 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -644,6 +644,5 @@ union usb_reg_access {
>  };
>  
>  /*-------------------------------------------------------------------------*/
> -#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
>  
>  #endif  /* _LINUX_EMXX_H */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d0975ddfd74bef068fbf73f3d4089253ba1d1614.1424645872.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

