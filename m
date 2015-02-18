X-GM-THRID: 289717354496
X-Received: by 10.181.29.66 with SMTP id ju2mr141362wid.1.1424246818100;
        Wed, 18 Feb 2015 00:06:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls42287laj.27.gmail; Wed, 18 Feb 2015
 00:06:57 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr2370936lbf.21.1424246817526;
        Wed, 18 Feb 2015 00:06:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si8747298wid.1.2015.02.18.00.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 00:06:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100438963"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 09:06:56 +0100
Date: Wed, 18 Feb 2015 09:06:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i2o: Remove space after
 the * in a pointer type variable.
In-Reply-To: <20150218074634.GA9707@gmail.com>
Message-ID: <alpine.DEB.2.02.1502180903140.2066@localhost6.localdomain6>
References: <20150218074634.GA9707@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 18 Feb 2015, Vatika Harlalka wrote:

> This patch is to remove space after the * in a pointer type variable declaration to follow kernel coding conventions.
> 
> Changes from v1: Changed subject line to make it more descriptive.

The change description goes below the ---

When a patch is processed, the part above the --- is taken as the commit 
message and the part below the --- is applied as a patch to the code.  The 
patch command ignores anything that is not patch code, as determined by 
the --- +++ and @@ lines.  Between the --- and the diff, you can put 
information that does not need to be preserved in git.  The difference 
with the previous version falls into this category.  Since the v1 of your 
patch will not be presented in git, the difference between v2 and v1 is 
not useful.

So now you should submit v3 with the difference information in the right 
place.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218074634.GA9707%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

