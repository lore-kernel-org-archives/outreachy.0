X-GM-THRID: 6465881960509079552
X-Received: by 10.25.215.228 with SMTP id q97mr51515lfi.24.1505456401454;
        Thu, 14 Sep 2017 23:20:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.113.23 with SMTP id m23ls132962wmc.5.gmail; Thu, 14 Sep
 2017 23:19:54 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAEy3gKor3VmgFmMMolbttXFgV98HuQCmzshX5NB3csCZrpuM+kfyHNrmdwNk/iJ9FORV/m
X-Received: by 10.28.230.198 with SMTP id e67mr208285wmi.24.1505456394531;
        Thu, 14 Sep 2017 23:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505456394; cv=none;
        d=google.com; s=arc-20160816;
        b=ShWg9nRnX4JIA94kWaPqnWKpf+KyJKZ3KR/9e6Vx+dSFXaagxLx3VHxiO3v5usSHRt
         mwGZCiLnpJsivcVpNFVWK1aQY00qq2GXp3NkYKyP8g3JCYrF4vMG37xYF3Ci3aTDvfcH
         uI30GevDqnhznabwIuXF5Y6zDscR8ih3ULwaRhQBHASDb+noRaLfD7qk6/IchXn4pVPq
         16QRKLoo5HlE1hMFTEOiA/MKe9VxMLMfwZfpr62/XNqk8CXXttbqr6d6WBIdlJZyH49z
         XzvAZUGI9v8pQPYLz3UfgDHPZkqSyJ//0HkcMCsguM7FMYO++/TIh0pzSp+N4mXmizQn
         cquQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=wCsHS/BFHqKPxU/yZtw1WbI6mv7cg1KjiLUrALM0foM=;
        b=UzkjhiWdIvTEKB85kaFLA0zc7g7LyKZqLJroK3Zx772VWxMta6eyj/J+VMTTKLb08n
         t8DaXaAZ0HCeC5uVp8lJcKEu/TCnq5PdbsILK6BqRXepjglDoDiuVRLW+TIaFd6Gg5Ui
         9XsvnBQguzuMnQsceFTl5LjPimZQdoPgtUxYleJwZDG33Wpwoew5NcdQIWamE3x5jt0C
         WEEBwUVH5FBPvseDHJ4wX03HjKnbLhrcoqgjtaMtgYHMeMONtXGQxaNGuhVEagHWfiMS
         VJZ3AdSLRxRwFxvb49tqjxoXDJQHtFxDvSaV9Q2wYXSD8kDVQIiVjdzKaOJxN8cv7xjQ
         pZ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si20068wmg.6.2017.09.14.23.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:19:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="291184061"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 08:19:54 +0200
Date: Fri, 15 Sep 2017 08:19:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fld: fix line over
 80 characters
In-Reply-To: <1505455447-14539-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709150819400.2287@hadrien>
References: <1505455447-14539-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning:
>
> WARNING: line over 80 characters
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/staging/lustre/lustre/fld/fld_request.c
> index 5b18083..081e137 100644
> --- a/drivers/staging/lustre/lustre/fld/fld_request.c
> +++ b/drivers/staging/lustre/lustre/fld/fld_request.c
> @@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 seq, u32 *mds,
>  	target = fld_client_get_target(fld, seq);
>  	LASSERT(target);
>
> -	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
> +	CDEBUG(D_INFO,
> +	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
>  	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
>
>  	res.lsr_start = seq;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505455447-14539-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

