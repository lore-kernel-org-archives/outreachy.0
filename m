X-GM-THRID: 6250286468939382784
X-Received: by 10.25.18.227 with SMTP id 96mr1723445lfs.4.1455259813255;
        Thu, 11 Feb 2016 22:50:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.144 with SMTP id o138ls48053wmd.14.gmail; Thu, 11 Feb
 2016 22:50:12 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr97707wmw.5.1455259812492;
        Thu, 11 Feb 2016 22:50:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si32411wmv.1.2016.02.11.22.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 22:50:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="202761801"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 07:50:12 +0100
Date: Fri, 12 Feb 2016 07:50:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Declare
 function as static
In-Reply-To: <1455258208-7768-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602120749500.2055@localhost6.localdomain6>
References: <1455258208-7768-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 12 Feb 2016, Bhumika Goyal wrote:

> Declare the function cache_stats_print as static since it is used
> only  in this file. Used grep to find occurences. Problem found using
> sparse.

Good idea. You may also find some functions that are simply not used at 
all.

julia

> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_object.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> index 57c8d54..f118983 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> @@ -362,7 +362,8 @@ void cache_stats_init(struct cache_stats *cs, const char *name)
>  		atomic_set(&cs->cs_stats[i], 0);
>  }
>  
> -int cache_stats_print(const struct cache_stats *cs, struct seq_file *m, int h)
> +static int cache_stats_print(const struct cache_stats *cs,
> +			     struct seq_file *m, int h)
>  {
>  	int i;
>  	/*
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455258208-7768-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

