X-GM-THRID: 6255876964906696704
X-Received: by 10.182.250.201 with SMTP id ze9mr4564280obc.0.1456560003884;
        Sat, 27 Feb 2016 00:00:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls413872qgd.51.gmail; Sat, 27 Feb
 2016 00:00:03 -0800 (PST)
X-Received: by 10.140.221.146 with SMTP id r140mr4384036qhb.20.1456560003073;
        Sat, 27 Feb 2016 00:00:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p10si512563igg.1.2016.02.27.00.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 00:00:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,507,1449529200"; 
   d="scan'208";a="166155698"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 09:00:00 +0100
Date: Sat, 27 Feb 2016 08:59:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use
 seq_puts/seq_putc
In-Reply-To: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602270858550.2284@localhost6.localdomain6>
References: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 27 Feb 2016, Bhumika Goyal wrote:

> This patch converts the seq_printf output with constant strings to
> seq_puts and also use seq_putc for seq_printf(...,"\n").
> Done using coccinelle:
> 
> @@
> identifier a;
> constant b;
> @@
> (
> - seq_printf(a,"\n");
> + seq_putc(a,'\n');
> |
> - seq_printf(a,b);
> + seq_puts(a,b);

You sem to get a good nmber of results with the first argument being an 
identifier, but I'm not sure why that has to be the case.  Unless you see 
a reason not to, you could allow it to be an expression.  Note that even 
a->b is not an identifier.  It is an expression.  An identifier is only a 
single word.

julia

> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 10 +++++-----
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17 ++++++-----------
>  2 files changed, 11 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> index b56dfb6..a0d8cce 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> @@ -462,19 +462,19 @@ locks: ...... ...... ...... ...... ...... [...... ...... ...... ...... ......]
>   */
>  	lu_site_stats_print(&site->cs_lu, m);
>  	cache_stats_print(&site->cs_pages, m, 1);
> -	seq_printf(m, " [");
> +	seq_puts(m, " [");
>  	for (i = 0; i < ARRAY_SIZE(site->cs_pages_state); ++i)
>  		seq_printf(m, "%s: %u ", pstate[i],
>  				atomic_read(&site->cs_pages_state[i]));
> -	seq_printf(m, "]\n");
> +	seq_puts(m, "]\n");
>  	cache_stats_print(&site->cs_locks, m, 0);
> -	seq_printf(m, " [");
> +	seq_puts(m, " [");
>  	for (i = 0; i < ARRAY_SIZE(site->cs_locks_state); ++i)
>  		seq_printf(m, "%s: %u ", lstate[i],
>  				atomic_read(&site->cs_locks_state[i]));
> -	seq_printf(m, "]\n");
> +	seq_puts(m, "]\n");
>  	cache_stats_print(&cl_env_stats, m, 0);
> -	seq_printf(m, "\n");
> +	seq_putc(m, '\n');
>  	return 0;
>  }
>  EXPORT_SYMBOL(cl_site_stats_print);
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index 28bb4e5..82a1fab 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -584,7 +584,7 @@ static int obd_import_flags2str(struct obd_import *imp, struct seq_file *m)
>  	bool first = true;
>  
>  	if (imp->imp_obd->obd_no_recov) {
> -		seq_printf(m, "no_recov");
> +		seq_puts(m, "no_recov");
>  		first = false;
>  	}
>  
> @@ -648,15 +648,10 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
>  		     ptlrpc_import_state_name(imp->imp_state),
>  		     imp->imp_connect_data.ocd_instance);
>  	obd_connect_seq_flags2str(m, imp->imp_connect_data.ocd_connect_flags, ", ");
> -	seq_printf(m,
> -		      " ]\n"
> -		      "    import_flags: [ ");
> +	seq_puts(m, " ]\n    import_flags: [ ");
>  	obd_import_flags2str(imp, m);
>  
> -	seq_printf(m,
> -		      " ]\n"
> -		      "    connection:\n"
> -		      "       failover_nids: [ ");
> +	seq_puts(m, " ]\n    connection:\n       failover_nids: [ ");
>  	spin_lock(&imp->imp_lock);
>  	j = 0;
>  	list_for_each_entry(conn, &imp->imp_conn_list, oic_item) {
> @@ -788,7 +783,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
>  
>  	seq_printf(m, "current_state: %s\n",
>  		     ptlrpc_import_state_name(imp->imp_state));
> -	seq_printf(m, "state_history:\n");
> +	seq_puts(m, "state_history:\n");
>  	k = imp->imp_state_hist_idx;
>  	for (j = 0; j < IMP_STATE_HIST_LEN; j++) {
>  		struct import_state_hist *ish =
> @@ -810,7 +805,7 @@ int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at)
>  
>  	for (i = 0; i < AT_BINS; i++)
>  		seq_printf(m, "%3u ", at->at_hist[i]);
> -	seq_printf(m, "\n");
> +	seq_putc(m, '\n');
>  	return 0;
>  }
>  EXPORT_SYMBOL(lprocfs_at_hist_helper);
> @@ -878,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
>  	flags = obd->u.cli.cl_import->imp_connect_data.ocd_connect_flags;
>  	seq_printf(m, "flags=%#llx\n", flags);
>  	obd_connect_seq_flags2str(m, flags, "\n");
> -	seq_printf(m, "\n");
> +	seq_putc(m, '\n');
>  	up_read(&obd->u.cli.cl_sem);
>  	return 0;
>  }
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456559840-7193-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

