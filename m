X-GM-THRID: 6398158236087746560
X-Received: by 10.46.15.2 with SMTP id 2mr1619251ljp.31.1489690103282;
        Thu, 16 Mar 2017 11:48:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls465253lja.1.gmail; Thu, 16 Mar 2017
 11:48:22 -0700 (PDT)
X-Received: by 10.25.150.2 with SMTP id y2mr1429303lfd.21.1489690102235;
        Thu, 16 Mar 2017 11:48:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si371752wmg.3.2017.03.16.11.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:48:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,173,1486422000"; 
   d="scan'208";a="264905880"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2017 19:48:20 +0100
Date: Thu, 16 Mar 2017 19:48:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: lustre: libcfs: Replace
 printk() with pr_*()
In-Reply-To: <3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703161947320.3497@hadrien>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com> <3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Convert printk() calls into corresponding pr_*() calls.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/lustre/lnet/libcfs/tracefile.c | 58 ++++++++++++--------------
>  1 file changed, 26 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> index d7b29f8..c70f36e 100644
> --- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
> +++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> @@ -192,9 +192,8 @@ int cfs_trace_refill_stock(struct cfs_trace_cpu_data *tcd, gfp_t gfp,
>  			if (unlikely(!tage)) {
>  				if ((!memory_pressure_get() ||
>  				     in_interrupt()) && printk_ratelimit())
> -					printk(KERN_WARNING
> -					       "cannot allocate a tage (%ld)\n",
> -					       tcd->tcd_cur_pages);
> +					pr_warn("cannot allocate a tage (%ld)\n",
> +						tcd->tcd_cur_pages);
>  				return NULL;
>  			}
>  		}
> @@ -230,8 +229,8 @@ static void cfs_tcd_shrink(struct cfs_trace_cpu_data *tcd)
>  	 */
>
>  	if (printk_ratelimit())
> -		printk(KERN_WARNING "debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
> -		       pgcount + 1, tcd->tcd_cur_pages);
> +		pr_warn("debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
> +			pgcount + 1, tcd->tcd_cur_pages);
>
>  	INIT_LIST_HEAD(&pc.pc_pages);
>
> @@ -358,8 +357,7 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
>
>  		max_nob = PAGE_SIZE - tage->used - known_size;
>  		if (max_nob <= 0) {
> -			printk(KERN_EMERG "negative max_nob: %d\n",
> -			       max_nob);
> +			pr_emerg("negative max_nob: %d\n", max_nob);
>  			mask |= D_ERROR;
>  			cfs_trace_put_tcd(tcd);
>  			tcd = NULL;
> @@ -389,8 +387,8 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
>  	}
>
>  	if (*(string_buf + needed - 1) != '\n')
> -		printk(KERN_INFO "format at %s:%d:%s doesn't end in newline\n",
> -		       file, msgdata->msg_line, msgdata->msg_fn);
> +		pr_info("format at %s:%d:%s doesn't end in newline\n", file,
> +			msgdata->msg_line, msgdata->msg_fn);
>
>  	header.ph_len = known_size + needed;
>  	debug_buf = (char *)page_address(tage->page) + tage->used;
> @@ -713,8 +711,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  	if (IS_ERR(filp)) {
>  		rc = PTR_ERR(filp);
>  		filp = NULL;
> -		pr_err("LustreError: can't open %s for dump: rc %d\n",
> -		       filename, rc);
> +		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
> +		       rc);

This change is not covered by the log message.

julia


>  		goto out;
>  	}
>
> @@ -739,8 +737,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  		kunmap(tage->page);
>
>  		if (rc != (int)tage->used) {
> -			printk(KERN_WARNING "wanted to write %u but wrote %d\n",
> -			       tage->used, rc);
> +			pr_warn("wanted to write %u but wrote %d\n", tage->used,
> +				rc);
>  			put_pages_back(&pc);
>  			__LASSERT(list_empty(&pc.pc_pages));
>  			break;
> @@ -894,10 +892,9 @@ int cfs_trace_daemon_command(char *str)
>  	} else {
>  		strcpy(cfs_tracefile, str);
>
> -		printk(KERN_INFO
> -		       "Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> -		       cfs_tracefile,
> -		       (long)(cfs_tracefile_size >> 10));
> +		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> +			cfs_tracefile,
> +			(long)(cfs_tracefile_size >> 10));
>
>  		cfs_trace_start_thread();
>  	}
> @@ -933,16 +930,14 @@ int cfs_trace_set_debug_mb(int mb)
>  	struct cfs_trace_cpu_data *tcd;
>
>  	if (mb < num_possible_cpus()) {
> -		printk(KERN_WARNING
> -		       "Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> -		       mb, num_possible_cpus());
> +		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> +			mb, num_possible_cpus());
>  		mb = num_possible_cpus();
>  	}
>
>  	if (mb > limit) {
> -		printk(KERN_WARNING
> -		       "Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> -		       mb, limit);
> +		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> +			mb, limit);
>  		mb = limit;
>  	}
>
> @@ -1010,8 +1005,8 @@ static int tracefiled(void *arg)
>  			if (IS_ERR(filp)) {
>  				rc = PTR_ERR(filp);
>  				filp = NULL;
> -				printk(KERN_WARNING "couldn't open %s: %d\n",
> -				       cfs_tracefile, rc);
> +				pr_warn("couldn't open %s: %d\n", cfs_tracefile,
> +					rc);
>  			}
>  		}
>  		cfs_tracefile_read_unlock();
> @@ -1039,8 +1034,8 @@ static int tracefiled(void *arg)
>  			kunmap(tage->page);
>
>  			if (rc != (int)tage->used) {
> -				printk(KERN_WARNING "wanted to write %u but wrote %d\n",
> -				       tage->used, rc);
> +				pr_warn("wanted to write %u but wrote %d\n",
> +					tage->used, rc);
>  				put_pages_back(&pc);
>  				__LASSERT(list_empty(&pc.pc_pages));
>  				break;
> @@ -1053,7 +1048,7 @@ static int tracefiled(void *arg)
>  		if (!list_empty(&pc.pc_pages)) {
>  			int i;
>
> -			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
> +			pr_alert("Lustre: trace pages aren't empty\n");
>  			pr_err("total cpus(%d): ", num_possible_cpus());
>  			for (i = 0; i < num_possible_cpus(); i++)
>  				if (cpu_online(i))
> @@ -1065,8 +1060,8 @@ static int tracefiled(void *arg)
>  			i = 0;
>  			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
>  						 linkage)
> -				pr_err("page %d belongs to cpu %d\n",
> -				       ++i, tage->cpu);
> +				pr_err("page %d belongs to cpu %d\n", ++i,
> +				       tage->cpu);
>  			pr_err("There are %d pages unwritten\n", i);
>  		}
>  		__LASSERT(list_empty(&pc.pc_pages));
> @@ -1123,8 +1118,7 @@ void cfs_trace_stop_thread(void)
>
>  	mutex_lock(&cfs_trace_thread_mutex);
>  	if (thread_running) {
> -		printk(KERN_INFO
> -		       "Lustre: shutting down debug daemon thread...\n");
> +		pr_info("Lustre: shutting down debug daemon thread...\n");
>  		atomic_set(&tctl->tctl_shutdown, 1);
>  		wait_for_completion(&tctl->tctl_stop);
>  		thread_running = 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

