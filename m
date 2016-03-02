X-GM-THRID: 6255535710113103872
X-Received: by 10.112.209.6 with SMTP id mi6mr3123491lbc.15.1456935947141;
        Wed, 02 Mar 2016 08:25:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.6.15 with SMTP id 15ls390235wmg.2.canary; Wed, 02 Mar 2016
 08:25:46 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr3226828wjf.0.1456935946731;
        Wed, 02 Mar 2016 08:25:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c7si200111wmf.2.2016.03.02.08.25.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 655FFDBA;
	Wed,  2 Mar 2016 16:25:45 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: libcfs: Prefer
 kmalloc_array over kmalloc
Message-ID: <20160302162545.GJ987@kroah.com>
References: <20160226095401.GA10888@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160226095401.GA10888@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 03:24:01PM +0530, Bhaktipriya Shridhar wrote:
> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.
> This was done using Coccinelle:
> 
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(
> + kmalloc_array(
> e2
> - *
> + ,
> sizeof(e1), C)
> |
> - kmalloc(
> + kmalloc_array(
> e1
> - *
> + ,
> sizeof(t), C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(e1)
> - *
> e2
> + ,
> + sizeof(e1)
> , C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(t)
> - *
> e1
> + ,
> + sizeof(t)
> , C)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed type lusture to lustre in subject.
> 
>  drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> index 91c2ae8..b78f6e5 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> @@ -61,8 +61,9 @@ int cfs_tracefile_init_arch(void)
>  	memset(cfs_trace_data, 0, sizeof(cfs_trace_data));
>  	for (i = 0; i < CFS_TCD_TYPE_MAX; i++) {
>  		cfs_trace_data[i] =
> -			kmalloc(sizeof(union cfs_trace_data_union) *
> -				num_possible_cpus(), GFP_KERNEL);

We know this can't overflow, it's a static number at build time, so this
change isn't needed.


