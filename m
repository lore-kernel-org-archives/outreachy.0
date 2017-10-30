X-GM-THRID: 6473410411176656896
X-Received: by 10.129.112.82 with SMTP id l79mr18570151ywc.91.1509326124032;
        Sun, 29 Oct 2017 18:15:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.145.19 with SMTP id i19ls848827ywg.35.gmail; Sun, 29 Oct
 2017 18:15:23 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T92cD5fEqki1ant8g0mUs5wRMKD3QGiuY063LlXozSDwdojt5xbBC1LV6743vESLlQuiFt
X-Received: by 10.129.112.208 with SMTP id l199mr19619787ywc.8.1509326123451;
        Sun, 29 Oct 2017 18:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509326123; cv=none;
        d=google.com; s=arc-20160816;
        b=K0gn23NpLaNtZKWqSfKVcqu4C7ja0l14DG4V69+pBFvuYiL+Pl6bKHFo7dWNA+8BE2
         SOYAbcrob3lGObQSS020nAXCgMtgo6BlsMxr7+cWuv0MednsZuFWm+suiWJk53nqsWSr
         BSNHPvUMSqdqTaALuV0lNs7EqMS+Ol7+vJpYGyQPb9dcs1wzH8biv3AtBZ0aaq0AEkR1
         wwHRHt9Zxo1CtouEFc4dyrpUPAcj0kvkWS4yYNm/B+vvRPw8br0av2XMbCAlEvtHxU17
         i+NYvYyHUUwHy9vIFkbjYO06iEoJwiu7eJglXpuWiWeEklhp0jis7Cu0p/o7Z99uFgDG
         u1aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=maECWGeWyOl6oCIQNOV91TG3Q0vU6f29TV28OjJk1vk=;
        b=lXwGgDyUIDSmLdttZ84j3BMFlzoWsAI+ZZo4ss+Pb0pOPmWroqRM/+NFjLnb0j8Qpd
         cNgq430KL7DLeXXlKOur6j2tMSh9e9oRRLOSg8/OMCjvL5wa1fL1O+piNIOLUA6MlvbH
         0xKCt7wLdtXq9oInUcanv+GxFkdNmt+CC17m2iOQI6HWJ9DWX7dDJW7LuvTYPKVCgmR2
         O+EE8wMqZEtHdBzQiUKDjqDh0R3LpFaFfpisnz/NlSBkcngfaVZG0yKi3p9XT29cLIFQ
         Lj5WYqHPEtDNJA2HJwz3mk995BWzg7r/0N3Rwy/OXEY7ruaiHLsga6JVq5gboTZTEiBO
         sWrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id a13si1023710ywe.0.2017.10.29.18.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Oct 2017 18:15:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2017 18:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,317,1505804400"; 
   d="scan'208";a="329375186"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2017 18:15:22 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Sun, 29 Oct 2017 18:15:22 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.50]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.251]) with mapi id 14.03.0319.002;
 Sun, 29 Oct 2017 18:15:22 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 4/7] staging: lustre: ldlm: fix lines over 80
 characters in ldlm files
Thread-Topic: [PATCH v4 4/7] staging: lustre: ldlm: fix lines over 80
 characters in ldlm files
Thread-Index: AQHTSEH004RyxvPbHkGRMdBPj5lLPaL63R8A
Date: Mon, 30 Oct 2017 01:15:21 +0000
Message-ID: <5FDF6634-129A-41C9-8929-A36798259856@intel.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
 <1508352586-25475-5-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1508352586-25475-5-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.238.139.56]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <16D17E7ACF55284D844C0D8AE9CD93A5@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 18, 2017, at 12:49, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes checkpatch.pl warning:
>=20
> WARNING: line over 80 characters
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
> drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
> drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +-
> drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
> drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
> drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
> drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 42 +++++++++++++----=
-----
> drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
> 8 files changed, 65 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/s=
taging/lustre/lustre/ldlm/ldlm_extent.c
> index 2cc6dc2..f9b4c0a 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
> @@ -207,7 +207,8 @@ void ldlm_extent_add_lock(struct ldlm_resource *res,
> 				continue;
> 			if (ldlm_extent_overlap(&lck->l_req_extent,
> 						&lock->l_req_extent)) {
> -				CDEBUG(D_ERROR, "granting conflicting lock %p %p\n",
> +				CDEBUG(D_ERROR,
> +				       "granting conflicting lock %p %p\n",
> 				       lck, lock);
> 				ldlm_resource_dump(D_ERROR, res);
> 				LBUG();
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/st=
aging/lustre/lustre/ldlm/ldlm_flock.c
> index cb826e9..04e1d4c 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
> @@ -479,7 +479,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u=
64 flags, void *data)
> 		return 0;
> 	}
>=20
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping=
");
> +	LDLM_DEBUG(lock,
> +		   "client-side enqueue returned a blocked lock, sleeping");
> 	fwd.fwd_lock =3D lock;
> 	obd =3D class_exp2obd(lock->l_conn_export);
>=20
> @@ -561,7 +562,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u=
64 flags, void *data)
> 			mode =3D lock->l_granted_mode;
>=20
> 		if (ldlm_is_flock_deadlock(lock)) {
> -			LDLM_DEBUG(lock, "client-side enqueue deadlock received");
> +			LDLM_DEBUG(lock,
> +				   "client-side enqueue deadlock received");
> 			rc =3D -EDEADLK;
> 		}
> 		ldlm_flock_destroy(lock, mode, LDLM_FL_WAIT_NOREPROC);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers=
/staging/lustre/lustre/ldlm/ldlm_internal.h
> index 36808db..03c137f 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> @@ -88,7 +88,7 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum=
 ldlm_side client);
> /* ldlm_request.c */
> /* Cancel lru flag, it indicates we cancel aged locks. */
> enum {
> -	LDLM_LRU_FLAG_AGED	=3D BIT(0), /* Cancel aged locks (non lru resize). *=
/
> +	LDLM_LRU_FLAG_AGED	=3D BIT(0), /* Cancel old non-LRU resize locks */
> 	LDLM_LRU_FLAG_PASSED	=3D BIT(1), /* Cancel passed number of locks. */
> 	LDLM_LRU_FLAG_SHRINK	=3D BIT(2), /* Cancel locks from shrinker. */
> 	LDLM_LRU_FLAG_LRUR	=3D BIT(3), /* Cancel locks from lru resize. */
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/sta=
ging/lustre/lustre/ldlm/ldlm_lock.c
> index b5d84f3..adfc0b4 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> @@ -1035,7 +1035,8 @@ void ldlm_grant_lock(struct ldlm_lock *lock, struct=
 list_head *work_list)
> 		ldlm_extent_add_lock(res, lock);
> 	} else if (res->lr_type =3D=3D LDLM_FLOCK) {
> 		/*
> -		 * We should not add locks to granted list in the following cases:
> +		 * We should not add locks to granted list in
> +		 * the following cases:
> 		 * - this is an UNLOCK but not a real lock;
> 		 * - this is a TEST lock;
> 		 * - this is a F_CANCELLK lock (async flock has req_mode =3D=3D 0)
> @@ -2051,13 +2052,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 		libcfs_debug_vmsg2(msgdata, fmt, args,
> 				   " ns: \?\? lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: \?\? rrc=
=3D\?\? type: \?\?\? flags: %#llx nid: %s remote: %#llx expref: %d pid: %u =
timeout: %lu lvb_type: %d\n",
> 				   lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
> 				   lock->l_readers, lock->l_writers,
> 				   ldlm_lockname[lock->l_granted_mode],
> 				   ldlm_lockname[lock->l_req_mode],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
> 				   exp ? atomic_read(&exp->exp_refcount) : -99,
> -				   lock->l_pid, lock->l_callback_timeout, lock->l_lvb_type);
> +				   lock->l_pid, lock->l_callback_timeout,
> +				   lock->l_lvb_type);
> 		va_end(args);
> 		return;
> 	}
> @@ -2067,7 +2071,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 		libcfs_debug_vmsg2(msgdata, fmt, args,
> 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES =
" rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remot=
e: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
> 				   ldlm_lock_to_ns_name(lock), lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
> 				   lock->l_readers, lock->l_writers,
> 				   ldlm_lockname[lock->l_granted_mode],
> 				   ldlm_lockname[lock->l_req_mode],
> @@ -2076,8 +2081,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 				   ldlm_typename[resource->lr_type],
> 				   lock->l_policy_data.l_extent.start,
> 				   lock->l_policy_data.l_extent.end,
> -				   lock->l_req_extent.start, lock->l_req_extent.end,
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_req_extent.start,
> +				   lock->l_req_extent.end,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
> 				   exp ? atomic_read(&exp->exp_refcount) : -99,
> 				   lock->l_pid, lock->l_callback_timeout,
> 				   lock->l_lvb_type);
> @@ -2087,7 +2094,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 		libcfs_debug_vmsg2(msgdata, fmt, args,
> 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES =
" rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx =
expref: %d pid: %u timeout: %lu\n",
> 				   ldlm_lock_to_ns_name(lock), lock,
> -				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
> +				   lock->l_handle.h_cookie,
> +				   atomic_read(&lock->l_refc),
> 				   lock->l_readers, lock->l_writers,
> 				   ldlm_lockname[lock->l_granted_mode],
> 				   ldlm_lockname[lock->l_req_mode],
> @@ -2097,7 +2105,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 				   lock->l_policy_data.l_flock.pid,
> 				   lock->l_policy_data.l_flock.start,
> 				   lock->l_policy_data.l_flock.end,
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
> 				   exp ? atomic_read(&exp->exp_refcount) : -99,
> 				   lock->l_pid, lock->l_callback_timeout);
> 		break;
> @@ -2115,7 +2124,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 				   lock->l_policy_data.l_inodebits.bits,
> 				   atomic_read(&resource->lr_refcount),
> 				   ldlm_typename[resource->lr_type],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
> 				   exp ? atomic_read(&exp->exp_refcount) : -99,
> 				   lock->l_pid, lock->l_callback_timeout,
> 				   lock->l_lvb_type);
> @@ -2133,7 +2143,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
> 				   PLDLMRES(resource),
> 				   atomic_read(&resource->lr_refcount),
> 				   ldlm_typename[resource->lr_type],
> -				   lock->l_flags, nid, lock->l_remote_handle.cookie,
> +				   lock->l_flags, nid,
> +				   lock->l_remote_handle.cookie,
> 				   exp ? atomic_read(&exp->exp_refcount) : -99,
> 				   lock->l_pid, lock->l_callback_timeout,
> 				   lock->l_lvb_type);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/st=
aging/lustre/lustre/ldlm/ldlm_lockd.c
> index e270733..1b2dbb9 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> @@ -184,7 +184,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_req=
uest *req,
> 			LASSERT(lock->l_lvb_data);
>=20
> 			if (unlikely(lock->l_lvb_len < lvb_len)) {
> -				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected =
=3D %d, replied =3D %d",
> +				LDLM_ERROR(lock,
> +					   "Replied LVB is larger than expectation, expected =3D %d, replie=
d =3D %d",
> 					   lock->l_lvb_len, lvb_len);
> 				rc =3D -EINVAL;
> 				goto out;
> @@ -598,7 +599,8 @@ static int ldlm_callback_handler(struct ptlrpc_reques=
t *req)
>=20
> 	lock =3D ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
> 	if (!lock) {
> -		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
> +		CDEBUG(D_DLMTRACE,
> +		       "callback on lock %#llx - lock disappeared\n",
> 		       dlm_req->lock_handle[0].cookie);
> 		rc =3D ldlm_callback_reply(req, -EINVAL);
> 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/sta=
ging/lustre/lustre/ldlm/ldlm_pool.c
> index d77bf0b..24b0b7d 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
> @@ -386,7 +386,8 @@ static int ldlm_pool_recalc(struct ldlm_pool *pl)
> 			      pl->pl_recalc_period;
> 	if (recalc_interval_sec <=3D 0) {
> 		/* DEBUG: should be re-removed after LU-4536 is fixed */
> -		CDEBUG(D_DLMTRACE, "%s: Negative interval(%ld), too short period(%ld)\=
n",
> +		CDEBUG(D_DLMTRACE,
> +		       "%s: Negative interval(%ld), too short period(%ld)\n",
> 		       pl->pl_name, (long)recalc_interval_sec,
> 		       (long)pl->pl_recalc_period);
>=20
> @@ -415,7 +416,8 @@ static int ldlm_pool_shrink(struct ldlm_pool *pl, int=
 nr, gfp_t gfp_mask)
> 			lprocfs_counter_add(pl->pl_stats,
> 					    LDLM_POOL_SHRINK_FREED_STAT,
> 					    cancel);
> -			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
> +			CDEBUG(D_DLMTRACE,
> +			       "%s: request to shrink %d locks, shrunk %d\n",
> 			       pl->pl_name, nr, cancel);
> 		}
> 	}
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/=
staging/lustre/lustre/ldlm/ldlm_request.c
> index 6943987..5c22085 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
> @@ -121,7 +121,8 @@ static int ldlm_expired_completion_wait(void *data)
> 	if (!lock->l_conn_export) {
> 		static unsigned long next_dump, last_dump;
>=20
> -		LDLM_ERROR(lock, "lock timed out (enqueued at %lld, %llds ago); not en=
tering recovery in server code, just going back to sleep",
> +		LDLM_ERROR(lock,
> +			   "lock timed out (enqueued at %lld, %llds ago); not entering recove=
ry in server code, just going back to sleep",
> 			   (s64)lock->l_last_activity,
> 			   (s64)(ktime_get_real_seconds() -
> 				 lock->l_last_activity));
> @@ -139,7 +140,8 @@ static int ldlm_expired_completion_wait(void *data)
> 	obd =3D lock->l_conn_export->exp_obd;
> 	imp =3D obd->u.cli.cl_import;
> 	ptlrpc_fail_import(imp, lwd->lwd_conn_cnt);
> -	LDLM_ERROR(lock, "lock timed out (enqueued at %lld, %llds ago), enterin=
g recovery for %s@%s",
> +	LDLM_ERROR(lock,
> +		   "lock timed out (enqueued at %lld, %llds ago), entering recovery fo=
r %s@%s",
> 		   (s64)lock->l_last_activity,
> 		   (s64)(ktime_get_real_seconds() - lock->l_last_activity),
> 		   obd2cli_tgt(obd), imp->imp_connection->c_remote_uuid.uuid);
> @@ -218,7 +220,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock,=
 __u64 flags, void *data)
> 		return ldlm_completion_tail(lock, data);
> 	}
>=20
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going fo=
rward");
> +	LDLM_DEBUG(lock,
> +		   "client-side enqueue returned a blocked lock, going forward");
> 	return 0;
> }
> EXPORT_SYMBOL(ldlm_completion_ast_async);
> @@ -264,7 +267,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64=
 flags, void *data)
> 		return 0;
> 	}
>=20
> -	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping=
");
> +	LDLM_DEBUG(lock,
> +		   "client-side enqueue returned a blocked lock, sleeping");
>=20
> noreproc:
>=20
> @@ -414,7 +418,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, str=
uct ptlrpc_request *req,
> 			rc =3D size;
> 			goto cleanup;
> 		} else if (unlikely(size > lvb_len)) {
> -			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected =
=3D %d, replied =3D %d",
> +			LDLM_ERROR(lock,
> +				   "Replied LVB is larger than expectation, expected =3D %d, replied=
 =3D %d",
> 				   lvb_len, size);
> 			rc =3D -EINVAL;
> 			goto cleanup;
> @@ -473,8 +478,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, str=
uct ptlrpc_request *req,
>=20
> 		if (!ldlm_res_eq(&reply->lock_desc.l_resource.lr_name,
> 				 &lock->l_resource->lr_name)) {
> -			CDEBUG(D_INFO, "remote intent success, locking " DLDLMRES
> -				       " instead of " DLDLMRES "\n",
> +			CDEBUG(D_INFO,
> +			       "remote intent success, locking " DLDLMRES " instead of " DLDL=
MRES "\n",
> 			       PLDLMRES(&reply->lock_desc.l_resource),
> 			       PLDLMRES(lock->l_resource));
>=20
> @@ -850,7 +855,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *=
lock)
> 		unlock_res_and_lock(lock);
>=20
> 		if (local_only) {
> -			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n")=
;
> +			CDEBUG(D_DLMTRACE,
> +			       "not sending request (at caller's instruction)\n");
> 			rc =3D LDLM_FL_LOCAL_ONLY;
> 		}
> 		ldlm_lock_cancel(lock);
> @@ -963,7 +969,8 @@ static int ldlm_cli_cancel_req(struct obd_export *exp=
,
>=20
> 		rc =3D ptlrpc_queue_wait(req);
> 		if (rc =3D=3D LUSTRE_ESTALE) {
> -			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n=
",
> +			CDEBUG(D_DLMTRACE,
> +			       "client/server (nid %s) out of sync -- not fatal\n",
> 			       libcfs_nid2str(req->rq_import->
> 					      imp_connection->c_peer.nid));
> 			rc =3D 0;
> @@ -1364,13 +1371,14 @@ ldlm_cancel_lru_policy(struct ldlm_namespace *ns,=
 int flags)
>  * flags & LDLM_LRU_FLAG_LRUR	- use LRU resize policy (SLV from server) t=
o
>  *				  cancel not more than \a count locks;
>  *
> - * flags & LDLM_LRU_FLAG_PASSED - cancel \a count number of old locks (l=
ocated at
> - *				  the beginning of LRU list);
> + * flags & LDLM_LRU_FLAG_PASSED - cancel \a count number of old locks (l=
ocated
> + *				  at the beginning of LRU list);
>  *
> - * flags & LDLM_LRU_FLAG_SHRINK - cancel not more than \a count locks ac=
cording to
> - *				  memory pressure policy function;
> + * flags & LDLM_LRU_FLAG_SHRINK - cancel not more than \a count locks ac=
cording
> + *				  to memory pressure policy function;
>  *
> - * flags & LDLM_LRU_FLAG_AGED   - cancel \a count locks according to "ag=
ed policy".
> + * flags & LDLM_LRU_FLAG_AGED   - cancel \a count locks according to
> + *				  "aged policy".
>  *
>  * flags & LDLM_LRU_FLAG_NO_WAIT - cancel as many unused locks as possibl=
e
>  *				   (typically before replaying locks) w/o
> @@ -1384,7 +1392,8 @@ static int ldlm_prepare_lru_list(struct ldlm_namesp=
ace *ns,
> 	ldlm_cancel_lru_policy_t pf;
> 	struct ldlm_lock *lock, *next;
> 	int added =3D 0, unused, remained;
> -	int no_wait =3D flags & (LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_=
WAIT);
> +	int no_wait =3D flags &
> +		(LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
>=20
> 	spin_lock(&ns->ns_lock);
> 	unused =3D ns->ns_nr_unused;
> @@ -2035,7 +2044,8 @@ static void ldlm_cancel_unused_locks_for_replay(str=
uct ldlm_namespace *ns)
> 	int canceled;
> 	LIST_HEAD(cancels);
>=20
> -	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before re=
play for namespace %s (%d)\n",
> +	CDEBUG(D_DLMTRACE,
> +	       "Dropping as many unused locks as possible before replay for nam=
espace %s (%d)\n",
> 	       ldlm_ns_name(ns), ns->ns_nr_unused);
>=20
> 	/* We don't need to care whether or not LRU resize is enabled
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers=
/staging/lustre/lustre/ldlm/ldlm_resource.c
> index c2ddf73..c374f14 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
> @@ -1358,7 +1358,8 @@ void ldlm_resource_dump(int level, struct ldlm_reso=
urce *res)
> 			LDLM_DEBUG_LIMIT(level, lock, "###");
> 			if (!(level & D_CANTMASK) &&
> 			    ++granted > ldlm_dump_granted_max) {
> -				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
> +				CDEBUG(level,
> +				       "only dump %d granted locks to avoid DDOS.\n",
> 				       granted);
> 				break;
> 			}
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








