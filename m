X-GM-THRID: 224345980928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e6913d810777da90
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.174.36 with SMTP id bp4mr3817897lbc.15.1424211776293;
        Tue, 17 Feb 2015 14:22:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.74 with SMTP id ew10ls1031880wid.20.gmail; Tue, 17 Feb
 2015 14:22:55 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr1668964wia.7.1424211775959;
        Tue, 17 Feb 2015 14:22:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si6054196wif.0.2015.02.17.14.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 14:22:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100407913"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 23:22:55 +0100
Date: Tue, 17 Feb 2015 23:22:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: fixed "foo* bar" should
 be "foo *bar" warning in debug.c
In-Reply-To: <20150217221432.GA4319@gmail.com>
Message-ID: <alpine.DEB.2.02.1502172320220.2306@localhost6.localdomain6>
References: <20150217221432.GA4319@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 18 Feb 2015, Vatika Harlalka wrote:

> This patch fixes "foo* bar" should be "foo *bar" warning in debug.c.

This message could be something like "Remove space after the * in a 
pointer type variable declaration to follow kernel coding conventions."  
That would say what you did and why.

Normally, it is not necessary to mention the file name in the subject line 
or in the commit message.  One can easily see the affected file(s) by 
looking at the diffstat below the ---.

julia


> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/i2o/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> index 7a16114..4f23e3f 100644
> --- a/drivers/staging/i2o/debug.c
> +++ b/drivers/staging/i2o/debug.c
> @@ -5,7 +5,7 @@
>  
>  static void i2o_report_util_cmd(u8 cmd);
>  static void i2o_report_exec_cmd(u8 cmd);
> -static void i2o_report_fail_status(u8 req_status, u32 * msg);
> +static void i2o_report_fail_status(u8 req_status, u32 *msg);
>  static void i2o_report_common_status(u8 req_status);
>  static void i2o_report_common_dsc(u16 detailed_status);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150217221432.GA4319%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

