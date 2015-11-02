X-GM-THRID: 6212594982457442304
X-Received: by 10.182.52.226 with SMTP id w2mr19670579obo.40.1446483144342;
        Mon, 02 Nov 2015 08:52:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.133.41 with SMTP id oz9ls1021837obb.82.gmail; Mon, 02 Nov
 2015 08:52:23 -0800 (PST)
X-Received: by 10.182.226.195 with SMTP id ru3mr18992850obc.12.1446483143937;
        Mon, 02 Nov 2015 08:52:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si2058913pab.1.2015.11.02.08.52.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 08:52:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 891768D4;
	Mon,  2 Nov 2015 16:52:23 +0000 (UTC)
Date: Mon, 2 Nov 2015 08:52:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: linux-cpu: Remove
 unnecessary wrapper functions
Message-ID: <20151102165223.GA12839@kroah.com>
References: <20151102164119.GA32817@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151102164119.GA32817@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Nov 02, 2015 at 10:11:19PM +0530, Shivani Bhardwaj wrote:
> Remove the functions cfs_cpu_core_siblings(), cfs_cpu_ht_siblings(),
> cfs_node_to_cpumask() and replace their calls with the functions they
> wrapped.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  .../staging/lustre/lustre/libcfs/linux/linux-cpu.c | 30 +++++-----------------
>  1 file changed, 7 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
> index 2097364..31719af 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
> @@ -78,23 +78,6 @@ struct cfs_cpt_data {
>  
>  static struct cfs_cpt_data	cpt_data;
>  
> -static void cfs_cpu_core_siblings(int cpu, cpumask_t *mask)
> -{
> -	/* return cpumask of cores in the same socket */
> -	cpumask_copy(mask, topology_core_cpumask(cpu));
> -}
> -
> -/* return cpumask of HTs in the same core */
> -static void cfs_cpu_ht_siblings(int cpu, cpumask_t *mask)
> -{
> -	cpumask_copy(mask, topology_sibling_cpumask(cpu));
> -}
> -
> -static void cfs_node_to_cpumask(int node, cpumask_t *mask)
> -{
> -	cpumask_copy(mask, cpumask_of_node(node));
> -}
> 

Please remove one of these at a time, it makes it much easier to review
the patch.

thanks,

greg k-h

