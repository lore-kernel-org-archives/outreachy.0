X-GM-THRID: 5958272024576
X-Received: by 10.236.216.69 with SMTP id f65mr26346136yhp.58.1425315701442;
        Mon, 02 Mar 2015 09:01:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.10 with SMTP id l10ls1754739qge.73.gmail; Mon, 02 Mar
 2015 09:01:41 -0800 (PST)
X-Received: by 10.236.23.226 with SMTP id v62mr26885365yhv.25.1425315701288;
        Mon, 02 Mar 2015 09:01:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1602156pbc.1.2015.03.02.09.01.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:01:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E750099A;
	Mon,  2 Mar 2015 17:01:40 +0000 (UTC)
Date: Mon, 2 Mar 2015 09:01:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Tina Johnson <tinajohnson.1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: lustre: lustre:
 libcfs: Replaced printk() with pr_err() and pr_cont()
Message-ID: <20150302170140.GA15211@kroah.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
 <1425314747-9532-3-git-send-email-tinajohnson.1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425314747-9532-3-git-send-email-tinajohnson.1234@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 10:15:47PM +0530, Tina Johnson wrote:
> The following checkpatch warning was fixed:
> 
> Prefer [subsystem eg: netdev]_err([subsystem]dev
> 
> with the help of Coccinelle. pr_cont() was used to replace those printk
> statements which followed a printk that did not end with a '\n'. The following
> semantic patch was used to replace printk() with pr_err():
> 
> @a@
> expression e;
> @@
> 
> printk(e,...);
> 
> @script:python b@
> e << a.e;
> y;
> @@
> 
> import re
> match = re.match('KERN_ERR ', e);
> if (match == None):
>     cocci.include_match(False)
> 
> else:
>     m = re.sub('KERN_ERR ', '', e)
>     coccinelle.y = m;
> 
> @c@
> expression a.e;
> identifier b.y;
> @@
> 
> - printk(e,
> + pr_err(y,
>   ...);
> 
> Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
> ---
> Changes in v2:
>   - Replaced those printk statements which followed a printk
>     that did not end in '\n' with pr_cont() instead of
>     pr_err().
> 
>  drivers/staging/lustre/lustre/libcfs/tracefile.c |   26 ++++++++++------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> index eb65b50..f8d8a2f 100644
> --- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> @@ -224,8 +224,7 @@ static struct cfs_trace_page *cfs_trace_get_tage(struct cfs_trace_cpu_data *tcd,
>  	 */
>  
>  	if (len > PAGE_CACHE_SIZE) {
> -		printk(KERN_ERR
> -		       "cowardly refusing to write %lu bytes in a page\n", len);
> +		pr_err("cowardly refusing to write %lu bytes in a page\n", len);
>  		return NULL;
>  	}
>  
> @@ -688,8 +687,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  	if (IS_ERR(filp)) {
>  		rc = PTR_ERR(filp);
>  		filp = NULL;
> -		printk(KERN_ERR "LustreError: can't open %s for dump: rc %d\n",
> -		      filename, rc);
> +		pr_err("LustreError: can't open %s for dump: rc %d\n",
> +			filename, rc);
>  		goto out;
>  	}
>  
> @@ -726,7 +725,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  	MMSPACE_CLOSE;
>  	rc = vfs_fsync(filp, 1);
>  	if (rc)
> -		printk(KERN_ERR "sync returns %d\n", rc);
> +		pr_err("sync returns %d\n", rc);
>  close:
>  	filp_close(filp, NULL);
>  out:
> @@ -1048,22 +1047,21 @@ static int tracefiled(void *arg)
>  			int i;
>  
>  			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
> -			printk(KERN_ERR "total cpus(%d): ",
> -			       num_possible_cpus());
> +			pr_err("total cpus(%d): ",
> +				num_possible_cpus());
>  			for (i = 0; i < num_possible_cpus(); i++)
>  				if (cpu_online(i))
> -					printk(KERN_ERR "%d(on) ", i);
> +					pr_cont("%d(on) ", i);
>  				else
> -					printk(KERN_ERR "%d(off) ", i);
> -			printk(KERN_ERR "\n");
> +					pr_cont("%d(off) ", i);
> +			pr_cont("\n");
>  
>  			i = 0;
>  			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
>  						     linkage)
> -				printk(KERN_ERR "page %d belongs to cpu %d\n",
> -				       ++i, tage->cpu);
> -			printk(KERN_ERR "There are %d pages unwritten\n",
> -			       i);
> +				pr_err("page %d belongs to cpu %d\n",
> +					++i, tage->cpu);
> +			pr_err("There are %d pages unwritten\n", i);
>  		}
>  		__LASSERT(list_empty(&pc.pc_pages));
>  end_loop:

Are you sure you don't have access to a struct device somewhere in these
functions to use dev_err() instead?

thanks,

greg k-h

