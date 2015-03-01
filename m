X-GM-THRID: 4945298325504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c497780d2890c69d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.44 with SMTP id eb12mr1547663wic.4.1425213654560;
        Sun, 01 Mar 2015 04:40:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.6 with SMTP id i6ls345520lam.10.gmail; Sun, 01 Mar 2015
 04:40:54 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr3101773lbf.21.1425213654140;
        Sun, 01 Mar 2015 04:40:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l8si489743wia.0.2015.03.01.04.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:40:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,671,1418079600"; 
   d="scan'208";a="123853112"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 13:40:31 +0100
Date: Sun, 1 Mar 2015 06:40:29 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: Fix line over 80
 characters
In-Reply-To: <1425170361-22321-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1503010638510.2545@hadrien>
References: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com> <1425170361-22321-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
> +		LDLM_DEBUG(lock,
> +				"lock timed out (enqueued at "
> +				CFS_TIME_T ", " CFS_DURATION_T
> +				"s ago); not entering recovery in server code, just going back to sleep",

This does not look nice at all.  Line the second argment up with the left
side of the first argument  Then you will also have more space.

julia

>  			   lock->l_last_activity,
>  			   cfs_time_sub(get_seconds(),
>  					lock->l_last_activity));
> @@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return ldlm_completion_tail(lock);
>  	}
>
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
> +	LDLM_DEBUG(lock,
> +			"client-side enqueue returned a blocked lock, going forward");
>  	ldlm_reprocess_all(lock->l_resource);
>  	return 0;
>  }
> @@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
>  		return 0;
>  	}
>
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
> +	LDLM_DEBUG(lock,
> +			"client-side enqueue returned a blocked lock, sleeping");
>
>  noreproc:
>
> @@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
>  		if (rc < 0)
>  			CERROR("ldlm_cli_cancel: %d\n", rc);
>  	} else {
> -		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
> +		LDLM_DEBUG(lock,
> +				"Lock still has references, will be cancelled later");
>  	}
>  	return 0;
>  }
> @@ -551,7 +557,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
>  			rc = size;
>  			goto cleanup;
>  		} else if (unlikely(size > lvb_len)) {
> -			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
> +			LDLM_ERROR(lock,
> +					"Replied LVB is larger than expectation, expected = %d, replied = %d",
>  				   lvb_len, size);
>  			rc = -EINVAL;
>  			goto cleanup;
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
> -			       libcfs_nid2str(req->rq_import->
> -					      imp_connection->c_peer.nid));
> +			CDEBUG(D_DLMTRACE,
> +					"client/server (nid %s) out of sync -- not fatal\n",
> +					libcfs_nid2str(req->rq_import->
> +					imp_connection->c_peer.nid));
>  			rc = 0;
>  		} else if (rc == -ETIMEDOUT && /* check there was no reconnect*/
>  			   req->rq_import_generation == imp->imp_generation) {
> @@ -2244,8 +2253,9 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
>  	int canceled;
>  	LIST_HEAD(cancels);
>
> -	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
> -	       ldlm_ns_name(ns), ns->ns_nr_unused);
> +	CDEBUG(D_DLMTRACE,
> +			"Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
> +			ldlm_ns_name(ns), ns->ns_nr_unused);
>
>  	/* We don't need to care whether or not LRU resize is enabled
>  	 * because the LDLM_CANCEL_NO_WAIT policy doesn't use the
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425170361-22321-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

