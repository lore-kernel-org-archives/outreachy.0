X-GM-THRID: 108667076608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,24a44102f4e077fa
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.2.67 with SMTP id 3mr3601353las.8.1424179343206;
        Tue, 17 Feb 2015 05:22:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.231 with SMTP id bb7ls398564lab.50.gmail; Tue, 17 Feb
 2015 05:22:22 -0800 (PST)
X-Received: by 10.112.119.141 with SMTP id ku13mr3633980lbb.7.1424179342726;
        Tue, 17 Feb 2015 05:22:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si3689481wib.2.2015.02.17.05.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 05:22:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,594,1418079600"; 
   d="scan'208";a="100348981"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 14:22:22 +0100
Date: Tue, 17 Feb 2015 14:24:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size).
In-Reply-To: <20150217131048.GA5235@gmail.com>
Message-ID: <alpine.DEB.2.10.1502171422400.2171@hadrien>
References: <20150217131048.GA5235@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Feb 2015, Vatika Harlalka wrote:

> This patch addresses the checkpatch.pl warning
>
> WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

You could try to find out why it is preferred and explain that.  I don't
know if there is an interesting reason, but you might find some comments
in git logs.

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index ee1b80d..90c5d1d 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -535,8 +535,7 @@ typedef struct _T_FC_REGS {
>
>  	u8 Reserved1200[0x1000-0x200];	/* Reserved */
>
> -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
> -
> +} __aligned(32) T_FC_REGS, *PT_FC_REGS;

It looks like an extra line has disappeared?  Was that intentional?

julia

>
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150217131048.GA5235%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

