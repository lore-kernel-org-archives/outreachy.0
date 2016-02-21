X-GM-THRID: 6253702006622388224
X-Received: by 10.194.178.234 with SMTP id db10mr2786550wjc.6.1456057605012;
        Sun, 21 Feb 2016 04:26:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.228.70 with SMTP id b67ls230581wmh.42.gmail; Sun, 21 Feb
 2016 04:26:44 -0800 (PST)
X-Received: by 10.194.172.40 with SMTP id az8mr2801068wjc.3.1456057604394;
        Sun, 21 Feb 2016 04:26:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si737611wmd.0.2016.02.21.04.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:26:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203976178"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:26:43 +0100
Date: Sun, 21 Feb 2016 07:26:41 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: libcfs: Prefer
 kmalloc_array over kmalloc
In-Reply-To: <20160221111815.GA27645@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602210726070.2782@hadrien>
References: <20160221111815.GA27645@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.

I guess that this number (num_possible_spus()) is not likely to cause an
overflow in the near future.

julia

> This was done using Coccinelle:
>
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> index 91c2ae8..dda7e3a 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> @@ -61,8 +61,9 @@ int cfs_tracefile_init_arch(void)
>  	memset(cfs_trace_data, 0, sizeof(cfs_trace_data));
>  	for (i = 0; i < CFS_TCD_TYPE_MAX; i++) {
>  		cfs_trace_data[i] =
> -			kmalloc(sizeof(union cfs_trace_data_union) *
> -				num_possible_cpus(), GFP_KERNEL);
> +			kmalloc_array(num_possible_cpus(),
> +				      sizeof(union cfs_trace_data_union),
> +				      GFP_KERNEL);
>  		if (!cfs_trace_data[i])
>  			goto out;
>  	}
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221111815.GA27645%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

