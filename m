X-GM-THRID: 6465611589668044800
X-Received: by 10.28.212.14 with SMTP id l14mr93529wmg.11.1505412805841;
        Thu, 14 Sep 2017 11:13:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.147 with SMTP id t141ls1645664wmd.12.canary-gmail; Thu,
 14 Sep 2017 11:13:24 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD8f3QstZg8KHpLpWICE5JYJG/Z/KQ/DG+ox7RGFTl0r6TFqS4WcU6dHamzyfTbYY3o04SV
X-Received: by 10.28.9.12 with SMTP id 12mr83566wmj.7.1505412804658;
        Thu, 14 Sep 2017 11:13:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505412804; cv=none;
        d=google.com; s=arc-20160816;
        b=yGW9RzyIcolq9K4B5d01c1aDQ9QxfDE1f2yc27ioG1p4tQzJ8MSa99EgAyLORGOUG2
         eQ8iO5C4M3ZJthFUonQdhux+eDguPvvJTr8T7V0IxAfNbDId24RNXoQC9++5uquFyQDW
         2kk3WNW91fhqTb6Rl3inuBmfhrpAfZrY/eNowhskd1cY9pxj0LB0QBCFQNmXWTQ7rpOl
         MQ57VK42JAGvxOoUEzont7SWRT/8ZyVS3/p7er/Ih8h5qxanutBPm08s9htWuQMcVJrJ
         Vclw2yECzegvCpwXp0giqu7i1eSXpuOSoVia/VQKAb0wtn03B5z85XiR/Cy7+Guqxo3+
         03+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=C2PE0+K6cj9WM+NIDo2JPgU87rwZNkuf4sInFoDtCwg=;
        b=vOLCsiPQbMzIxNi6WrtAYQoOGeNZAy9MrOz3zRCi9UrqknpeZqPYOvb5pn8ANwtEUn
         ZPMsmMyqO3S5ZQ3Uk1vIOSpL0jOVN9jbXVUKIfjFKR9/WQUuxqLl6fS7QFbDo0awTaTI
         hrdtL9CqK1E8iO3ohx4ydOu/pt6yHAYf8QbUoBYREtekdnm3pajZA3qodgq6pjzTuLw4
         Kr/MTYlm3bZ94KRws2RlYngD7JQ/oNj+ZvNoRS3DwQqmJQQGf8H6Ln2Fa0mywkaa8i8G
         6rCiWP9nEOZHHHKFiMOX4o6Lp1lZibVpsgraXcGS0D7ZDMdSXwV1R1Pg8gkUcZtHhDwR
         8zcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r3si39158wmg.6.2017.09.14.11.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 11:13:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="237538768"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 20:13:23 +0200
Date: Thu, 14 Sep 2017 20:12:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: fix macro
 definitions warnings
In-Reply-To: <1505412173-4576-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709142012020.3185@hadrien>
References: <1505412173-4576-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Aastha Gupta wrote:

> This patch fixes the checkpatch.pl warnings related to macro
> definitions.
> 1. macros with complex values should be enclosed in parentheses.
> 2. macros with multiple lines should be enclosed in do-while block.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> Changes in v2:
>   - removed changes to PLUBUF(buf)macro.As insturcted by Andreas,drop that macro in another patch.

If possible, you should make a series when there are multiple changes on a
single file.  Otherwise, it will be confusing when it comes time to apply
them as to whether there are dependencies between them.

julia

>
>  drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
> index a3c0481..c8d5e0b 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1151,8 +1151,10 @@ struct lu_context_key {
>  	struct __##mod##__dummy_fini {; } /* semicolon catcher */
>
>  #define LU_KEY_INIT_FINI(mod, type)   \
> +do {					\
>  	LU_KEY_INIT(mod, type);	\
> -	LU_KEY_FINI(mod, type)
> +	LU_KEY_FINI(mod, type); \
> +} while (0)
>
>  #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
>  	struct lu_context_key mod##_thread_key = {      \
> @@ -1161,10 +1163,8 @@ struct lu_context_key {
>  		.lct_fini = mod##_key_fini	      \
>  	}
>
> -#define LU_CONTEXT_KEY_INIT(key)			\
> -do {						    \
> -	(key)->lct_owner = THIS_MODULE;		 \
> -} while (0)
> +#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
> +
>
>  int lu_context_key_register(struct lu_context_key *key);
>  void lu_context_key_degister(struct lu_context_key *key);
> @@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key *key);
>  	struct __##mod##_dummy_type_stop {; }
>
>  #define LU_TYPE_INIT_FINI(mod, ...)	     \
> +do {						\
>  	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
>  	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
>  	LU_TYPE_START(mod, __VA_ARGS__);	\
> -	LU_TYPE_STOP(mod, __VA_ARGS__)
> +	LU_TYPE_STOP(mod, __VA_ARGS__);		\
> +} while (0)
>
>  int lu_context_init(struct lu_context *ctx, __u32 tags);
>  void lu_context_fini(struct lu_context *ctx);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505412173-4576-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

