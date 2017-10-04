X-GM-THRID: 6472213781908815872
X-Received: by 10.28.15.134 with SMTP id 128mr698064wmp.0.1507127358849;
        Wed, 04 Oct 2017 07:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls3407620wmv.9.canary-gmail; Wed,
 04 Oct 2017 07:29:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCdPvXfvUJ8RepYnD2Ot6aAtiAHJYFIE/oofWHdUqr/XiEsfpGZzvQBzPuLwNXZpAV66K17
X-Received: by 10.28.47.197 with SMTP id v188mr2155658wmv.23.1507127357868;
        Wed, 04 Oct 2017 07:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507127357; cv=none;
        d=google.com; s=arc-20160816;
        b=OBzoMDTWHHr99t6ldp5EZgcoSCez6tJ+ey4LDF7qF9qnWBLrhTbGQcU4/YNc2sRL8x
         c3rPAh1AELs3GDZO3eeUzTBhV8MBmFGieBrAcObj9AmTsDZpbqBNyAsQNe32fxSjQVXu
         tV8IfizjjCMphJkyNWZA/4TjWQASPFNxx1kJRI2OLtZpQ9NFfTk/YLKKvqffM09YvEKR
         QQIR73lS0lidqEu+dDzqKuu0u6tnCnCpSKG1RGxulVKh5QL/QNXfWtgXCt2DWyIfMNFq
         mzS6nOVwE8WdT76XM5gu8ymPMEuIteLqLAC8CHwV0lWW7fRQbFKVeXNNSvMGKZVFpqM/
         BBiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=KIHaj4Xp4zoMp8QNHx3HOBJG/NiwpEnGBxyypGnyNHE=;
        b=S/suNSSmhx9U9wXyrX0b1Jf/vUs9N7T5u4rX4/p+Rwjvbv4hE04byRlQLwl6rDNsmY
         Uf7Sc3hO1A5pSxV9YFfniZlAUlAIXAGmSHXNqZmmzh1C69uyEJCphMLCATyVBaPqE+/Z
         ld+vCbPVjAjwTPkxd5/ox+DCoDY7zgNat9v5IFdV+bDK+VKy17eE5wOfBPGXoKsH9zWX
         Wo7yOvgyJSSV8xbt0Nj0+h2kS96wCavN6hrEdDlgy1ST9p9OH7aapT0IJs5sjqAoAu3n
         NYZ1SmX3REB2SUABpVUybZRcnnTaX/j0OU9/SXVX3grhF+FsdlDT05JaqCPMPT9whagi
         ay0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id h17si1912049wmd.0.2017.10.04.07.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 07:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1dzkff-0004AQ-7N; Wed, 04 Oct 2017 16:29:17 +0200
Date: Wed, 4 Oct 2017 16:29:10 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] evaluate: make pointers in string
 arrays constant
Message-ID: <20171004142910.GA22122@salvia>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>
 <9b81cec687c3082f5fd762ece696f1272945e0ad.1506928244.git.harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b81cec687c3082f5fd762ece696f1272945e0ad.1506928244.git.harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Mon, Oct 02, 2017 at 01:02:50PM +0530, Harsha Sharma wrote:
> static const char * array should probably be static const char * const
> array
> as per linux-kernel coding style
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  src/evaluate.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/src/evaluate.c b/src/evaluate.c
> index b783054..f48801a 100644
> --- a/src/evaluate.c
> +++ b/src/evaluate.c
> @@ -33,7 +33,7 @@
>  static struct output_ctx octx_debug_dummy;
>  static int expr_evaluate(struct eval_ctx *ctx, struct expr **expr);
>  
> -static const char *byteorder_names[] = {
> +static const char * const byteorder_names[] = {

I can see more string array that could use this in the nftables tree.
Please, fix all in one single patch.

Thanks.

