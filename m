X-GM-THRID: 6249455675787706368
X-Received: by 10.98.71.209 with SMTP id p78mr36229798pfi.13.1455088873963;
        Tue, 09 Feb 2016 23:21:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.101 with SMTP id r5ls139027igh.40.gmail; Tue, 09 Feb
 2016 23:21:13 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr25772759pab.36.1455088873646;
        Tue, 09 Feb 2016 23:21:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hy4si394818igb.2.2016.02.09.23.21.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:21:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164141492"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:21:10 +0100
Date: Wed, 10 Feb 2016 08:21:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com, 
    gregkh@linuxfoundation.org
Subject: Re: [PATCH 2/2] Drivers: staging: lustre: lustre: lov: lov_pool:
 Fixed a coding style warning
In-Reply-To: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602100819020.2050@localhost6.localdomain6>
References: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 10 Feb 2016, Rakhi Sharma wrote:

> Fixed a warning.
> WARNING: void function return statements are not generally useful.

Write your commit messages in the imperative (like this sentence).  Also, 
it is better to say what you did, rather than just say fix.  In your case 
it could be

"Remove unneeded return at the end of a void function.

This fixes the checkpatch warning: ..."

The subject line should also be more descriptive.  A coding style warning 
could be anything.

julia

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
> 

