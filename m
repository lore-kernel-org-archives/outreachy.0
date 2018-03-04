X-GM-THRID: 6528628385749401600
X-Received: by 10.31.135.67 with SMTP id j64mr5270001vkd.124.1520148135793;
        Sat, 03 Mar 2018 23:22:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.168.77 with SMTP id r74ls7224825vke.17.gmail; Sat, 03 Mar
 2018 23:22:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELsvmRAWQwk0otsY3ZHnwtYCcxCGiQYuBNlQo3ZamVs1DpBKq3Fwbi40T0A6vLhQHvBZcjQu
X-Received: by 10.31.232.65 with SMTP id f62mr5215386vkh.106.1520148134957;
        Sat, 03 Mar 2018 23:22:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520148134; cv=none;
        d=google.com; s=arc-20160816;
        b=fkdM3RvH2KjSLtYbwMkKnqdPqMt43IhYrIgLFmcRr5spXqcpxErA2siaAUEpWYxgzY
         t3glgN9n2iWuWOPW8+5J876CpV6Xe93Bl+2YnCBMA2fxJwiNmRK7xXEaEHqh+h/iwOT8
         J6vvSf3yid5+s8AspbHe/wNPj62ijtESZgE7l7dt8ptILYracZxae2Cue5Ng/9H48IWo
         P2gz7Ha4yq+hznLw/a7ypcVxvqjXlm8ptNYxV4n5j3UenwMH7vOX1DqEx3r5e2a/MryH
         3GSUa7ySufLNaP2zeTp7F5PJ+hSCljzV554PgTGjzapy73T+L2uyqNzX5o9sEjhTEOWp
         oV5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=IwbFKntw+LjZhkbu5+/16f6sdu3Iy+DzCjScXempSBY=;
        b=p+gO0e7mySBZfzMjNSaCEgbVCk7SGLfYvIyKw1lgaI+Sd8a3Euou95tJRbHffN6X9B
         Vo0bl2YKmwaCu+xRFxcYaYX5aeyQgkU2XxbaeKEY7M9sUHUe070vP2oblZmgsCs1de3m
         TYrEmalZDtTuAD8QGKBg6iL+GJOCXN8+rQ3JrE6OeqyUpRVMo3616RiCQuKQW6DjirMe
         KPvAXI+t1Hegnf/18wCw3fXlzZLKBMppIWTQnkvoKfIiOR4/ZjDz0NgR7cqNx+Bo8DCT
         kR23uG2o2zIxMinZPNhR2bF1DfrArtYsHJ/P9c7iiXLxFkgme9qQUyi5p2eMUqDR2VQk
         5Nmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIUtivf6;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-qt0-x231.google.com (mail-qt0-x231.google.com. [2607:f8b0:400d:c0d::231])
        by gmr-mx.google.com with ESMTPS id e1si716737uam.1.2018.03.03.23.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 23:22:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) client-ip=2607:f8b0:400d:c0d::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIUtivf6;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x231.google.com with SMTP id g60so16885268qtd.11
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 23:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=IwbFKntw+LjZhkbu5+/16f6sdu3Iy+DzCjScXempSBY=;
        b=rIUtivf6EdZhHOd5Nt/lveAqNtCELbHKkotblTRJem43Cct+u9tzPh1B7PAc+zyhV1
         vJA3ygPJC7goJmsP/Azcgp3edLNqE2lsortz1S73FPSZvF48k17x6hroGUCyw28kPyvq
         bnT6zz2S/98k3iZ0LMQ6qklcurG4zvUMiiZ9MIlmv8S0TzhtdDUhnHKSVIwKu+lYeHZP
         e+KxSHtxKtNgPAKAEH2Ow5hk4T9o4gs2i6x7POlAgRQxWZx2KU7wKOWxBESoVMZWy9Bt
         yGD1BaLygQWoilVeJHrk7+a3YPWcWbz6eQNaoqUKSuI+Z6Ajh7mZywQRW49XWZrVfhEb
         2XOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IwbFKntw+LjZhkbu5+/16f6sdu3Iy+DzCjScXempSBY=;
        b=bVuHFkQGUZmYq2kC2gZqMxaWP8oZZ8vK27nVShaU7bI5wzJdex0tpR0Vn0hX+Cxy5H
         1EtBXUpYSt8YFKOrdui1FVRo/63ib4cdCftyU3EGrzUY4xG/b+fOohQ4TmkBm7YsNRNn
         m973jHSDQq5l0tAa2qFbuQ/eBA0UBJE3totQC9mQ/fHRiLLKEhbg/uqPZPfQChwuYoEv
         eItH3z+0IvzANe+VYPts6UPePKIbXBULFXA5y8oy0dn4HZ19LibEEirKk85dxKJzfokR
         025UeyKO8pfiRKRE5/pdX2oWgfcQymaTGsxvKx1Uudlgrqu7kqizQ5ebkUYztcQrzGoK
         tO4g==
X-Gm-Message-State: AElRT7EtaIYOu7EsZ70tyaEWLE+/F+hgtiCrJiGzzj6g5amZSYazrIjD
	9zWIK3MQGczEvPPfmQV5Teaci0YwTpkYbpj7eNs=
X-Received: by 10.200.50.155 with SMTP id z27mr16100717qta.250.1520148134588;
 Sat, 03 Mar 2018 23:22:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.32.8 with HTTP; Sat, 3 Mar 2018 23:21:54 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803040807180.2698@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com>
 <alpine.DEB.2.20.1803031607450.2302@hadrien> <CAJ1myNR9_bau2kzqyXA2P9hB-pdMjkLHj5Qx2on-Ru8uyRZwNA@mail.gmail.com>
 <alpine.DEB.2.20.1803040807180.2698@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Sun, 4 Mar 2018 09:21:54 +0200
Message-ID: <CAJ1myNRJ-DBd1Bqn051Wa1cySHgJyMJMrOpPptJKrkD=kaTiTQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: obdclass: Fix
 Comparison issues.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 4, 2018 at 9:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:
>
>> On Sat, Mar 3, 2018 at 5:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:
>> >
>> >> Replace comparison to NULL with 'not' operator.
>> >> Move constants to the right side of a comparison.
>> >
>> > Personally, I prefer lower_bound <= x && x < upper_bound.  I think the
>> > designer of checkpatch prefers x >= lower_bound && x < lower_bound.  Maybe
>> > the Lustre people have a preference.
>> >
>> >> Issues found with checkpatch.pl
>> >>
>> >> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
>> >> ---
>> >>  drivers/staging/lustre/lustre/obdclass/cl_io.c            | 6 +++---
>> >>  drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 2 +-
>> >>  drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c | 4 ++--
>> >>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 2 +-
>> >>  drivers/staging/lustre/lustre/obdclass/lu_object.c        | 4 ++--
>> >>  5 files changed, 9 insertions(+), 9 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> >> index ab84e01..fa4d870 100644
>> >> --- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> >> +++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> >> @@ -59,7 +59,7 @@
>> >>
>> >>  static inline int cl_io_type_is_valid(enum cl_io_type type)
>> >>  {
>> >> -     return CIT_READ <= type && type < CIT_OP_NR;
>> >> +     return type >= CIT_READ && type < CIT_OP_NR;
>> >>  }
>> >>
>> >>  static inline int cl_io_is_loopable(const struct cl_io *io)
>> >> @@ -72,7 +72,7 @@ static inline int cl_io_is_loopable(const struct cl_io *io)
>> >>   */
>> >>  int cl_io_is_going(const struct lu_env *env)
>> >>  {
>> >> -     return cl_env_info(env)->clt_current_io != NULL;
>> >> +     return !!cl_env_info(env)->clt_current_io;
>> >
>> > It looks like the return type should be bool.
>> >
>> > This one is sort of different from the others, and should probably be in a
>> > different patch.
>> >
>> > julia
>> >
>> Ok, but it still bool since it is double exclamation marks.
>
> Sorry, I don't get the point.  The return type is declared as int.
>
> julia

I meant that the actual return type was a bool and is still a bool.
There are many functions in other parts of the kernel code that return bool
but in the function declaration it declared to return int.

>
>>
>> >>  }
>> >>
>> >>  /**
>> >> @@ -390,7 +390,7 @@ void cl_io_unlock(const struct lu_env *env, struct cl_io *io)
>> >>       const struct cl_io_slice *scan;
>> >>
>> >>       LASSERT(cl_io_is_loopable(io));
>> >> -     LASSERT(CIS_IT_STARTED <= io->ci_state && io->ci_state < CIS_UNLOCKED);
>> >> +     LASSERT(io->ci_state >= CIS_IT_STARTED && io->ci_state < CIS_UNLOCKED);
>> >>       LINVRNT(cl_io_invariant(io));
>> >>
>> >>       set = &io->ci_lockset;
>> >> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> >> index 3b683b7..3aae332 100644
>> >> --- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> >> +++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> >> @@ -229,7 +229,7 @@ const char *cl_lock_mode_name(const enum cl_lock_mode mode)
>> >>               [CLM_WRITE]   = "W",
>> >>               [CLM_GROUP]   = "G"
>> >>       };
>> >> -     if (0 <= mode && mode < ARRAY_SIZE(names))
>> >> +     if (mode >= 0 && mode < ARRAY_SIZE(names))
>> >>               return names[mode];
>> >>       else
>> >>               return "U";
>> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> >> index c83b7d7..46322d2 100644
>> >> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> >> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> >> @@ -52,7 +52,7 @@ void lprocfs_counter_add(struct lprocfs_stats *stats, int idx, long amount)
>> >>       if (!stats)
>> >>               return;
>> >>
>> >> -     LASSERTF(0 <= idx && idx < stats->ls_num,
>> >> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
>> >>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
>> >>
>> >>       /* With per-client stats, statistics are allocated only for
>> >> @@ -101,7 +101,7 @@ void lprocfs_counter_sub(struct lprocfs_stats *stats, int idx, long amount)
>> >>       if (!stats)
>> >>               return;
>> >>
>> >> -     LASSERTF(0 <= idx && idx < stats->ls_num,
>> >> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
>> >>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
>> >>
>> >>       /* With per-client stats, statistics are allocated only for
>> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> >> index e1f4ef2..64cc746 100644
>> >> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> >> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> >> @@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
>> >>       struct dentry *entry;
>> >>
>> >>       /* Disallow secretly (un)writable entries. */
>> >> -     LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
>> >> +     LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
>> >>
>> >>       entry = debugfs_create_file(name, mode, parent, data, seq_fops);
>> >>       if (IS_ERR_OR_NULL(entry))
>> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> >> index cca6881..a97b2fe 100644
>> >> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> >> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> >> @@ -1396,7 +1396,7 @@ static void key_fini(struct lu_context *ctx, int index)
>> >>  void lu_context_key_degister(struct lu_context_key *key)
>> >>  {
>> >>       LASSERT(atomic_read(&key->lct_used) >= 1);
>> >> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
>> >> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>> >>
>> >>       lu_context_key_quiesce(key);
>> >>
>> >> @@ -1516,7 +1516,7 @@ void *lu_context_key_get(const struct lu_context *ctx,
>> >>                        const struct lu_context_key *key)
>> >>  {
>> >>       LINVRNT(ctx->lc_state == LCS_ENTERED);
>> >> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
>> >> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>> >>       LASSERT(lu_keys[key->lct_index] == key);
>> >>       return ctx->lc_value[key->lct_index];
>> >>  }
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNR9_bau2kzqyXA2P9hB-pdMjkLHj5Qx2on-Ru8uyRZwNA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

