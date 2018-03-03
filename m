X-GM-THRID: 6528628385749401600
X-Received: by 10.80.177.147 with SMTP id m19mr2789987edd.11.1520089796574;
        Sat, 03 Mar 2018 07:09:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.205.208 with SMTP id h16ls6078435edj.5.gmail; Sat, 03 Mar
 2018 07:09:54 -0800 (PST)
X-Google-Smtp-Source: AG47ELuPVHSW3BZupEi9eTWSgZSQ2Gntfa+bVsm41vAX3J/26LhN65JQwcHm6O8MxWq5pzjZr9S7
X-Received: by 10.80.230.17 with SMTP id y17mr2806137edm.0.1520089794646;
        Sat, 03 Mar 2018 07:09:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520089794; cv=none;
        d=google.com; s=arc-20160816;
        b=EZbhvlu7JaSysjuwQcTMfsldfGphmLSucpbGLFbd59Qit59ygptoc5wJYwXQcAfsNT
         sxztk8TJy2ehpfhGmszr3bmkMGpiB3/tNTcTBgYdv2v7Emr9a3fy94pL4K+zqwXBTUVv
         GhfajZO1SPxzJWntrOs8aOm2Bnj6EVjKKZuUmxVbnY8YrL9pN7Bndf4Qk2NRrDqeKjlk
         vbxpqFn7pZgVOzI6V3irca+wDBPdi0mg5dLj/RYNLhISYhAVjuuN61QkbjuuYhUzpsTT
         nEtgDxu26TYg9/mI+p5Vstc+e1M5NrpbteMmKGY8Sgh3c/QORaI96Gguh30H9hF3u9HZ
         LMAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bnhD2hwrvzOeQ/vvQCvRRFgJLyDz4k2MEhgjjo4zscM=;
        b=eU3dzy8fHbQSw7dUlq9kVz0dM9aPkH1ZHSQCyHkPdFG54eNDpjrbov0FZ2ZhBtQ2Yw
         pDCGpPjyhtlJ1v88jh9pa4pcBGt8Z5HArTwQ6guhftTOxX1mEZytZdCa3yjw7pMEckkV
         LRLezxGaSRbxYYmoDkYzn7Z9XStnrUj+nvKdsrWEczgIhPPZT+FBZkRLkPXK+fMx/5Ce
         PsqgmZVzHfDIgLRUMKy1F/uiJjyDqepGxu5LlbRcXQbgNgrEppj6Z9/Z9dRolK9VanlP
         gWNUultiINcaY59Pfb7GxRGrnSElXdawpi2sNiaTzZ3hbcy58aEIqD80Eux2uEbpaQGB
         Wevw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g21si19936edj.5.2018.03.03.07.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:09:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="256833065"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 16:09:53 +0100
Date: Sat, 3 Mar 2018 16:09:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: obdclass: Fix
 Comparison issues.
In-Reply-To: <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803031607450.2302@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:

> Replace comparison to NULL with 'not' operator.
> Move constants to the right side of a comparison.

Personally, I prefer lower_bound <= x && x < upper_bound.  I think the
designer of checkpatch prefers x >= lower_bound && x < lower_bound.  Maybe
the Lustre people have a preference.

> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_io.c            | 6 +++---
>  drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c | 4 ++--
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 2 +-
>  drivers/staging/lustre/lustre/obdclass/lu_object.c        | 4 ++--
>  5 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
> index ab84e01..fa4d870 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
> @@ -59,7 +59,7 @@
>
>  static inline int cl_io_type_is_valid(enum cl_io_type type)
>  {
> -	return CIT_READ <= type && type < CIT_OP_NR;
> +	return type >= CIT_READ && type < CIT_OP_NR;
>  }
>
>  static inline int cl_io_is_loopable(const struct cl_io *io)
> @@ -72,7 +72,7 @@ static inline int cl_io_is_loopable(const struct cl_io *io)
>   */
>  int cl_io_is_going(const struct lu_env *env)
>  {
> -	return cl_env_info(env)->clt_current_io != NULL;
> +	return !!cl_env_info(env)->clt_current_io;

It looks like the return type should be bool.

This one is sort of different from the others, and should probably be in a
different patch.

julia

>  }
>
>  /**
> @@ -390,7 +390,7 @@ void cl_io_unlock(const struct lu_env *env, struct cl_io *io)
>  	const struct cl_io_slice *scan;
>
>  	LASSERT(cl_io_is_loopable(io));
> -	LASSERT(CIS_IT_STARTED <= io->ci_state && io->ci_state < CIS_UNLOCKED);
> +	LASSERT(io->ci_state >= CIS_IT_STARTED && io->ci_state < CIS_UNLOCKED);
>  	LINVRNT(cl_io_invariant(io));
>
>  	set = &io->ci_lockset;
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> index 3b683b7..3aae332 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> @@ -229,7 +229,7 @@ const char *cl_lock_mode_name(const enum cl_lock_mode mode)
>  		[CLM_WRITE]   = "W",
>  		[CLM_GROUP]   = "G"
>  	};
> -	if (0 <= mode && mode < ARRAY_SIZE(names))
> +	if (mode >= 0 && mode < ARRAY_SIZE(names))
>  		return names[mode];
>  	else
>  		return "U";
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> index c83b7d7..46322d2 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> @@ -52,7 +52,7 @@ void lprocfs_counter_add(struct lprocfs_stats *stats, int idx, long amount)
>  	if (!stats)
>  		return;
>
> -	LASSERTF(0 <= idx && idx < stats->ls_num,
> +	LASSERTF(idx >= 0 && idx < stats->ls_num,
>  		 "idx %d, ls_num %hu\n", idx, stats->ls_num);
>
>  	/* With per-client stats, statistics are allocated only for
> @@ -101,7 +101,7 @@ void lprocfs_counter_sub(struct lprocfs_stats *stats, int idx, long amount)
>  	if (!stats)
>  		return;
>
> -	LASSERTF(0 <= idx && idx < stats->ls_num,
> +	LASSERTF(idx >= 0 && idx < stats->ls_num,
>  		 "idx %d, ls_num %hu\n", idx, stats->ls_num);
>
>  	/* With per-client stats, statistics are allocated only for
> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> index e1f4ef2..64cc746 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> @@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
>  	struct dentry *entry;
>
>  	/* Disallow secretly (un)writable entries. */
> -	LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
> +	LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
>
>  	entry = debugfs_create_file(name, mode, parent, data, seq_fops);
>  	if (IS_ERR_OR_NULL(entry))
> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> index cca6881..a97b2fe 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> @@ -1396,7 +1396,7 @@ static void key_fini(struct lu_context *ctx, int index)
>  void lu_context_key_degister(struct lu_context_key *key)
>  {
>  	LASSERT(atomic_read(&key->lct_used) >= 1);
> -	LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
> +	LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>
>  	lu_context_key_quiesce(key);
>
> @@ -1516,7 +1516,7 @@ void *lu_context_key_get(const struct lu_context *ctx,
>  			 const struct lu_context_key *key)
>  {
>  	LINVRNT(ctx->lc_state == LCS_ENTERED);
> -	LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
> +	LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>  	LASSERT(lu_keys[key->lct_index] == key);
>  	return ctx->lc_value[key->lct_index];
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

