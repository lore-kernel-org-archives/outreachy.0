X-GM-THRID: 6254491784398766080
X-Received: by 10.112.155.8 with SMTP id vs8mr848789lbb.13.1456255556202;
        Tue, 23 Feb 2016 11:25:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.138 with SMTP id p132ls393526lfe.23.gmail; Tue, 23 Feb
 2016 11:25:55 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr4342050lfe.1.1456255555713;
        Tue, 23 Feb 2016 11:25:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si1191929wme.2.2016.02.23.11.25.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:25:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="165746405"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:25:54 +0100
Date: Tue, 23 Feb 2016 20:25:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: lustre: libcfs: Use
 swap() in cfs_hash_bd_order()
In-Reply-To: <ab41303260243d22196ab846c092faac61ae6bf4.1456236436.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1602232025290.2040@localhost6.localdomain6>
References: <cover.1456236436.git.amitoj1606@gmail.com> <ab41303260243d22196ab846c092faac61ae6bf4.1456236436.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:

> Use swap() function instead of using a temporary variable for swapping
> two variables.
> 
> The Coccinelle semantic patch used to make this change is as follows:
> //<smpl>
> @@
> type T;
> T a,b,c;
> @@
> - a = b;
> - b = c;
> - c = a;
> + swap(b, c);
> //<smpl>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Divided one patch into a series.
> 
>  drivers/staging/lustre/lustre/libcfs/hash.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
> index 5e2afe4..c8d8bc8 100644
> --- a/drivers/staging/lustre/lustre/libcfs/hash.c
> +++ b/drivers/staging/lustre/lustre/libcfs/hash.c
> @@ -803,12 +803,8 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
>  	if (rc == 0) {
>  		bd2->bd_bucket = NULL;
>  
> -	} else if (rc > 0) { /* swab bd1 and bd2 */
> -		struct cfs_hash_bd tmp;
> -
> -		tmp = *bd2;
> -		*bd2 = *bd1;
> -		*bd1 = tmp;
> +	} else if (rc > 0) {
> +		swap(*bd1, *bd2); /* swab bd1 and bd2 */

I think it would be reasonable to fix the spelling mistake in the comment 
as well.

julia

>  	}
>  }
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ab41303260243d22196ab846c092faac61ae6bf4.1456236436.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

