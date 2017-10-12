X-GM-THRID: 6476153920097878016
X-Received: by 10.46.18.17 with SMTP id t17mr158310lje.33.1507851747042;
        Thu, 12 Oct 2017 16:42:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.18.153 with SMTP id 25ls824977ljs.6.gmail; Thu, 12 Oct 2017
 16:42:25 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TqC2DwgOgEbW582k/l3D3Y7aZLHt9udp7YB9fJbv/IGveTomVNFPmuduIXPOgpBaJUeXDj
X-Received: by 10.25.35.87 with SMTP id j84mr122559lfj.23.1507851745819;
        Thu, 12 Oct 2017 16:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507851745; cv=none;
        d=google.com; s=arc-20160816;
        b=OCvnSJnfpWfhfGwz3MUWcJtD3bqnQpCMRei2Qbt+8QlwI722x0JNqjziv0XBMUifLE
         i77S9ssZsIbejsG99xVCCApSnGbpnY0K6r2tBs+GqJBWPJiktYhV9OMykPDDjjNpy1k5
         oG/HDyRKB+5WCNTh5Vz81GPrkDhRVo6s336yQbabIWt672OFn9JcCffJOpVcGcmxHnSv
         AIhhiLktKwmwmTP21fDeQoGElsLBj/LdBe5ABm1zO84BP80uA2DUJ1zV2fK+NyargDt6
         V/XvkkqcGUstX1gie3Mo9NRiXQtlZ9Vx8sf68vYnxLvTm4qxb1UdKuqXx5uJtgd+4oyY
         4NEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=+LXZDHPHKlt92uei1lG0cT18a6SKSwECINVImTwJHuY=;
        b=IFl6dWagMKqp+X/ZA5CIOGpyTF9MokhSIMWhyenEqVubuf02t2Lw8zdP5Q+QYlZLvF
         iB1CEoOLUAGOHxSE6BNHwF6AjALAajNBbR2MhJxPUBgqvCcChZZrR7Kcau+dTtRWxkVD
         19EAVkZkLjiNwHLBapkT8RO0xmkrjMNj2cfBTwDR9ZNuTtJuAMOUGA00+N0SQZn0lfFU
         XHbDDclQF8Gz17jKAEAJu1FAjj055m3h1yluvBL0cAgAHDjMoJaAIy/NEk3RYshj3Sr7
         MjDGbAa6Gi16Hd4kW7WbMkQATCj5nZxsMEuItwrzSbmGLsvUVEsaWhcs6sq3h6/DzCzj
         YqeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Return-Path: <fw@strlen.de>
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a01:7a0:2:106d:670::1])
        by gmr-mx.google.com with ESMTPS id c185si404187lfd.5.2017.10.12.16.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 16:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) client-ip=2a01:7a0:2:106d:670::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.84_2)
	(envelope-from <fw@strlen.de>)
	id 1e2n7H-0001tp-B2; Fri, 13 Oct 2017 01:42:15 +0200
Date: Fri, 13 Oct 2017 01:42:15 +0200
From: Florian Westphal <fw@strlen.de>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: pablo@netfilter.org, netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] netfilter: nfnl_cthelper: Replace kzalloc with kcalloc
Message-ID: <20171012234215.GB25032@breakpoint.cc>
References: <20171012222218.1220-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171012222218.1220-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Harsha Sharma <harshasharmaiitr@gmail.com> wrote:
> kcalloc is preferred to allocate an array instead of kzalloc.
> This patch fixes checkpatch isssue.
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  net/netfilter/nfnetlink_cthelper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/netfilter/nfnetlink_cthelper.c b/net/netfilter/nfnetlink_cthelper.c
> index 41628b393673..f1ce335b9158 100644
> --- a/net/netfilter/nfnetlink_cthelper.c
> +++ b/net/netfilter/nfnetlink_cthelper.c
> @@ -189,7 +189,7 @@ nfnl_cthelper_parse_expect_policy(struct nf_conntrack_helper *helper,
>  	if (class_max > NF_CT_MAX_EXPECT_CLASSES)
>  		return -EOVERFLOW;
>  
> -	expect_policy = kzalloc(sizeof(struct nf_conntrack_expect_policy) *
> +	expect_policy = kcalloc(sizeof(struct nf_conntrack_expect_policy) *
>  				class_max, GFP_KERNEL);

Please at least compile test patches.

