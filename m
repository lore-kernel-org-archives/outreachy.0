X-GM-THRID: 4945298325504
X-Received: by 10.140.235.83 with SMTP id g80mr17822805qhc.5.1425725783824;
        Sat, 07 Mar 2015 02:56:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.230 with SMTP id o6ls442260igv.30.gmail; Sat, 07 Mar
 2015 02:56:23 -0800 (PST)
X-Received: by 10.66.157.129 with SMTP id wm1mr17890868pab.15.1425725783601;
        Sat, 07 Mar 2015 02:56:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1691295pac.2.2015.03.07.02.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9B59990;
	Sat,  7 Mar 2015 10:56:22 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:41:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: lustre: line over 80
 characters
Message-ID: <20150306234154.GA20001@kroah.com>
References: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>
 <1425468890-10873-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425468890-10873-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 04, 2015 at 02:34:50PM +0300, Haneen Mohammed wrote:
> This patch splits line over 80 characters addressing checkpatch.pl warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  v5: address identation problem
>  v4: solve problems with identation
> 
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 33 +++++++++++++++--------
>  1 file changed, 22 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> index 53226b8..ddfae44 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -102,10 +102,13 @@ int ldlm_expired_completion_wait(void *data)
>  			      lock->l_last_activity,
>  			      cfs_time_sub(get_seconds(),
>  					   lock->l_last_activity));
> -		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
> +		LDLM_DEBUG(lock,
> +			   "lock timed out (enqueued at "
> +			   CFS_TIME_T ", " CFS_DURATION_T
> +			   "s ago); not entering recovery in server code, just going back to sleep",
>  			   lock->l_last_activity,
>  			   cfs_time_sub(get_seconds(),
> -					lock->l_last_activity));
> +			   lock->l_last_activity));
>  		if (cfs_time_after(cfs_time_current(), next_dump)) {
>  			last_dump = next_dump;
>  			next_dump = cfs_time_shift(300);
> @@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return ldlm_completion_tail(lock);
>  	}
>  
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
> +	LDLM_DEBUG(lock,
> +		   "client-side enqueue returned a blocked lock, going forward");
>  	ldlm_reprocess_all(lock->l_resource);
>  	return 0;
>  }
> @@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return 0;
>  	}
>  
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> +	LDLM_DEBUG(lock,
> +		   "client-side enqueue returned a blocked lock, sleeping");
>  
>  noreproc:
>  
> @@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
>  		if (rc < 0)
>  			CERROR("ldlm_cli_cancel: %d\n", rc);
>  	} else {
> -		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
> +		LDLM_DEBUG(lock,
> +			   "Lock still has references, will be cancelled later");
>  	}
>  	return 0;
>  }
> @@ -551,7 +557,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
>  			rc = size;
>  			goto cleanup;
>  		} else if (unlikely(size > lvb_len)) {
> -			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
> +			LDLM_ERROR(lock,
> +				   "Replied LVB is larger than expectation, expected = %d, replied = %d",
>  				   lvb_len, size);
>  			rc = -EINVAL;
>  			goto cleanup;
> @@ -1104,7 +1111,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
>  		unlock_res_and_lock(lock);
>  
>  		if (local_only) {
> -			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
> +			CDEBUG(D_DLMTRACE,
> +			       "not sending request (at caller's instruction)\n");
>  			rc = LDLM_FL_LOCAL_ONLY;
>  		}
>  		ldlm_lock_cancel(lock);
> @@ -1219,7 +1227,8 @@ int ldlm_cli_cancel_req(struct obd_export *exp, struct list_head *cancels,
>  			rc = ptlrpc_queue_wait(req);
>  		}
>  		if (rc == LUSTRE_ESTALE) {
> -			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
> +			CDEBUG(D_DLMTRACE,
> +			       "client/server (nid %s) out of sync -- not fatal\n",
>  			       libcfs_nid2str(req->rq_import->
>  					      imp_connection->c_peer.nid));
>  			rc = 0;
> @@ -2243,7 +2252,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
>  	int canceled;
>  	LIST_HEAD(cancels);
>  
> -	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
> +	CDEBUG(D_DLMTRACE,
> +	       "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
>  	       ldlm_ns_name(ns), ns->ns_nr_unused);
>  
>  	/* We don't need to care whether or not LRU resize is enabled
> @@ -2252,8 +2262,9 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
>  	canceled = ldlm_cancel_lru_local(ns, &cancels, ns->ns_nr_unused, 0,
>  					 LCF_LOCAL, LDLM_CANCEL_NO_WAIT);
>  
> -	CDEBUG(D_DLMTRACE, "Canceled %d unused locks from namespace %s\n",
> -			   canceled, ldlm_ns_name(ns));
> +	CDEBUG(D_DLMTRACE,
> +	       "Canceled %d unused locks from namespace %s\n",
> +	       canceled, ldlm_ns_name(ns));

This last one didn't need to be changed, why modify it?

Also, the long-term goal here is to get rid of these custom debug/log
macros, please move toward using the correct dev_* or pr_* functions
instead of these macros.

thanks,

greg k-h

