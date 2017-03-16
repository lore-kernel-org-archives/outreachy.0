X-GM-THRID: 6398158236087746560
X-Received: by 10.46.19.1 with SMTP id 1mr1619204ljt.4.1489689954986;
        Thu, 16 Mar 2017 11:45:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls474994ljh.31.gmail; Thu, 16 Mar 2017
 11:45:53 -0700 (PDT)
X-Received: by 10.46.22.86 with SMTP id 22mr1644911ljw.9.1489689953928;
        Thu, 16 Mar 2017 11:45:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si405208wmh.1.2017.03.16.11.45.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:45:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,173,1486422000"; 
   d="scan'208";a="264905719"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2017 19:45:53 +0100
Date: Thu, 16 Mar 2017 19:45:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: lustre: libcfs: Define
 pr_fmt() to include relevant name
In-Reply-To: <c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703161945080.3497@hadrien>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com> <c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Define a pr_fmt() for tracefile.c
> Remove redundant prefix 'Lustre' from pr_*() calls.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/lustre/lnet/libcfs/tracefile.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> index c70f36e..72fd0c5 100644
> --- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
> +++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
> @@ -37,6 +37,7 @@
>
>  #define DEBUG_SUBSYSTEM S_LNET
>  #define LUSTRE_TRACEFILE_PRIVATE
> +#define pr_fmt(fmt) "Lustre: " fmt
>  #include "tracefile.h"
>
>  #include "../../include/linux/libcfs/libcfs.h"
> @@ -711,7 +712,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
>  	if (IS_ERR(filp)) {
>  		rc = PTR_ERR(filp);
>  		filp = NULL;
> -		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
> +		pr_err("Error: can't open %s for dump: rc %d\n", filename,
>  		       rc);

Maybe you don't really need the word Error.  It is not so common in pr_err
calls.

julia

>  		goto out;
>  	}
> @@ -892,7 +893,7 @@ int cfs_trace_daemon_command(char *str)
>  	} else {
>  		strcpy(cfs_tracefile, str);
>
> -		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
> +		pr_info("debug daemon will attempt to start writing to %s (%lukB max)\n",
>  			cfs_tracefile,
>  			(long)(cfs_tracefile_size >> 10));
>
> @@ -930,13 +931,13 @@ int cfs_trace_set_debug_mb(int mb)
>  	struct cfs_trace_cpu_data *tcd;
>
>  	if (mb < num_possible_cpus()) {
> -		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
> +		pr_warn("%d MB is too small for debug buffer size, setting it to %d MB.\n",
>  			mb, num_possible_cpus());
>  		mb = num_possible_cpus();
>  	}
>
>  	if (mb > limit) {
> -		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
> +		pr_warn("%d MB is too large for debug buffer size, setting it to %d MB.\n",
>  			mb, limit);
>  		mb = limit;
>  	}
> @@ -1048,7 +1049,7 @@ static int tracefiled(void *arg)
>  		if (!list_empty(&pc.pc_pages)) {
>  			int i;
>
> -			pr_alert("Lustre: trace pages aren't empty\n");
> +			pr_alert("trace pages aren't empty\n");
>  			pr_err("total cpus(%d): ", num_possible_cpus());
>  			for (i = 0; i < num_possible_cpus(); i++)
>  				if (cpu_online(i))
> @@ -1118,7 +1119,7 @@ void cfs_trace_stop_thread(void)
>
>  	mutex_lock(&cfs_trace_thread_mutex);
>  	if (thread_running) {
> -		pr_info("Lustre: shutting down debug daemon thread...\n");
> +		pr_info("shutting down debug daemon thread...\n");
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

