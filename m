X-GM-THRID: 6249455675787706368
X-Received: by 10.112.135.234 with SMTP id pv10mr4417246lbb.24.1455088428867;
        Tue, 09 Feb 2016 23:13:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.79 with SMTP id 76ls747827wmo.49.canary; Tue, 09 Feb
 2016 23:13:48 -0800 (PST)
X-Received: by 10.194.201.234 with SMTP id kd10mr4538485wjc.6.1455088428430;
        Tue, 09 Feb 2016 23:13:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si677634wmd.0.2016.02.09.23.13.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:13:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202408000"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:13:47 +0100
Date: Wed, 10 Feb 2016 08:13:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a coding style warning
In-Reply-To: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602100810150.2050@localhost6.localdomain6>
References: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The proper strategy to make the subject line is not to simply take the 
entire path of the file and put ": " in place of /.  Unfortunately, there 
is no deterministic way of making the subject line.  Instead, you have to 
see what other people have done, and hope that that is what the 
maintainers want.

To see what others have done, you can do the following, for the file that 
you have changed:

git log --oneline patch/file.c

In your case, most of the examples are actually

staging: lustre:

but that may be too generic.  There are a few occurrences of

staging: lustre: lov:

That one seems better for your case.  Please send a v2.  Since this patch 
is part of a series, the v2 should contain v2s for all of the patches in 
the series, even the ones that don't change.  Indicate clearly what 
changes are made and where changes are not made.

julia

On Wed, 10 Feb 2016, Rakhi Sharma wrote:

> Fixed a warning.
> WARNING: void function return statements are not generally useful.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
> index bba37bf..34e0919 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_pool.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
> @@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, void *v)
>  		lov_pool_putref(iter->pool);
>  		kfree(iter);
>  	}
> -	return;
>  }
>  
>  static int pool_proc_show(struct seq_file *s, void *v)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455064774-22091-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

