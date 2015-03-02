X-GM-THRID: 5152931053568
X-Received: by 10.182.78.69 with SMTP id z5mr24420240obw.4.1425257110436;
        Sun, 01 Mar 2015 16:45:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.149 with SMTP id s21ls1021285ioi.58.gmail; Sun, 01 Mar
 2015 16:45:10 -0800 (PST)
X-Received: by 10.66.187.68 with SMTP id fq4mr11710555pac.28.1425257110008;
        Sun, 01 Mar 2015 16:45:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si1317618pbc.0.2015.03.01.16.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B55154D3;
	Mon,  2 Mar 2015 00:45:09 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:45:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: lustre: ldlm:
 Remove unnecessary else after return
Message-ID: <20150302004509.GA7519@kroah.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
 <1425151385-31082-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425151385-31082-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 10:23:05PM +0300, Haneen Mohammed wrote:
> This patch fix else is not usefull after break or return.
> Issue addressed by checkpatch.pl
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_lib.c   |  4 ++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c  | 10 +++++-----
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 17 ++++++++---------
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c  |  3 +--
>  4 files changed, 16 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
> index c5c86e7..7bcae30 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
> @@ -668,10 +668,10 @@ int target_send_reply_msg(struct ptlrpc_request *req, int rc, int fail_id)
>  		DEBUG_REQ(D_NET, req, "processing error (%d)", rc);
>  		req->rq_status = rc;
>  		return ptlrpc_send_error(req, 1);
> -	} else {
> -		DEBUG_REQ(D_NET, req, "sending reply");
>  	}
>  
> +	DEBUG_REQ(D_NET, req, "sending reply");
> +
>  	return ptlrpc_send_reply(req, PTLRPC_REPLY_MAYBE_DIFFICULT);
>  }
>  
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> index bd8d458..28f2639 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> @@ -932,7 +932,8 @@ static void search_granted_lock(struct list_head *queue,
>  			prev->mode_link = &mode_end->l_sl_mode;
>  			prev->policy_link = &req->l_sl_policy;
>  			return;
> -		} else if (lock->l_resource->lr_type == LDLM_IBITS) {
> +		}
> +		if (lock->l_resource->lr_type == LDLM_IBITS) {
>  			for (;;) {
>  				policy_end =
>  					list_entry(lock->l_sl_policy.prev,
> @@ -968,11 +969,10 @@ static void search_granted_lock(struct list_head *queue,
>  			prev->mode_link = &mode_end->l_sl_mode;
>  			prev->policy_link = &req->l_sl_policy;
>  			return;
> -		} else {
> -			LDLM_ERROR(lock,
> -				   "is not LDLM_PLAIN or LDLM_IBITS lock");
> -			LBUG();
>  		}
> +		LDLM_ERROR(lock,
> +				"is not LDLM_PLAIN or LDLM_IBITS lock");
> +		LBUG();
>  	}
>  
>  	/* insert point is last lock on the queue,
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> index cd15445..4abca14 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> @@ -456,16 +456,15 @@ static int ldlm_bl_to_thread(struct ldlm_namespace *ns,
>  		init_blwi(blwi, ns, ld, cancels, count, lock, cancel_flags);
>  
>  		return __ldlm_bl_to_thread(blwi, cancel_flags);
> -	} else {
> -		/* if it is synchronous call do minimum mem alloc, as it could
> -		 * be triggered from kernel shrinker
> -		 */
> -		struct ldlm_bl_work_item blwi;
> -
> -		memset(&blwi, 0, sizeof(blwi));
> -		init_blwi(&blwi, ns, ld, cancels, count, lock, cancel_flags);
> -		return __ldlm_bl_to_thread(&blwi, cancel_flags);
>  	}
> +	/* if it is synchronous call do minimum mem alloc, as it could
> +	* be triggered from kernel shrinker
> +	*/

Formatting of this comment block changed :(


