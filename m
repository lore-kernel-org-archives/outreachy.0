X-GM-THRID: 6671347269722177536
X-Received: by 2002:a50:f4ee:: with SMTP id v43mr16407164edm.25.1553527302421;
        Mon, 25 Mar 2019 08:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls3084334ejt.8.gmail; Mon, 25
 Mar 2019 08:21:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzvNSZmviB2j7VJOvXeQNAwtLQM3kCtXaPVf3xWjwCM4e+UdRpBUVMZZNo9YvwpJNOzkDIh
X-Received: by 2002:a17:906:b291:: with SMTP id q17mr14645897ejz.56.1553527301490;
        Mon, 25 Mar 2019 08:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553527301; cv=none;
        d=google.com; s=arc-20160816;
        b=NEZ6mGGva0jwaMPnPceTi1X7FhRynGFCoKmSL9mrJwA+2g+b/ntWES/OVH7gzrdPWS
         kvi7fQfKaSX/8zWx3Ayeu2ZHw+izRrHiDnTkU/3kCmTk9HMmZqL5yeZwkkbL0F7QMBCZ
         xnUKQZlwJA8I0QLJbV2MCHnSIbMW09Lx8tnXfe/UZExpaWkP1OBV5YH8DAsdNDSFXOmT
         eu8WcqCGtQrECTDTJQXjdRoCkU2HrXVgjhoNrRfGx9f9KoigFz28nNYQIoTSKG4iMVyt
         sH6aTyv5xi94FE51lJiqdcWpyd/UYX7lVXGogyWVGJh3NAq+bKihPtTe71Sqjp4teuMR
         NW1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tB8MgxAQ4PljWG78qebko4mDsh39o/8A5af0mwQsXCs=;
        b=Rl2vzEWlHJ+S3ABGJguGC9HCAPnNxacKHzDsdCC1mpUVzYholBW2edW8K+y7Ck9H21
         /TCp2KtRrENDKtZS/V6gXc+0egZ8QgoEZz+RIgRGTfcuXGER95FIAJJiy8CNS1KO0tyA
         5s7m/+M5fx0pq/+geTNHT4U9H9c21LOvFKvboxBQyVXkNHDBWo17JfIsG+xWq56ChHuM
         O/phA3BNllgC4l4MJz3hM9wK/9O73YXr97e85SeAqQvnzPmR6OUrjMe9LVwLDiw9CR2q
         oawPBArmmxJRWkAwedzuetQ5p0T/Atn1PGIfHfkOaPvwcO7BFIsEtmur5In+PIQ36j7r
         sJcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a5si925696edn.3.2019.03.25.08.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 08:21:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,269,1549926000"; 
   d="scan'208";a="375657833"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2019 16:21:41 +0100
Date: Mon, 25 Mar 2019 16:21:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: davinci_vpfe: Fix
 preferred form of passing a size
In-Reply-To: <20190325145934.8467-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.20.1903251620560.3543@hadrien>
References: <20190325145934.8467-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Mar 2019, Madhumitha Prabakaran wrote:

> Fix perferred form of passing a size of a struct to improve readability
> and eradicate an opportunity for a bug when the pointer variable type is
> changed but the corresponding sizeof that is passed to a memory
> allocator is not.

You need to say what is new in v2.  You can make a v3 that explains that,
and also fix up the spelling of preferred.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 3d910b85905c..30e2edc0cec5 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1264,8 +1264,7 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
>  		module_if = &ipipe_modules[i];
>  		from = *(void **)((void *)cfg + module_if->config_offset);
>
> -		params = kmalloc(sizeof(struct ipipe_module_params),
> -				 GFP_KERNEL);
> +		params = kmalloc(sizeof(*params), GFP_KERNEL);
>  		to = (void *)params + module_if->param_offset;
>  		size = module_if->param_size;
>
> @@ -1306,8 +1305,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
>  		module_if = &ipipe_modules[i];
>  		to = *(void **)((void *)cfg + module_if->config_offset);
>
> -		params = kmalloc(sizeof(struct ipipe_module_params),
> -				 GFP_KERNEL);
> +		params = kmalloc(sizeof(*params), GFP_KERNEL);
>  		from = (void *)params + module_if->param_offset;
>  		size = module_if->param_size;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190325145934.8467-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

