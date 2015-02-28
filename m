X-GM-THRID: 5152931053568
X-Received: by 10.112.199.69 with SMTP id ji5mr2839798lbc.0.1425153680635;
        Sat, 28 Feb 2015 12:01:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls274465laa.66.gmail; Sat, 28 Feb
 2015 12:01:20 -0800 (PST)
X-Received: by 10.112.16.102 with SMTP id f6mr295652lbd.19.1425153680188;
        Sat, 28 Feb 2015 12:01:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si358911wib.2.2015.02.28.12.01.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 12:01:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="101651980"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 21:01:19 +0100
Date: Sat, 28 Feb 2015 15:01:16 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: lustre: lustre: ldlm:
 Fix line over 80 characters
In-Reply-To: <1425151043-30881-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502281500440.2688@hadrien>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com> <1425151043-30881-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> +	LDLM_DEBUG(lock,
> +			"client-side enqueue returned a blocked lock, sleeping");

This doesn't look very nice.  You could line the string up with the left
side of lock.

julia


>  	fwd.fwd_lock = lock;
>  	obd = class_exp2obd(lock->l_conn_export);
>
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> index 84b111e..bd8d458 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> @@ -2229,13 +2229,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  		libcfs_debug_vmsg2(msgdata, fmt, args,
>  				   " ns: \?\? lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: \?\? rrc=\?\? type: \?\?\? flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
>  				   lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
>  				   lock->l_readers, lock->l_writers,
>  				   ldlm_lockname[lock->l_granted_mode],
>  				   ldlm_lockname[lock->l_req_mode],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
>  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> -				   lock->l_pid, lock->l_callback_timeout, lock->l_lvb_type);
> +				   lock->l_pid, lock->l_callback_timeout,
> +				   lock->l_lvb_type);
>  		va_end(args);
>  		return;
>  	}
> @@ -2243,9 +2246,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  	switch (resource->lr_type) {
>  	case LDLM_EXTENT:
>  		libcfs_debug_vmsg2(msgdata, fmt, args,
> -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> +				   DLDLMRES
> +				   " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
>  				   ldlm_lock_to_ns_name(lock), lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
>  				   lock->l_readers, lock->l_writers,
>  				   ldlm_lockname[lock->l_granted_mode],
>  				   ldlm_lockname[lock->l_req_mode],
> @@ -2254,8 +2260,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  				   ldlm_typename[resource->lr_type],
>  				   lock->l_policy_data.l_extent.start,
>  				   lock->l_policy_data.l_extent.end,
> -				   lock->l_req_extent.start, lock->l_req_extent.end,
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_req_extent.start,
> +				   lock->l_req_extent.end,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
>  				   exp ? atomic_read(&exp->exp_refcount) : -99,
>  				   lock->l_pid, lock->l_callback_timeout,
>  				   lock->l_lvb_type);
> @@ -2263,9 +2271,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>
>  	case LDLM_FLOCK:
>  		libcfs_debug_vmsg2(msgdata, fmt, args,
> -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
> +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> +				   DLDLMRES
> +				   " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
>  				   ldlm_lock_to_ns_name(lock), lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
>  				   lock->l_readers, lock->l_writers,
>  				   ldlm_lockname[lock->l_granted_mode],
>  				   ldlm_lockname[lock->l_req_mode],
> @@ -2275,14 +2286,17 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  				   lock->l_policy_data.l_flock.pid,
>  				   lock->l_policy_data.l_flock.start,
>  				   lock->l_policy_data.l_flock.end,
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
>  				   exp ? atomic_read(&exp->exp_refcount) : -99,
>  				   lock->l_pid, lock->l_callback_timeout);
>  		break;
>
>  	case LDLM_IBITS:
>  		libcfs_debug_vmsg2(msgdata, fmt, args,
> -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> +				   DLDLMRES
> +				   " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
>  				   ldlm_lock_to_ns_name(lock),
>  				   lock, lock->l_handle.h_cookie,
>  				   atomic_read(&lock->l_refc),
> @@ -2293,7 +2307,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  				   lock->l_policy_data.l_inodebits.bits,
>  				   atomic_read(&resource->lr_refcount),
>  				   ldlm_typename[resource->lr_type],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
>  				   exp ? atomic_read(&exp->exp_refcount) : -99,
>  				   lock->l_pid, lock->l_callback_timeout,
>  				   lock->l_lvb_type);
> @@ -2301,7 +2316,9 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>
>  	default:
>  		libcfs_debug_vmsg2(msgdata, fmt, args,
> -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> +				   DLDLMRES
> +				   " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
>  				   ldlm_lock_to_ns_name(lock),
>  				   lock, lock->l_handle.h_cookie,
>  				   atomic_read(&lock->l_refc),
> @@ -2311,7 +2328,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
>  				   PLDLMRES(resource),
>  				   atomic_read(&resource->lr_refcount),
>  				   ldlm_typename[resource->lr_type],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags,
> +				   nid, lock->l_remote_handle.cookie,
>  				   exp ? atomic_read(&exp->exp_refcount) : -99,
>  				   lock->l_pid, lock->l_callback_timeout,
>  				   lock->l_lvb_type);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> index e0a8157..cd15445 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> @@ -202,7 +202,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
>
>  	lvb_len = req_capsule_get_size(&req->rq_pill, &RMF_DLM_LVB, RCL_CLIENT);
>  	if (lvb_len < 0) {
> -		LDLM_ERROR(lock, "Fail to get lvb_len, rc = %d", lvb_len);
> +		LDLM_ERROR(lock,
> +				"Fail to get lvb_len, rc = %d", lvb_len);
>  		rc = lvb_len;
>  		goto out;
>  	} else if (lvb_len > 0) {
> @@ -211,7 +212,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
>  			LASSERT(lock->l_lvb_data != NULL);
>
>  			if (unlikely(lock->l_lvb_len < lvb_len)) {
> -				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
> +				LDLM_ERROR(lock,
> +						"Replied LVB is larger than expectation, expected = %d, replied = %d",
>  					   lock->l_lvb_len, lvb_len);
>  				rc = -EINVAL;
>  				goto out;
> @@ -638,7 +640,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
>
>  	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
>  	if (!lock) {
> -		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
> +		CDEBUG(D_DLMTRACE,
> +				"callback on lock %#llx - lock disappeared\n",
>  		       dlm_req->lock_handle[0].cookie);
>  		rc = ldlm_callback_reply(req, -EINVAL);
>  		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
> @@ -662,7 +665,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
>  		if (((lock->l_flags & LDLM_FL_CANCELING) &&
>  		    (lock->l_flags & LDLM_FL_BL_DONE)) ||
>  		    (lock->l_flags & LDLM_FL_FAILED)) {
> -			LDLM_DEBUG(lock, "callback on lock %#llx - lock disappeared\n",
> +			LDLM_DEBUG(lock,
> +					"callback on lock %#llx - lock disappeared\n",
>  				   dlm_req->lock_handle[0].cookie);
>  			unlock_res_and_lock(lock);
>  			LDLM_LOCK_RELEASE(lock);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> index d20d277..3af2687 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> @@ -605,10 +605,10 @@ int ldlm_pool_recalc(struct ldlm_pool *pl)
>  			      pl->pl_recalc_period;
>  	if (recalc_interval_sec <= 0) {
>  		/* Prevent too frequent recalculation. */
> -		CDEBUG(D_DLMTRACE, "Negative interval(%ld), "
> -		       "too short period(%ld)",
> -		       recalc_interval_sec,
> -		       pl->pl_recalc_period);
> +		CDEBUG(D_DLMTRACE,
> +			"Negative interval(%ld), too short period(%ld)",
> +			recalc_interval_sec,
> +			pl->pl_recalc_period);
>  		recalc_interval_sec = 1;
>  	}
>
> @@ -634,7 +634,8 @@ int ldlm_pool_shrink(struct ldlm_pool *pl, int nr,
>  			lprocfs_counter_add(pl->pl_stats,
>  					    LDLM_POOL_SHRINK_FREED_STAT,
>  					    cancel);
> -			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
> +			CDEBUG(D_DLMTRACE,
> +					"%s: request to shrink %d locks, shrunk %d\n",
>  			       pl->pl_name, nr, cancel);
>  		}
>  	}
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> index c6f62a9..898f896 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> @@ -193,7 +193,8 @@ static ssize_t lprocfs_lru_size_seq_write(struct file *file,
>  					const char __user *buffer,
>  					size_t count, loff_t *off)
>  {
> -	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
> +	struct ldlm_namespace *ns =
> +		((struct seq_file *)file->private_data)->private;
>  	char dummy[MAX_STRING_SIZE + 1];
>  	unsigned long tmp;
>  	int lru_resize;
> @@ -291,7 +292,8 @@ static ssize_t lprocfs_elc_seq_write(struct file *file,
>  				const char __user *buffer,
>  				size_t count, loff_t *off)
>  {
> -	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
> +	struct ldlm_namespace *ns =
> +		((struct seq_file *)file->private_data)->private;
>  	unsigned int supp = -1;
>  	int rc;
>
> @@ -738,7 +740,8 @@ static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
>  		} else {
>  			ldlm_resource_unlink_lock(lock);
>  			unlock_res(res);
> -			LDLM_DEBUG(lock, "Freeing a lock still held by a client node");
> +			LDLM_DEBUG(lock,
> +					"Freeing a lock still held by a client node");
>  			ldlm_lock_destroy(lock);
>  		}
>  		LDLM_LOCK_RELEASE(lock);
> @@ -1406,7 +1409,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
>  			LDLM_DEBUG_LIMIT(level, lock, "###");
>  			if (!(level & D_CANTMASK) &&
>  			    ++granted > ldlm_dump_granted_max) {
> -				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
> +				CDEBUG(level,
> +					"only dump %d granted locks to avoid DDOS.\n",
>  				       granted);
>  				break;
>  			}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425151043-30881-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

