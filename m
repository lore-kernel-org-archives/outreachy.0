X-GM-THRID: 6528628385749401600
X-Received: by 10.202.79.138 with SMTP id d132mr5070744oib.87.1520147174947;
        Sat, 03 Mar 2018 23:06:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.185 with SMTP id b54ls7210936otb.0.gmail; Sat, 03 Mar
 2018 23:06:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELvIjE0WacjhlE+j5coTHk2vGueZ402hy4dOj8+cNHcaoejLgt5JUSlToXwjwqYOgXoQ3ugP
X-Received: by 10.157.46.20 with SMTP id q20mr5688246otb.120.1520147174014;
        Sat, 03 Mar 2018 23:06:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520147174; cv=none;
        d=google.com; s=arc-20160816;
        b=C5UFRKKyude0acf3u6jTFaZpWwkN6m3bvI/n6KH7uHUeQmQLRFI3YB3asceTX/HZwT
         R9T7ZXn3YDhCKqb6SjQhlpqyeOcKTe/WcUt5FH/Gmno8nNIXmoyJgkmNf6vWywmZhdM3
         FkR5yRRSrEcMHK8gW44jC2Dvziy5lN6LjmRrrgoAnZS7Rb6hQhkaD/7lKXjzo6qgFhNJ
         jSDyU9hd9g1SN6niGmTq+gNlERV9F+0zzJTLFJMJsOMuZQ61ZN6jD+ok7+omFzO5JYh2
         DXZZ9hLJ/X9hVA9MBdbgOgPaaPhnA9yvlKgOhFTDnTYOEk0aqZYTptVlFcfvBCAlV9sy
         XR+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=sBUUXVv2F1PFgw5vzA31EZxmQcSqbS+2oUPH5cppFGE=;
        b=mVKs4/SLRlupfwydChLG/HRFiVqIBfFiW3rckEtO9cew8Y/wvb9B+11IJr67KHvDzr
         lYaXw5YUGsRZDNKiAiKPDwce5BPM9DBU7TQDlv93+xD9/HUVsMyCuVKn0NGIqYOn8u5y
         U3KtKiecY4fSSuz09Lxt4eceK4UieWj6A7EdRzZpr4Bz0ko4OiXZQbxIGqv3GO1jVCwB
         QtEfyQb/j8wiU4XpfnZMaf/ekZuo0yV/ynhbDsdIRlJoX9BvHPo5JVL/d4QCVppi2/TX
         6zdcSIJ4J4NfIUhmAjzoZ7r3grzfn3YAeFh0kMcmVQnt7Bslp1pqHIKdMD2vspiQX76A
         +jFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u79h3cyM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id d131si728520oib.3.2018.03.03.23.06.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 23:06:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u79h3cyM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id c7so16889317qtn.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 23:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sBUUXVv2F1PFgw5vzA31EZxmQcSqbS+2oUPH5cppFGE=;
        b=u79h3cyM1HBmv0k7S6tMtrrtboXZavbiWhnx8AN5UqwCeMftwHxMY1kCROKZF+IdKE
         k+qTwSLmNg9m7PWHcs6nGdwEHgKN5SIQuu8WkjCjza07ZXqyxFgccjHo7/V4wzXnmtSE
         e0WyiFeCLWM9PD2MLNFjz006eSKoQGtv4tS+L2QZ2iDJJi7tL5r6trJwqxKAWumie6Nu
         ISj6DcziHpF7eQGK45VlTYCNvdZEbUWj1BkLSCPA5iZO+7H6QMV+8u5ESq+/Y2w0JEOF
         ClBiXxMhznkewu4UmEgofKVS365E6JCPiITW2O9JDWdDSRevOPoILuZY7CBC45u59k71
         q3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sBUUXVv2F1PFgw5vzA31EZxmQcSqbS+2oUPH5cppFGE=;
        b=E/scXZF5Ux6dwuwcF1pc9WkNA7Doj6wD3fMLWs6+sBFHPVQ1reJhqi6P0WUfYZlQWC
         WpSY4fZRsKV2m7ssOGi5leSV5i9anrvz7SsKk7q37JfwYVzuf0vonGXWmXgBOA2zadpE
         2yMfHY8SrVkE1XHjUp/ARTH9zrt81iKugZMPUAs9qFL6q1yN23ygGPE103g3Q0tlMga+
         hiJ83hpRZvU9iwAfsFg49a1pdeS/cEqDYZIXnj0Fn4uNJ71HlmI3pmdZI7JhAAkT2H58
         cAmzF/Kigia5X1BcRnccCEE9bH5lMw3GyIFlZzZgbrRUCcKWh1KS4ikm4sZDHFxQoHDD
         ZqlA==
X-Gm-Message-State: AElRT7EPWjuYLi+CF2TJ2Wob1m294RnvAVwSPXc3Y4/HagSkuIah43gE
	NEF1zFgmTjCVDi7E3Io8qgKMQrd+PsXWNs7ThNU=
X-Received: by 10.237.32.9 with SMTP id 9mr16407526qta.74.1520147173394; Sat,
 03 Mar 2018 23:06:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.32.8 with HTTP; Sat, 3 Mar 2018 23:05:52 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803031607450.2302@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com>
 <alpine.DEB.2.20.1803031607450.2302@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Sun, 4 Mar 2018 09:05:52 +0200
Message-ID: <CAJ1myNR9_bau2kzqyXA2P9hB-pdMjkLHj5Qx2on-Ru8uyRZwNA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: obdclass: Fix
 Comparison issues.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 3, 2018 at 5:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:
>
>> Replace comparison to NULL with 'not' operator.
>> Move constants to the right side of a comparison.
>
> Personally, I prefer lower_bound <= x && x < upper_bound.  I think the
> designer of checkpatch prefers x >= lower_bound && x < lower_bound.  Maybe
> the Lustre people have a preference.
>
>> Issues found with checkpatch.pl
>>
>> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/obdclass/cl_io.c            | 6 +++---
>>  drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 2 +-
>>  drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c | 4 ++--
>>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 2 +-
>>  drivers/staging/lustre/lustre/obdclass/lu_object.c        | 4 ++--
>>  5 files changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> index ab84e01..fa4d870 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
>> @@ -59,7 +59,7 @@
>>
>>  static inline int cl_io_type_is_valid(enum cl_io_type type)
>>  {
>> -     return CIT_READ <= type && type < CIT_OP_NR;
>> +     return type >= CIT_READ && type < CIT_OP_NR;
>>  }
>>
>>  static inline int cl_io_is_loopable(const struct cl_io *io)
>> @@ -72,7 +72,7 @@ static inline int cl_io_is_loopable(const struct cl_io *io)
>>   */
>>  int cl_io_is_going(const struct lu_env *env)
>>  {
>> -     return cl_env_info(env)->clt_current_io != NULL;
>> +     return !!cl_env_info(env)->clt_current_io;
>
> It looks like the return type should be bool.
>
> This one is sort of different from the others, and should probably be in a
> different patch.
>
> julia
>
Ok, but it still bool since it is double exclamation marks.

>>  }
>>
>>  /**
>> @@ -390,7 +390,7 @@ void cl_io_unlock(const struct lu_env *env, struct cl_io *io)
>>       const struct cl_io_slice *scan;
>>
>>       LASSERT(cl_io_is_loopable(io));
>> -     LASSERT(CIS_IT_STARTED <= io->ci_state && io->ci_state < CIS_UNLOCKED);
>> +     LASSERT(io->ci_state >= CIS_IT_STARTED && io->ci_state < CIS_UNLOCKED);
>>       LINVRNT(cl_io_invariant(io));
>>
>>       set = &io->ci_lockset;
>> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> index 3b683b7..3aae332 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
>> @@ -229,7 +229,7 @@ const char *cl_lock_mode_name(const enum cl_lock_mode mode)
>>               [CLM_WRITE]   = "W",
>>               [CLM_GROUP]   = "G"
>>       };
>> -     if (0 <= mode && mode < ARRAY_SIZE(names))
>> +     if (mode >= 0 && mode < ARRAY_SIZE(names))
>>               return names[mode];
>>       else
>>               return "U";
>> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> index c83b7d7..46322d2 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
>> @@ -52,7 +52,7 @@ void lprocfs_counter_add(struct lprocfs_stats *stats, int idx, long amount)
>>       if (!stats)
>>               return;
>>
>> -     LASSERTF(0 <= idx && idx < stats->ls_num,
>> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
>>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
>>
>>       /* With per-client stats, statistics are allocated only for
>> @@ -101,7 +101,7 @@ void lprocfs_counter_sub(struct lprocfs_stats *stats, int idx, long amount)
>>       if (!stats)
>>               return;
>>
>> -     LASSERTF(0 <= idx && idx < stats->ls_num,
>> +     LASSERTF(idx >= 0 && idx < stats->ls_num,
>>                "idx %d, ls_num %hu\n", idx, stats->ls_num);
>>
>>       /* With per-client stats, statistics are allocated only for
>> diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> index e1f4ef2..64cc746 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
>> @@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
>>       struct dentry *entry;
>>
>>       /* Disallow secretly (un)writable entries. */
>> -     LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
>> +     LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
>>
>>       entry = debugfs_create_file(name, mode, parent, data, seq_fops);
>>       if (IS_ERR_OR_NULL(entry))
>> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> index cca6881..a97b2fe 100644
>> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
>> @@ -1396,7 +1396,7 @@ static void key_fini(struct lu_context *ctx, int index)
>>  void lu_context_key_degister(struct lu_context_key *key)
>>  {
>>       LASSERT(atomic_read(&key->lct_used) >= 1);
>> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
>> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>>
>>       lu_context_key_quiesce(key);
>>
>> @@ -1516,7 +1516,7 @@ void *lu_context_key_get(const struct lu_context *ctx,
>>                        const struct lu_context_key *key)
>>  {
>>       LINVRNT(ctx->lc_state == LCS_ENTERED);
>> -     LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
>> +     LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
>>       LASSERT(lu_keys[key->lct_index] == key);
>>       return ctx->lc_value[key->lct_index];
>>  }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

