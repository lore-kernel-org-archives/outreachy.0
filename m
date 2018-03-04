X-GM-THRID: 6528628385749401600
X-Received: by 10.223.176.131 with SMTP id i3mr1031609wra.22.1520163609366;
        Sun, 04 Mar 2018 03:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.140 with SMTP id j134ls1012098wmj.3.gmail; Sun, 04 Mar
 2018 03:40:08 -0800 (PST)
X-Google-Smtp-Source: AG47ELuaR4rCt7ix0IGVBSB9hdbgvUUV447WbJ/ohZQjFfuW2vhM98XvxuPGY0e6erfaUbPu/OYG
X-Received: by 10.28.126.22 with SMTP id z22mr440085wmc.28.1520163608310;
        Sun, 04 Mar 2018 03:40:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520163608; cv=none;
        d=google.com; s=arc-20160816;
        b=uhof6+ZI+bVdkDziNMe2gK9XhfxCnm02XwojI8TYOFpXOGBPoXHxj8oxAgj6ephCYq
         hSupoNyCGO00f6jmQTNtCwygcThtJH/ajZVe1msffrwkStzM5wHM3n80wdiso+NW0CS0
         wqWV3o+yk4iPXaKiOsLrG0iyU5NrdF4eit5mvIw/KcBz9gOACRVcE+4irsTdH60dak1h
         R1KIAc0Nt04yekSrUZRvO34YTAiIvvS3Lrb8rrTXIbXCfIJB360zFtIboF1dxp+zq5hf
         fdjyzDb4TCIAdZCdX3kzj8k1gEyaTIYY4zF9KMifq/j2L/Pp3PMI7hI4gspI9EzKpfkd
         keHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=UjGisszQA30oym8iSW39D1DIhJmV/fdMXQMmDSRixCs=;
        b=bLt2IcHt7n8NpKfQqZtdWLRoAEgdG22oXxLzy3CzgN/VR/CunydLEjVePD1PCZeI8Z
         +v99A2rOisLsTAUGzaYi2uLdzGJ3YMNAKMwuSqZd+CIFlN2xJM+Fev8Zsebdngid6Wb6
         SuHYgk0iakITUn64wfK8Ht95/OYwXbiHG6/Q3kPegxKfGmWWkpMieQ56HuVP1F/VJlDB
         E2qw757DKxb+CDQamMzFSGCdiKyk/M07yQ1QBD3pc8r7awZDxnT4pdXMtSejsMzxMib6
         jETl/tPG9Me3AzHJnlYpXM0npo451xQkDMsD2s6zp5EAHB2qOWJapHZoVg+nb1j/KiYJ
         sXaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s81si223691wmd.2.2018.03.04.03.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 03:40:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,422,1515452400"; 
   d="scan'208";a="256896578"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 12:40:07 +0100
Date: Sun, 4 Mar 2018 12:40:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: obdclass: Fix
 Comparison issues.
In-Reply-To: <CAJ1myNRJ-DBd1Bqn051Wa1cySHgJyMJMrOpPptJKrkD=kaTiTQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803041239130.2223@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com> <alpine.DEB.2.20.1803031607450.2302@hadrien> <CAJ1myNR9_bau2kzqyXA2P9hB-pdMjkLHj5Qx2on-Ru8uyRZwNA@mail.gmail.com>
 <alpine.DEB.2.20.1803040807180.2698@hadrien> <CAJ1myNRJ-DBd1Bqn051Wa1cySHgJyMJMrOpPptJKrkD=kaTiTQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:

> On Sun, Mar 4, 2018 at 9:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:
> >
> >> On Sat, Mar 3, 2018 at 5:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:
> >> >
> >> >> Replace comparison to NULL with 'not' operator.
> >> >> Move constants to the right side of a comparison.
> >> >
> >> > Personally, I prefer lower_bound <= x && x < upper_bound.  I think the
> >> > designer of checkpatch prefers x >= lower_bound && x < lower_bound.  Maybe
> >> > the Lustre people have a preference.
> >> >
> >> >> Issues found with checkpatch.pl
> >> >>
> >> >> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> >> >> ---
> >> >>  drivers/staging/lustre/lustre/obdclass/cl_io.c            | 6 +++---
> >> >>  drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 2 +-
> >> >>  drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c | 4 ++--
> >> >>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 2 +-
> >> >>  drivers/staging/lustre/lustre/obdclass/lu_object.c        | 4 ++--
> >> >>  5 files changed, 9 insertions(+), 9 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
> >> >> index ab84e01..fa4d870 100644
> >> >> --- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
> >> >> +++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
> >> >> @@ -59,7 +59,7 @@
> >> >>
> >> >>  static inline int cl_io_type_is_valid(enum cl_io_type type)
> >> >>  {
> >> >> -     return CIT_READ <= type && type < CIT_OP_NR;
> >> >> +     return type >= CIT_READ && type < CIT_OP_NR;
> >> >>  }
> >> >>
> >> >>  static inline int cl_io_is_loopable(const struct cl_io *io)
> >> >> @@ -72,7 +72,7 @@ static inline int cl_io_is_loopable(const struct cl_io *io)
> >> >>   */
> >> >>  int cl_io_is_going(const struct lu_env *env)
> >> >>  {
> >> >> -     return cl_env_info(env)->clt_current_io != NULL;
> >> >> +     return !!cl_env_info(env)->clt_current_io;
> >> >
> >> > It looks like the return type should be bool.
> >> >
> >> > This one is sort of different from the others, and should probably be in a
> >> > different patch.
> >> >
> >> > julia
> >> >
> >> Ok, but it still bool since it is double exclamation marks.
> >
> > Sorry, I don't get the point.  The return type is declared as int.
> >
> > julia
>
> I meant that the actual return type was a bool and is still a bool.
> There are many functions in other parts of the kernel code that return bool
> but in the function declaration it declared to return int.

There are also many functions that have a bool return type.  It makes more
apparent what is going on.

julia

>
> >
> >>
> >> >>  }
> >> >>
> >> >>  /**
> >> >> @@ -390,7 +390,7 @@ void cl_io_unlock(const struct lu_env *env, struct cl_io *io)
> >> >>       const struct cl_io_slice *scan;
> >> >>
> >> >>       LASSERT(cl_io_is_loopable(io));
> >> >> -     LASSERT(CIS_IT_STARTED <= io->ci_state && io->ci_state < CIS_UNLOCKED);
> >> >> +     LASSERT(io->ci_state >= CIS_IT_STARTED && io->ci_state < CIS_UNLOCKED);
> >> >>       LINVRNT(cl_io_invariant(io));
> >> >>
> >> >>       set = &io->ci_lockset;
> >> >> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> >> >> index 3b683b7..3aae332 100644
> >> >> --- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> >> >> +++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> >> >> @@ -229,7 +229,7 @@ const char *cl_lock_mode_name(const enum cl_lock_mode mode)
> >> >>               [CLM_WRITE]   = "W",
> >> >>               [CLM_GROUP]   = "G"
> >> >>       };
> >> >> -     if (0 <= mode && mode < ARRAY_SIZE(names))
> >> >> +     if (mode >= 0 && mode < ARRAY_SIZE(names))
> >> >>               return names[mode];
> >> >>       else
> >> >>               return "U";
> >> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> >> >> index c83b7d7..46322d2 100644
> >> >> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> >> >> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
> >> >> @@ -52,7 +52,7 @@ void lprocfs_counter_add(struct lprocfs_stats *stats, int idx, long amount)
> >> >>       if (!stats)
> >> >>               return;
> >> >>
> >> >> -     LASSERTF(0 <= idx && idx < stats->ls_num,
> >> >> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
> >> >>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
> >> >>
> >> >>       /* With per-client stats, statistics are allocated only for
> >> >> @@ -101,7 +101,7 @@ void lprocfs_counter_sub(struct lprocfs_stats *stats, int idx, long amount)
> >> >>       if (!stats)
> >> >>               return;
> >> >>
> >> >> -     LASSERTF(0 <= idx && idx < stats->ls_num,
> >> >> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
> >> >>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
> >> >>
> >> >>       /* With per-client stats, statistics are allocated only for
> >> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> >> >> index e1f4ef2..64cc746 100644
> >> >> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> >> >> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> >> >> @@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
> >> >>       struct dentry *entry;
> >> >>
> >> >>       /* Disallow secretly (un)writable entries. */
> >> >> -     LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
> >> >> +     LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
> >> >>
> >> >>       entry = debugfs_create_file(name, mode, parent, data, seq_fops);
> >> >>       if (IS_ERR_OR_NULL(entry))
> >> >> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> >> >> index cca6881..a97b2fe 100644
> >> >> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
> >> >> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> >> >> @@ -1396,7 +1396,7 @@ static void key_fini(struct lu_context *ctx, int index)
> >> >>  void lu_context_key_degister(struct lu_context_key *key)
> >> >>  {
> >> >>       LASSERT(atomic_read(&key->lct_used) >= 1);
> >> >> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
> >> >> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
> >> >>
> >> >>       lu_context_key_quiesce(key);
> >> >>
> >> >> @@ -1516,7 +1516,7 @@ void *lu_context_key_get(const struct lu_context *ctx,
> >> >>                        const struct lu_context_key *key)
> >> >>  {
> >> >>       LINVRNT(ctx->lc_state == LCS_ENTERED);
> >> >> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
> >> >> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
> >> >>       LASSERT(lu_keys[key->lct_index] == key);
> >> >>       return ctx->lc_value[key->lct_index];
> >> >>  }
> >> >> --
> >> >> 2.7.4
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >>
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNR9_bau2kzqyXA2P9hB-pdMjkLHj5Qx2on-Ru8uyRZwNA%40mail.gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

