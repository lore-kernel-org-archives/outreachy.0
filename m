X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr4128143laa.2.1425337566608;
        Mon, 02 Mar 2015 15:06:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls547356lam.53.gmail; Mon, 02 Mar
 2015 15:06:05 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr4130895lai.4.1425337565142;
        Mon, 02 Mar 2015 15:06:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si761355wib.3.2015.03.02.15.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 15:06:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,678,1418079600"; 
   d="scan'208";a="124064359"
Received: from unknown (HELO hadrien.local) ([184.70.36.178])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 00:06:03 +0100
Date: Mon, 2 Mar 2015 17:05:53 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: lustre: Fix line over 80
 characters
In-Reply-To: <1425332534-14163-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1503021705110.2709@hadrien>
References: <1425332534-14163-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Haneen Mohammed wrote:

> This patch splits line over 80 characters addressing checkpatch.pl
> warning.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v4: solve problems with identation

Sorry, but no.  The arguments are still indented too much.

julia

>
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 34 +++++++++++++++--------
>  1 file changed, 22 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> index 53226b8..7d1e665 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -102,9 +102,12 @@ int ldlm_expired_completion_wait(void *data)
>  			      lock->l_last_activity,
>  			      cfs_time_sub(get_seconds(),
>  					   lock->l_last_activity));
> -		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
> -			   lock->l_last_activity,
> -			   cfs_time_sub(get_seconds(),
> +		LDLM_DEBUG(lock,
> +					"lock timed out (enqueued at "
> +					CFS_TIME_T ", " CFS_DURATION_T
> +					"s ago); not entering recovery in server code, just going back to sleep",
> +					lock->l_last_activity,
> +					cfs_time_sub(get_seconds(),
>  					lock->l_last_activity));
>  		if (cfs_time_after(cfs_time_current(), next_dump)) {
>  			last_dump = next_dump;
> @@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return ldlm_completion_tail(lock);
>  	}
>
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
> +	LDLM_DEBUG(lock,
> +				"client-side enqueue returned a blocked lock, going forward");
>  	ldlm_reprocess_all(lock->l_resource);
>  	return 0;
>  }
> @@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return 0;
>  	}
>
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> +	LDLM_DEBUG(lock,
> +				"client-side enqueue returned a blocked lock, sleeping");
>
>  noreproc:
>
> @@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
>  		if (rc < 0)
>  			CERROR("ldlm_cli_cancel: %d\n", rc);
>  	} else {
> -		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
> +		LDLM_DEBUG(lock,
> +					"Lock still has references, will be cancelled later");
>  	}
>  	return 0;
>  }
> @@ -551,8 +557,9 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
>  			rc = size;
>  			goto cleanup;
>  		} else if (unlikely(size > lvb_len)) {
> -			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
> -				   lvb_len, size);
> +			LDLM_ERROR(lock,
> +					"Replied LVB is larger than expectation, expected = %d, replied = %d",
> +				    lvb_len, size);
>  			rc = -EINVAL;
>  			goto cleanup;
>  		}
> @@ -1104,7 +1111,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
>  		unlock_res_and_lock(lock);
>
>  		if (local_only) {
> -			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
> +			CDEBUG(D_DLMTRACE,
> +					"not sending request (at caller's instruction)\n");
>  			rc = LDLM_FL_LOCAL_ONLY;
>  		}
>  		ldlm_lock_cancel(lock);
> @@ -1219,9 +1227,10 @@ int ldlm_cli_cancel_req(struct obd_export *exp, struct list_head *cancels,
>  			rc = ptlrpc_queue_wait(req);
>  		}
>  		if (rc == LUSTRE_ESTALE) {
> -			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
> +			CDEBUG(D_DLMTRACE,
> +					"client/server (nid %s) out of sync -- not fatal\n",
>  			       libcfs_nid2str(req->rq_import->
> -					      imp_connection->c_peer.nid));
> +					imp_connection->c_peer.nid));
>  			rc = 0;
>  		} else if (rc == -ETIMEDOUT && /* check there was no reconnect*/
>  			   req->rq_import_generation == imp->imp_generation) {
> @@ -2243,7 +2252,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
>  	int canceled;
>  	LIST_HEAD(cancels);
>
> -	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
> +	CDEBUG(D_DLMTRACE,
> +			"Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
>  	       ldlm_ns_name(ns), ns->ns_nr_unused);
>
>  	/* We don't need to care whether or not LRU resize is enabled
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425332534-14163-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

