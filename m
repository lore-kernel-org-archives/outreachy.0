X-GM-THRID: 6467514574021066752
X-Received: by 10.28.45.215 with SMTP id t206mr158704wmt.17.1505836790861;
        Tue, 19 Sep 2017 08:59:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.211.207 with SMTP id k198ls2260343wmg.21.canary-gmail; Tue,
 19 Sep 2017 08:59:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAg4Dtx97ZrVXsMvyVrsxk6mzNoFLp5jvZvpQv/ukk2EUjt9LDljBbTikbGQh4bwCQCp34a
X-Received: by 10.28.54.30 with SMTP id d30mr162275wma.6.1505836790074;
        Tue, 19 Sep 2017 08:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505836790; cv=none;
        d=google.com; s=arc-20160816;
        b=vfpStRDwxS4I0E7K3Juy2gYvvpL8TygxPBxS6zEzxlszn4LMNiUaDA79KjfyvIfhw9
         s+arbaewaFM/46xGWuk7hKyhBeZUQeXlBry6hyDHOe+Te4h/k7duKIYJAh4zJzlN6XPA
         w0+XiV1bOiHJw/D+YX6eD4wFJpXatErjRB38/dSKBc/Pl1VbERPJxgiEwFTxYkpOzAxN
         bQ9r3r3SYWT6KZfQD1Nzu7ZaPGpJBMOy9tcpIJmW7/V+VjDsreTD2ghhYibpCiYwMEoK
         LOE6+gnJM4Qw8cqvFh5cdywXRYxrLhHckS1eYKJHQSI7QTQyWUKqDcA1UL3bkEnXGksn
         6K8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=KK2wcWEG3+R9OQP3PGipq74bjUjjSPqKFXUgot/h4kA=;
        b=c8GPuMiheyZQUhuEFCNklZC+TtIwoOGK7j5JlHKPaCbfLLM8B/gxYypcZ1P24htAGo
         EYaqJiQA+LM1L632ovF+XSQ28vqabNHt7jQutB2kg9s1DnO+oyEbiaJmFFHay8xlRYpe
         9U61IT+uKKc+gk2/d/UEl94uY86IzupgDMwHcX7Ny0VamBa08tLeXJa0N5WyHKoZb6Ys
         tiTV8xb/wo4OVxSm1qjopII80TmlIk2GXfyCZyZshNNczrIKVRqeZdByrJftXvQiAY2H
         MyNWmF2xrcY9LyTgELpADc1gsuC78VowrEOqzwDeffbKSJtaUIZiYxoFv0VJYP+kSBTn
         82vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si183333wma.1.2017.09.19.08.59.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:59:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="238041850"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 17:59:49 +0200
Date: Tue, 19 Sep 2017 17:59:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 10/12] staging: lustre: llite: fix
 identation in dir
In-Reply-To: <a52560fee435ea3dc9cf0ab38d3992c9609b9139.1505834825.git.aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709191757330.3036@hadrien>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com> <a52560fee435ea3dc9cf0ab38d3992c9609b9139.1505834825.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Sep 2017, Aastha Gupta wrote:

> This patch fixes identation issue caused by one of the fixes in this
> patch.

I guess you mean "one of the fixes in this series".  But I think you could
have just fixed the indentation when you made the change that introduced
the problem.  Even if it was different than this change, you should fix up
checkpatch issues as you introduce them.

julia

> Have the trailing line of a function call line up with the starting
> '('.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/dir.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
> index e019d9c..b81aab4 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -738,8 +738,8 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
>  			CDEBUG(D_HSM,
>  			       "Could not read file data version of " DFID
>  			       " (rc = %d). Archive request (%#llx) could not be done.\n",
> -				      PFID(&copy->hc_hai.hai_fid), rc,
> -				      copy->hc_hai.hai_cookie);
> +			       PFID(&copy->hc_hai.hai_fid), rc,
> +			       copy->hc_hai.hai_cookie);
>  			hpk.hpk_flags |= HP_FLAG_RETRY;
>  			/* hpk_errval must be >= 0 */
>  			hpk.hpk_errval = -rc;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a52560fee435ea3dc9cf0ab38d3992c9609b9139.1505834825.git.aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

