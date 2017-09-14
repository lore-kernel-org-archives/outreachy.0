X-GM-THRID: 6465604246954835968
X-Received: by 10.25.17.102 with SMTP id g99mr1721125lfi.14.1505392282818;
        Thu, 14 Sep 2017 05:31:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls405734ljd.12.gmail; Thu, 14 Sep 2017
 05:31:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDLnjnXkuQxVcW0znY5Wu88gU6+ko/0P8ef3Qw/AgySDMAjJcJtpJKOycn1+we3k1XokF+N
X-Received: by 10.25.162.201 with SMTP id l192mr1902004lfe.39.1505392281296;
        Thu, 14 Sep 2017 05:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505392281; cv=none;
        d=google.com; s=arc-20160816;
        b=0lTmq6nYOton9uckjcaSWRmTJGLoOpepOhnt0b/l4L1dApgk3PCkRdJP3nurqv37p9
         VrUDqBvH5wfod9jk1yYDjOSOd6cma6feoh4WriyOtHCmibwzLe2mAPMiZOFMAQqoJCRd
         hi2hhHXiij//b2k44PzmAPhEWo8h585deQN1Bvu2KVo3poOcRtNlX3jYi6u5z6YNnTYS
         0oHck4jOqRWsEYdL1nk40PsMk2BQykGz/MidqX2Md78eZoEy3EUhkRRSjkh6aPK2KzGW
         8cvQD6VxcwqLuykAsAcyji1HwqDNEx7dANIcj1DS4/zzmZSju6Tc6PzPG3WX9M5c2+/E
         kBBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=iEmCtTY4VQwsf2/NreCypemcNUfZQHhopzrzxX5duVA=;
        b=wd6gbHttL5oqOTs+U8xdoEa0ZQDutQUGDb/P+xuVSLxopLEwfmnGyXRfXN444oBbrD
         9K7yEAYI9a6d83x/CLE4xDAaxzeJJVUMLOJ7d65rzv+cLlDDb/JHOOUMOESHRrXsaiGs
         XaKeCA32SbxTkro0tJf4dHvlAprs8yVgAPGwL+o7eqr8notwnf4cSpXsRwQTmI4Qq+IH
         JuSk2VR4I7NvkT8KQGexbv8eCTEco7DuOEEeKfslLgGj/JQ7RJyqijCXAuwfsWx9fLHn
         UsL4owqTMV6OYxna6BoPFAUMYRE7zzx+sEpHBYxRwBlF6uuzudJ6qz2DXX00s9+1XWHp
         fT9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c142si4851wmh.3.2017.09.14.05.31.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:31:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291072142"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:31:21 +0200
Date: Thu, 14 Sep 2017 14:30:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use kcalloc
 instead of kzalloc
In-Reply-To: <1505390789-3814-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141430330.3185@hadrien>
References: <1505390789-3814-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Srishti Sharma wrote:

> Use kcalloc instead of kzalloc to check for overflow before
> multiplication. Done using the following semantic patch by
> coccinelle.
>
> http://coccinelle.lip6.fr/rules/kzalloc.cocci
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> index 95c7fa3..28cb8489 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> @@ -1016,7 +1016,7 @@ int cl_global_init(void)
>  {
>  	int result;
>
> -	cl_envs = kzalloc(sizeof(*cl_envs) * num_possible_cpus(), GFP_KERNEL);
> +	cl_envs = kcalloc(num_possible_cpus(), sizeof(*cl_envs), GFP_KERNEL);
>  	if (!cl_envs) {
>  		result = -ENOMEM;
>  		goto out;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505390789-3814-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

