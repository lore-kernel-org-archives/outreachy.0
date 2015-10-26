X-GM-THRID: 6208213403443396608
X-Received: by 10.28.173.83 with SMTP id w80mr439531wme.0.1445873207958;
        Mon, 26 Oct 2015 08:26:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.198 with SMTP id cg6ls350755wib.37.canary; Mon, 26 Oct
 2015 08:26:47 -0700 (PDT)
X-Received: by 10.194.21.230 with SMTP id y6mr4391484wje.4.1445873207534;
        Mon, 26 Oct 2015 08:26:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id em5si452088wib.2.2015.10.26.08.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 08:26:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,201,1444687200"; 
   d="scan'208";a="151788359"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Oct 2015 16:26:46 +0100
Date: Mon, 26 Oct 2015 16:26:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: lustre: Replace
 LPROCFS_CLIMP_EXIT with up_read
In-Reply-To: <0e2d7570c644c1de4d1cf681e6f13de3e0fb1ff7.1445871650.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1510261626040.2521@hadrien>
References: <cover.1445871650.git.ksenija.stanojevic@gmail.com> <0e2d7570c644c1de4d1cf681e6f13de3e0fb1ff7.1445871650.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 26 Oct 2015, Ksenija Stanojevic wrote:

> In all call sites type of argument that macro LPROCFS_CLIMP_EXIT
> use is the same, so replace it with up_read function.
> Also remove the macro since it's no longer used.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> Changes in v2:
>  - remove macro in this patch and not in separate one.
>  - use up_read and not a static inline wrapper function
>
>  drivers/staging/lustre/lustre/include/lprocfs_status.h  |  3 ---
>  drivers/staging/lustre/lustre/mgc/mgc_request.c         |  2 +-
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 12 ++++++------
>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c     |  6 +++---
>  4 files changed, 10 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
> index 089e5a3..532d195 100644
> --- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
> +++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
> @@ -626,9 +626,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
>  int lprocfs_single_release(struct inode *, struct file *);
>  int lprocfs_seq_release(struct inode *, struct file *);
>
> -#define LPROCFS_CLIMP_EXIT(obd)		 \
> -	up_read(&(obd)->u.cli.cl_sem)
> -
>  /* write the name##_seq_show function, call LPROC_SEQ_FOPS_RO for read-only
>    proc entries; otherwise, you will define name##_seq_write function also for
>    a read-write proc entry, and then call LPROC_SEQ_SEQ instead. Finally,
> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> index b81efcd..95c5f14 100644
> --- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
> +++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> @@ -463,7 +463,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
>  	}
>  	spin_unlock(&config_list_lock);
>
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);

I don't think you need the parentheses.

julia

>  	return 0;
>  }
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index 4494096..694dcde 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -502,7 +502,7 @@ int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
>  		   obd2cli_tgt(obd), imp_state_name,
>  		   imp->imp_deactive ? "\tDEACTIVATED" : "");
>
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>
>  	return 0;
>  }
> @@ -526,7 +526,7 @@ int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
>  	else
>  		seq_puts(m, "<none>\n");
>
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>
>  	return 0;
>  }
> @@ -762,7 +762,7 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
>  	}
>
>  out_climp:
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>  	return 0;
>  }
>  EXPORT_SYMBOL(lprocfs_rd_import);
> @@ -793,7 +793,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
>  			   ptlrpc_import_state_name(ish->ish_state));
>  	}
>
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>  	return 0;
>  }
>  EXPORT_SYMBOL(lprocfs_rd_state);
> @@ -854,7 +854,7 @@ int lprocfs_rd_timeouts(struct seq_file *m, void *data)
>  		lprocfs_at_hist_helper(m, &imp->imp_at.iat_service_estimate[i]);
>  	}
>
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>  	return 0;
>  }
>  EXPORT_SYMBOL(lprocfs_rd_timeouts);
> @@ -873,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
>  	seq_printf(m, "flags=%#llx\n", flags);
>  	obd_connect_seq_flags2str(m, flags, "\n");
>  	seq_printf(m, "\n");
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>  	return 0;
>  }
>  EXPORT_SYMBOL(lprocfs_rd_connect_flags);
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> index 33184c7..c2773b58 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> @@ -1194,7 +1194,7 @@ int lprocfs_wr_ping(struct file *file, const char __user *buffer,
>  		return rc;
>
>  	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>  	if (req == NULL)
>  		return -ENOMEM;
>
> @@ -1288,7 +1288,7 @@ int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
>  		return rc;
>
>  	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>
>  	return 0;
>  }
> @@ -1316,7 +1316,7 @@ int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
>  	spin_lock(&imp->imp_lock);
>  	imp->imp_no_pinger_recover = !val;
>  	spin_unlock(&imp->imp_lock);
> -	LPROCFS_CLIMP_EXIT(obd);
> +	up_read(&(obd)->u.cli.cl_sem);
>
>  	return count;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0e2d7570c644c1de4d1cf681e6f13de3e0fb1ff7.1445871650.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

