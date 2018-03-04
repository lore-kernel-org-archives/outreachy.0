X-GM-THRID: 6528628385749401600
X-Received: by 10.28.103.133 with SMTP id b127mr903861wmc.30.1520190263509;
        Sun, 04 Mar 2018 11:04:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.124.15 with SMTP id x15ls1132526wmc.4.canary-gmail; Sun, 04
 Mar 2018 11:04:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELt+9rm50g77GUORbNTRkwe0PiSEeEd+qGVW4cpgnjH6yMP4CEPre4P88EZOpf5TqTLTlKUL
X-Received: by 10.28.190.24 with SMTP id o24mr902800wmf.10.1520190261872;
        Sun, 04 Mar 2018 11:04:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520190261; cv=none;
        d=google.com; s=arc-20160816;
        b=ctvCdIr1lLShCBFzQIPOGVwMkAzBBG2BurTI/YSb/DkdYwN8hz4e5U+a3oswnL/uMN
         zTTWb3MAtP8iPmsTBvhoql7QonkFhzSTyYdbZKA83anxQFTrbgaOL6Sn53QneVfZC7sX
         TGv0GLcmsWUM/n8wsPq3GFvyO0nkKAty+0jG4QfikE4HJ8GNNfUEapIBsVqGd03JbiaT
         uy9btDR7YsCgWy2PZhIx7f32B0Y8b51z8FOGavQbDO2DjsHMDMEOPjivRzAsgKxDnscL
         TVn6wWIFvLGJMvaxKkyoSPoQCxgdmsUTgv2iP4o62iyisGC8hGIpxQwYeJASWtc4qWXd
         5UhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4eD11XZQvc4Lb1LyFo7au8/T5rfvVD33xisiyelWx3w=;
        b=LmUt+nc/5+/lcABPANRySkOyv7A88ili2y3mHSHLpEzyexzfj0LmfSTciMqXzsgYFQ
         +j8xOfxaGAX9wX07uWjdwaQpy+NvVZ1QLwJImmMyUG6xn1PmD20orfk/KGdu027SEfPA
         iV0HXp6psI0ajn1dUIKuC+/R2dnMAXyv5DI9JMvjtMwSIX9gunQHRv8yUdTJyV88flsy
         iGhJxKM65Xdz8XrhC1MCXtRt9tgYj4HJM2GxAZLXbDoxws5j1M0AOql8GJN8pvTcQOn6
         M37tJQjVtOuUxvUMQ48PfkyfNEqQP7rySilkLzU2nZ35OQ+mfuEn8c8hdnl8pV3h6cD7
         xVxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s81si256134wmd.2.2018.03.04.11.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 11:04:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,424,1515452400"; 
   d="scan'208";a="256918932"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 20:04:20 +0100
Date: Sun, 4 Mar 2018 20:04:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: lustre: obdclass:
 Fix comparison to NULL
In-Reply-To: <2af5f92fecc211d04770d19600874f3345f97200.1520153895.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803042003320.2182@hadrien>
References: <cover.1520153895.git.dafna3@gmail.com> <2af5f92fecc211d04770d19600874f3345f97200.1520153895.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:

> Replace comparison to NULL with a 'not' operator.
> Issue found with checkpatch.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
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

! actually binds more tightly than ==, but I think that keeping the
parentheses is helpful for clarity.

julia

>
>  	entry = debugfs_create_file(name, mode, parent, data, seq_fops);
>  	if (IS_ERR_OR_NULL(entry))
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2af5f92fecc211d04770d19600874f3345f97200.1520153895.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

