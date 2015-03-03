X-GM-THRID: 6291009306624
X-Received: by 10.180.101.101 with SMTP id ff5mr3331911wib.5.1425421171077;
        Tue, 03 Mar 2015 14:19:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.99 with SMTP id lf3ls112812lac.4.gmail; Tue, 03 Mar
 2015 14:19:30 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr169331lbc.0.1425421170531;
        Tue, 03 Mar 2015 14:19:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si978916wic.1.2015.03.03.14.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 14:19:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,684,1418079600"; 
   d="scan'208";a="102003938"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 23:19:29 +0100
Date: Tue, 3 Mar 2015 17:19:27 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Supriya Karanth <iskaranth@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: remove initialization
 of static ints
In-Reply-To: <1425394101-8180-1-git-send-email-iskaranth@gmail.com>
Message-ID: <alpine.DEB.2.10.1503031718180.2677@hadrien>
References: <1425394101-8180-1-git-send-email-iskaranth@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> changes made using coccinelle script:
> @@
> type T;
> identifier var;
> @@
>
> -static T var = 0;
> +static T var;

It probably doesn't matter in this case, but in general with Coccinelle,
it is better not to remove code and then add it back, because when you add
it back, it is the Coccinelle pretty printer that decides what to do?  So
you could write this with:

static T var
- = 0
  ;

julia


>
> Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c | 2 +-
>  drivers/staging/lustre/lustre/libcfs/tracefile.c        | 2 +-
>  drivers/staging/lustre/lustre/llite/statahead.c         | 2 +-
>  drivers/staging/lustre/lustre/mgc/mgc_request.c         | 2 +-
>  drivers/staging/lustre/lustre/obdclass/genops.c         | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lu_object.c      | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/pack_generic.c     | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/pinger.c           | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c          | 2 +-
>  10 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
> index 0f65929..3100cb1 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-proc.c
> @@ -165,7 +165,7 @@ static int proc_dobitmasks(struct ctl_table *table, int write,
>  				 __proc_dobitmasks);
>  }
>
> -static int min_watchdog_ratelimit = 0;	  /* disable ratelimiting */
> +static int min_watchdog_ratelimit;	  /* disable ratelimiting */
>  static int max_watchdog_ratelimit = (24*60*60); /* limit to once per day */
>
>  static int __proc_dump_kernel(void *data, int write,
> diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> index eb65b50..86c38e1 100644
> --- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
> @@ -53,7 +53,7 @@ char cfs_tracefile[TRACEFILE_NAME_SIZE];
>  long long cfs_tracefile_size = CFS_TRACEFILE_SIZE;
>  static struct tracefiled_ctl trace_tctl;
>  struct mutex cfs_trace_thread_mutex;
> -static int thread_running = 0;
> +static int thread_running;
>
>  static atomic_t cfs_tage_allocated = ATOMIC_INIT(0);
>
> diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
> index 6ad9dd0..fe732fa 100644
> --- a/drivers/staging/lustre/lustre/llite/statahead.c
> +++ b/drivers/staging/lustre/lustre/llite/statahead.c
> @@ -84,7 +84,7 @@ struct ll_sa_entry {
>  	struct qstr	     se_qstr;
>  };
>
> -static unsigned int sai_generation = 0;
> +static unsigned int sai_generation;
>  static DEFINE_SPINLOCK(sai_generation_lock);
>
>  static inline int ll_sa_entry_unhashed(struct ll_sa_entry *entry)
> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> index b244575..0375bfe 100644
> --- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
> +++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> @@ -479,7 +479,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
>  #define RQ_NOW     0x2
>  #define RQ_LATER   0x4
>  #define RQ_STOP    0x8
> -static int		    rq_state = 0;
> +static int rq_state;
>  static wait_queue_head_t	    rq_waitq;
>  static DECLARE_COMPLETION(rq_exit);
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
> index 8250821..6d440b4 100644
> --- a/drivers/staging/lustre/lustre/obdclass/genops.c
> +++ b/drivers/staging/lustre/lustre/obdclass/genops.c
> @@ -1559,7 +1559,7 @@ void obd_exports_barrier(struct obd_device *obd)
>  EXPORT_SYMBOL(obd_exports_barrier);
>
>  /* Total amount of zombies to be destroyed */
> -static int zombies_count = 0;
> +static int zombies_count;
>
>  /**
>   * kill zombie imports and exports
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index 55e8081..c171c6c 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -223,7 +223,7 @@ EXPORT_SYMBOL(lprocfs_write_frac_helper);
>
>  #if defined (CONFIG_PROC_FS)
>
> -static int lprocfs_no_percpu_stats = 0;
> +static int lprocfs_no_percpu_stats;
>  module_param(lprocfs_no_percpu_stats, int, 0644);
>  MODULE_PARM_DESC(lprocfs_no_percpu_stats, "Do not alloc percpu data for lprocfs stats");
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> index d2311f2..20c0779 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> @@ -1308,7 +1308,7 @@ static DEFINE_SPINLOCK(lu_keys_guard);
>   * lu_context_refill(). No locking is provided, as initialization and shutdown
>   * are supposed to be externally serialized.
>   */
> -static unsigned key_set_version = 0;
> +static unsigned key_set_version;
>
>  /**
>   * Register new key.
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> index 2f45f765..eb6ff90 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
> @@ -117,7 +117,7 @@ EXPORT_SYMBOL(lustre_msg_check_version);
>  /* early reply size */
>  int lustre_msg_early_size(void)
>  {
> -	static int size = 0;
> +	static int size;
>  	if (!size) {
>  		/* Always reply old ptlrpc_body_v2 to keep interoprability
>  		 * with the old client (< 2.3) which doesn't have pb_jobid
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> index 340d98a..9dbda93 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> @@ -545,7 +545,7 @@ void ptlrpc_pinger_wake_up(void)
>  #define PET_READY     1
>  #define PET_TERMINATE 2
>
> -static int	       pet_refcount = 0;
> +static int pet_refcount;
>  static int	       pet_state;
>  static wait_queue_head_t       pet_waitq;
>  LIST_HEAD(pet_list);
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
> index 4621b71..8f7be84 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c
> @@ -85,7 +85,7 @@ MODULE_PARM_DESC(ptlrpcd_bind_policy, "Ptlrpcd threads binding mode.");
>  static struct ptlrpcd *ptlrpcds;
>
>  struct mutex ptlrpcd_mutex;
> -static int ptlrpcd_users = 0;
> +static int ptlrpcd_users;
>
>  void ptlrpcd_wake(struct ptlrpc_request *req)
>  {
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425394101-8180-1-git-send-email-iskaranth%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

