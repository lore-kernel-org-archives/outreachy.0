X-GM-THRID: 6528628385749401600
X-Received: by 10.80.177.147 with SMTP id m19mr2793949edd.11.1520090351541;
        Sat, 03 Mar 2018 07:19:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls6078933edi.6.gmail; Sat, 03 Mar
 2018 07:19:10 -0800 (PST)
X-Google-Smtp-Source: AG47ELtzzmPVyQ0cPySzR7hLYEN+f4hEUrGwXEA71QwpUjcRE5WkHhJmgZTO08UvRoG8zkFBbt4p
X-Received: by 10.80.141.16 with SMTP id s16mr2800412eds.7.1520090350438;
        Sat, 03 Mar 2018 07:19:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520090350; cv=none;
        d=google.com; s=arc-20160816;
        b=h7Ta/H2xDC6KbXeCzLgC4fI+L3NiMOe75C7O9DTUQYnzeMB6CZJesOh7cI7WoU6zh+
         4NjxvF8rAYcW5u6u2h9WA0GmlBSSmUeWgJTShTExAu53JKITfaE6rD01d6fvtr8tA69t
         a4LUXYE4o0zpOmINCWu6e820kXPvNa5umpAm5X+7FY7Y74n0ozGElydEp4DrmWyzxvCc
         GNC0NHNhed3YlwUAsDj8Jq7mhOQZ5vB9cvBVkr5Tbm2G4jLV8Y8dHFWvD5jg4AjJBM+9
         /zmBKqsrVYGBf0fJjbr95HT+A+vPC5MRTBYWt0r8gECjV0S99T9osZ4e+NqRlRUuDBiT
         rtQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=V7A5HhPjUXsqd/kObOxnMadH9c5C9xUEa7N/UzN6Cf4=;
        b=aWQCJAZZBwhrZWMHeXycN+uB+ycGvkXR5sqsfxnGFuf3AJhrRxWTRdoLefPT5hxdwU
         +97duC7kK8MBrUgCQSJeOpaS/7hIaA4uOk5BMfQTF0A6uybtgAuDhh3DOILrcpjh4joG
         RPehzqGVa4P5n+ilVASPreaI9h/2mjvyM3MyFz9Bjemw9xa/6jIr6wAUyagBx/Lw8So8
         GLt11bPXM+os9FCvCyG1lIGUj5+xMbBRmtajGswmQBvDci8flZVCf7gTD6tUHZV6gEzL
         L3/nqi0WRK6WVmV7Bo5iKjmU4VoWWkL/cie+3cl4bug1JARgu3NdZ+r2XHp65RGq9VmO
         a/Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i90si162846edd.3.2018.03.03.07.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:19:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="256833659"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 16:19:09 +0100
Date: Sat, 3 Mar 2018 16:19:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: obdclass: Add
 'const' to char* array
In-Reply-To: <dc905c3f60a58a91ccd636cf5d4d9ed0ea334595.1520014706.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803031618480.2302@hadrien>
References: <cover.1520014706.git.dafna3@gmail.com> <dc905c3f60a58a91ccd636cf5d4d9ed0ea334595.1520014706.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Dafna Hirschfeld wrote:

> Replace 'const char*' arrays with 'const char * const'
> since the values in the arrays are not changed.
> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 2 +-
>  drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> index 3aae332..8a73a66 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
> @@ -224,7 +224,7 @@ EXPORT_SYMBOL(cl_lock_release);
>
>  const char *cl_lock_mode_name(const enum cl_lock_mode mode)
>  {
> -	static const char *names[] = {
> +	static const char * const names[] = {
>  		[CLM_READ]    = "R",
>  		[CLM_WRITE]   = "W",
>  		[CLM_GROUP]   = "G"
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> index 7b18d77..7809f6a 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> @@ -495,7 +495,7 @@ static struct cache_stats cl_env_stats = {
>  int cl_site_stats_print(const struct cl_site *site, struct seq_file *m)
>  {
>  	size_t i;
> -	static const char *pstate[] = {
> +	static const char * const pstate[] = {
>  		[CPS_CACHED]  = "c",
>  		[CPS_OWNED]   = "o",
>  		[CPS_PAGEOUT] = "w",
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dc905c3f60a58a91ccd636cf5d4d9ed0ea334595.1520014706.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

