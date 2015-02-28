X-GM-THRID: 5152931053568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,711868de202b757d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr2911314lbb.20.1425160708352;
        Sat, 28 Feb 2015 13:58:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.131 with SMTP id am3ls307412lac.35.gmail; Sat, 28 Feb
 2015 13:58:27 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2866992lan.1.1425160707905;
        Sat, 28 Feb 2015 13:58:27 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id o3si367449wib.2.2015.02.28.13.58.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:58:27 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesk11 with SMTP id k11so26525666wes.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LY7L3MEsNJBnshckkWny0huG9aL2TfxMmIAyA0fFhUk=;
        b=kQKPIZSql4LRNNEFVN0QhZn4b0Bz0dUKqEhvdFkVOqIb69+Ay9ws2N+XlcUU0Q8r4Z
         Aqj7RsxKfKUNigmJ/zDgqNwnIaw+bxnx36eOpNcFniNZp7Yz98yeuaX2dV4KHPuy3ATU
         7Lgz2jGu9yrBrBrqvM6dPjiwbr1FsdVb7ZENzym2JdZqFEY9gdUmKLfwyxLutLZ0L5AN
         ytHoGbSvXk3O8V/Ay11niKE7LTnRsfpxubrjAp9FrEjOgLn4Jp4oIrN8nJJIMhjv8Hh9
         uTwyTQqFsQFwIcsAsvVH/G/pbVKwUAJDNVtKPfGESW95NXbWTCzezLrGOJwWCJNkMZfY
         oycw==
X-Received: by 10.194.156.202 with SMTP id wg10mr39336869wjb.70.1425160707753;
        Sat, 28 Feb 2015 13:58:27 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id u6sm8706327wix.12.2015.02.28.13.58.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:58:27 -0800 (PST)
Date: Sun, 1 Mar 2015 00:58:21 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: lustre: lustre: ldlm:
 Fix line over 80 characters
Message-ID: <20150228215821.GA8386@example.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
 <1425151043-30881-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1502281500440.2688@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502281500440.2688@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Feb 28, 2015 at 03:01:16PM -0500, Julia Lawall wrote:
> > -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> > +	LDLM_DEBUG(lock,
> > +			"client-side enqueue returned a blocked lock, sleeping");
> 
> This doesn't look very nice.  You could line the string up with the left
> side of lock.
> 
> julia
> 
> 

I don't know why, but this is lined right with lock in my editor.
why does it change when I send it out?

Thanks,
Haneen
> >  	fwd.fwd_lock = lock;
> >  	obd = class_exp2obd(lock->l_conn_export);
> >
> > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> > index 84b111e..bd8d458 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> > @@ -2229,13 +2229,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  		libcfs_debug_vmsg2(msgdata, fmt, args,
> >  				   " ns: \?\? lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: \?\? rrc=\?\? type: \?\?\? flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> >  				   lock,
> > -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> > +				   lock->l_handle.h_cookie,
> > +				   atomic_read(&lock->l_refc),
> >  				   lock->l_readers, lock->l_writers,
> >  				   ldlm_lockname[lock->l_granted_mode],
> >  				   ldlm_lockname[lock->l_req_mode],
> > -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> > +				   lock->l_flags, nid,
> > +				   lock->l_remote_handle.cookie,
> >  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> > -				   lock->l_pid, lock->l_callback_timeout, lock->l_lvb_type);
> > +				   lock->l_pid, lock->l_callback_timeout,
> > +				   lock->l_lvb_type);
> >  		va_end(args);
> >  		return;
> >  	}
> > @@ -2243,9 +2246,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  	switch (resource->lr_type) {
> >  	case LDLM_EXTENT:
> >  		libcfs_debug_vmsg2(msgdata, fmt, args,
> > -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> > +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> > +				   DLDLMRES
> > +				   " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> >  				   ldlm_lock_to_ns_name(lock), lock,
> > -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> > +				   lock->l_handle.h_cookie,
> > +				   atomic_read(&lock->l_refc),
> >  				   lock->l_readers, lock->l_writers,
> >  				   ldlm_lockname[lock->l_granted_mode],
> >  				   ldlm_lockname[lock->l_req_mode],
> > @@ -2254,8 +2260,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  				   ldlm_typename[resource->lr_type],
> >  				   lock->l_policy_data.l_extent.start,
> >  				   lock->l_policy_data.l_extent.end,
> > -				   lock->l_req_extent.start, lock->l_req_extent.end,
> > -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> > +				   lock->l_req_extent.start,
> > +				   lock->l_req_extent.end,
> > +				   lock->l_flags, nid,
> > +				   lock->l_remote_handle.cookie,
> >  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> >  				   lock->l_pid, lock->l_callback_timeout,
> >  				   lock->l_lvb_type);
> > @@ -2263,9 +2271,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >
> >  	case LDLM_FLOCK:
> >  		libcfs_debug_vmsg2(msgdata, fmt, args,
> > -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
> > +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> > +				   DLDLMRES
> > +				   " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
> >  				   ldlm_lock_to_ns_name(lock), lock,
> > -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> > +				   lock->l_handle.h_cookie,
> > +				   atomic_read(&lock->l_refc),
> >  				   lock->l_readers, lock->l_writers,
> >  				   ldlm_lockname[lock->l_granted_mode],
> >  				   ldlm_lockname[lock->l_req_mode],
> > @@ -2275,14 +2286,17 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  				   lock->l_policy_data.l_flock.pid,
> >  				   lock->l_policy_data.l_flock.start,
> >  				   lock->l_policy_data.l_flock.end,
> > -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> > +				   lock->l_flags, nid,
> > +				   lock->l_remote_handle.cookie,
> >  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> >  				   lock->l_pid, lock->l_callback_timeout);
> >  		break;
> >
> >  	case LDLM_IBITS:
> >  		libcfs_debug_vmsg2(msgdata, fmt, args,
> > -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> > +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> > +				   DLDLMRES
> > +				   " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> >  				   ldlm_lock_to_ns_name(lock),
> >  				   lock, lock->l_handle.h_cookie,
> >  				   atomic_read(&lock->l_refc),
> > @@ -2293,7 +2307,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  				   lock->l_policy_data.l_inodebits.bits,
> >  				   atomic_read(&resource->lr_refcount),
> >  				   ldlm_typename[resource->lr_type],
> > -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> > +				   lock->l_flags, nid,
> > +				   lock->l_remote_handle.cookie,
> >  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> >  				   lock->l_pid, lock->l_callback_timeout,
> >  				   lock->l_lvb_type);
> > @@ -2301,7 +2316,9 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >
> >  	default:
> >  		libcfs_debug_vmsg2(msgdata, fmt, args,
> > -				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> > +				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
> > +				   DLDLMRES
> > +				   " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> >  				   ldlm_lock_to_ns_name(lock),
> >  				   lock, lock->l_handle.h_cookie,
> >  				   atomic_read(&lock->l_refc),
> > @@ -2311,7 +2328,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> >  				   PLDLMRES(resource),
> >  				   atomic_read(&resource->lr_refcount),
> >  				   ldlm_typename[resource->lr_type],
> > -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> > +				   lock->l_flags,
> > +				   nid, lock->l_remote_handle.cookie,
> >  				   exp ? atomic_read(&exp->exp_refcount) : -99,
> >  				   lock->l_pid, lock->l_callback_timeout,
> >  				   lock->l_lvb_type);
> > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> > index e0a8157..cd15445 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> > @@ -202,7 +202,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
> >
> >  	lvb_len = req_capsule_get_size(&req->rq_pill, &RMF_DLM_LVB, RCL_CLIENT);
> >  	if (lvb_len < 0) {
> > -		LDLM_ERROR(lock, "Fail to get lvb_len, rc = %d", lvb_len);
> > +		LDLM_ERROR(lock,
> > +				"Fail to get lvb_len, rc = %d", lvb_len);
> >  		rc = lvb_len;
> >  		goto out;
> >  	} else if (lvb_len > 0) {
> > @@ -211,7 +212,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
> >  			LASSERT(lock->l_lvb_data != NULL);
> >
> >  			if (unlikely(lock->l_lvb_len < lvb_len)) {
> > -				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
> > +				LDLM_ERROR(lock,
> > +						"Replied LVB is larger than expectation, expected = %d, replied = %d",
> >  					   lock->l_lvb_len, lvb_len);
> >  				rc = -EINVAL;
> >  				goto out;
> > @@ -638,7 +640,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
> >
> >  	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
> >  	if (!lock) {
> > -		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
> > +		CDEBUG(D_DLMTRACE,
> > +				"callback on lock %#llx - lock disappeared\n",
> >  		       dlm_req->lock_handle[0].cookie);
> >  		rc = ldlm_callback_reply(req, -EINVAL);
> >  		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
> > @@ -662,7 +665,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
> >  		if (((lock->l_flags & LDLM_FL_CANCELING) &&
> >  		    (lock->l_flags & LDLM_FL_BL_DONE)) ||
> >  		    (lock->l_flags & LDLM_FL_FAILED)) {
> > -			LDLM_DEBUG(lock, "callback on lock %#llx - lock disappeared\n",
> > +			LDLM_DEBUG(lock,
> > +					"callback on lock %#llx - lock disappeared\n",
> >  				   dlm_req->lock_handle[0].cookie);
> >  			unlock_res_and_lock(lock);
> >  			LDLM_LOCK_RELEASE(lock);
> > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > index d20d277..3af2687 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> > @@ -605,10 +605,10 @@ int ldlm_pool_recalc(struct ldlm_pool *pl)
> >  			      pl->pl_recalc_period;
> >  	if (recalc_interval_sec <= 0) {
> >  		/* Prevent too frequent recalculation. */
> > -		CDEBUG(D_DLMTRACE, "Negative interval(%ld), "
> > -		       "too short period(%ld)",
> > -		       recalc_interval_sec,
> > -		       pl->pl_recalc_period);
> > +		CDEBUG(D_DLMTRACE,
> > +			"Negative interval(%ld), too short period(%ld)",
> > +			recalc_interval_sec,
> > +			pl->pl_recalc_period);
> >  		recalc_interval_sec = 1;
> >  	}
> >
> > @@ -634,7 +634,8 @@ int ldlm_pool_shrink(struct ldlm_pool *pl, int nr,
> >  			lprocfs_counter_add(pl->pl_stats,
> >  					    LDLM_POOL_SHRINK_FREED_STAT,
> >  					    cancel);
> > -			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
> > +			CDEBUG(D_DLMTRACE,
> > +					"%s: request to shrink %d locks, shrunk %d\n",
> >  			       pl->pl_name, nr, cancel);
> >  		}
> >  	}
> > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> > index c6f62a9..898f896 100644
> > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> > @@ -193,7 +193,8 @@ static ssize_t lprocfs_lru_size_seq_write(struct file *file,
> >  					const char __user *buffer,
> >  					size_t count, loff_t *off)
> >  {
> > -	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
> > +	struct ldlm_namespace *ns =
> > +		((struct seq_file *)file->private_data)->private;
> >  	char dummy[MAX_STRING_SIZE + 1];
> >  	unsigned long tmp;
> >  	int lru_resize;
> > @@ -291,7 +292,8 @@ static ssize_t lprocfs_elc_seq_write(struct file *file,
> >  				const char __user *buffer,
> >  				size_t count, loff_t *off)
> >  {
> > -	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
> > +	struct ldlm_namespace *ns =
> > +		((struct seq_file *)file->private_data)->private;
> >  	unsigned int supp = -1;
> >  	int rc;
> >
> > @@ -738,7 +740,8 @@ static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
> >  		} else {
> >  			ldlm_resource_unlink_lock(lock);
> >  			unlock_res(res);
> > -			LDLM_DEBUG(lock, "Freeing a lock still held by a client node");
> > +			LDLM_DEBUG(lock,
> > +					"Freeing a lock still held by a client node");
> >  			ldlm_lock_destroy(lock);
> >  		}
> >  		LDLM_LOCK_RELEASE(lock);
> > @@ -1406,7 +1409,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
> >  			LDLM_DEBUG_LIMIT(level, lock, "###");
> >  			if (!(level & D_CANTMASK) &&
> >  			    ++granted > ldlm_dump_granted_max) {
> > -				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
> > +				CDEBUG(level,
> > +					"only dump %d granted locks to avoid DDOS.\n",
> >  				       granted);
> >  				break;
> >  			}
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425151043-30881-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

