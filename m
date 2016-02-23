X-GM-THRID: 6254479074591244288
X-Received: by 10.129.85.68 with SMTP id j65mr33709460ywb.57.1456234567884;
        Tue, 23 Feb 2016 05:36:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.106 with SMTP id u97ls2069946qgd.90.gmail; Tue, 23 Feb
 2016 05:36:06 -0800 (PST)
X-Received: by 10.13.230.148 with SMTP id p142mr30338665ywe.45.1456234566916;
        Tue, 23 Feb 2016 05:36:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k15si2223293igt.3.2016.02.23.05.36.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 05:36:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,489,1449529200"; 
   d="scan'208";a="165703653"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 14:36:03 +0100
Date: Tue, 23 Feb 2016 14:36:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: libcfs: use swap()
 in cfs_hash_bd_order()
In-Reply-To: <20160223133302.GA3944@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602231435060.2168@localhost6.localdomain6>
References: <20160223133302.GA3944@amitoj-Inspiron-3542>
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
> Additionally cleaned up the if-else block.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/hash.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
> index 5e2afe4..a645f50 100644
> --- a/drivers/staging/lustre/lustre/libcfs/hash.c
> +++ b/drivers/staging/lustre/lustre/libcfs/hash.c
> @@ -800,16 +800,10 @@ cfs_hash_bd_order(struct cfs_hash_bd *bd1, struct cfs_hash_bd *bd2)
>  	}
>  
>  	rc = cfs_hash_bd_compare(bd1, bd2);
> -	if (rc == 0) {
> +	if (!rc)

This seems like a completely different issue than the use of swap.

julia

>  		bd2->bd_bucket = NULL;
> -
> -	} else if (rc > 0) { /* swab bd1 and bd2 */
> -		struct cfs_hash_bd tmp;
> -
> -		tmp = *bd2;
> -		*bd2 = *bd1;
> -		*bd1 = tmp;
> -	}
> +	else if (rc > 0)
> +		swap(*bd1, *bd2); /* swab bd1 and bd2 */
>  }
>  
>  void
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223133302.GA3944%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

