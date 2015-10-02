X-GM-THRID: 6200732724667351040
X-Received: by 10.112.55.69 with SMTP id q5mr2307004lbp.24.1443775767370;
        Fri, 02 Oct 2015 01:49:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.199 with SMTP id a190ls200345lfe.62.gmail; Fri, 02 Oct
 2015 01:49:26 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr2306994lbp.24.1443775766796;
        Fri, 02 Oct 2015 01:49:26 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c1si195204wiv.3.2015.10.02.01.49.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:49:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id gb1so21722645wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LxEGGRnFbLPGPyOABjkovBLw6xJibr510EG48LlUSRY=;
        b=LSlrRm4A7rfghMMVtoWcKKf4lcO5u6FliwdbziRCazcmRz7/DWyRPXzz3JN1wGtDgl
         8tbzF2E5rADKI/ByE5ygcvUZDJ0gyYqCGv9gMY2CypUUD2KutLCWSyDGKSPerv7OSKnz
         XCOf5e7dcbjf4uhHQ+RV9n5+EFRiXKLH10+uTx78lOTPUiuhz68nzX8+iwOAJF2qD1BN
         a9UYk73344MHClUTVoOKSiTcsT6HU21VJmj6cLIgkTUq5D3DGg0N9T81FyNZcTAjqEYJ
         o4bDGic226nY7tK3HEEvmuSaqr1zO6et1llcXLOeuZjQdnTnqqPopxpqZdhg/wEobYAe
         u2xA==
MIME-Version: 1.0
X-Received: by 10.194.76.237 with SMTP id n13mr16308623wjw.128.1443775766620;
 Fri, 02 Oct 2015 01:49:26 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 2 Oct 2015 01:49:26 -0700 (PDT)
In-Reply-To: <1443773747-2985-2-git-send-email-shraddha.6596@gmail.com>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
	<1443773747-2985-2-git-send-email-shraddha.6596@gmail.com>
Date: Fri, 2 Oct 2015 14:19:26 +0530
Message-ID: <CAK-LDbKTvK=vqNnQaCHcpwMg8fODzoTy1QZZ42dxX1Bvy-Q=nA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] Staging: lustre: ptlrpc:
 Declare sptlrpc_rule_set_merge as static
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 1:45 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Declare sptlrpc_rule_set_merge as static since it is accessed from this
> particular file only. Also remove its declaration from
> header file
>
> Changes in v2-
>  No change

Hi,

You need to write 'Changes in v2' part under --- . So that when the patch will
be applied, part under --- will go away.

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lustre_sec.h | 2 --
>  drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 6 ++----
>  2 files changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
> index 1d2c572..96a717e2 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_sec.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
> @@ -331,8 +331,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
>
>  void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
>  int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
> -int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
> -                           struct sptlrpc_rule *rule);
>  int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
>                             enum lustre_sec_part from,
>                             enum lustre_sec_part to,
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
> index 0d29b87..6fb5b4c 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
> @@ -285,8 +285,8 @@ static inline int rule_match_net(struct sptlrpc_rule *r1,
>   * merge @rule into @rset.
>   * the @rset slots might be expanded.
>   */
> -int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
> -                          struct sptlrpc_rule *rule)
> +static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
> +                                 struct sptlrpc_rule *rule)
>  {
>         struct sptlrpc_rule *p = rset->srs_rules;
>         int spec_dir, spec_net;
> @@ -370,8 +370,6 @@ int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>
>         return 0;
>  }
> -EXPORT_SYMBOL(sptlrpc_rule_set_merge);
> -
>  /**
>   * given from/to/nid, determine a matching flavor in ruleset.
>   * return 1 if a match found, otherwise return 0.
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443773747-2985-2-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

