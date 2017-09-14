X-GM-THRID: 6465606659155689472
X-Received: by 10.25.181.214 with SMTP id g83mr1901369lfk.17.1505392340972;
        Thu, 14 Sep 2017 05:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.200 with SMTP id 69ls263670ljz.37.gmail; Thu, 14 Sep
 2017 05:32:20 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4o1+huhXxX+rMcW7Lp+Pv5/ZGOTCQiwdYkA55FpRum1beUUx3eDxAdLQ5igZW0lK4zB4Am
X-Received: by 10.46.0.222 with SMTP id e91mr1748328lji.21.1505392340102;
        Thu, 14 Sep 2017 05:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505392340; cv=none;
        d=google.com; s=arc-20160816;
        b=eCRXmCgdCGyqJOfiHhFMaRNjlPKIgQP3Y0P4q3OMLBoMA20wDsTI4lWlqUh8f+VG1q
         oTHQzPc1Ch5Dc/0B0ViDy+Py13YKo2Bdpo6RuJccCiX74+3rEZbgUre20Bit9kVWM8vN
         ZNcy3yty4Ky0YEkRAVywruZ8uiY2xhYz4fanoVCSKrxfSN7osxLMA6aW9ptLMNXzlzEH
         uzvZJxfKecVRc9eXScY6CnmRIfewNUvUlgsG5gLj1Vw/2jR0ITV2hfnrDS3C9LqCL64r
         Hs1sKCACuQX0clEZ+u0HcpDWYdcB0YtkloqwXl3BBO3GYkBHKj67SCjkdZ0rJWnNopE2
         dWTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LP1PHx8HeC632G/44MTReMtrc7D3zUm2k/cALa//Bk4=;
        b=tTOysnMEqXglhENACblrMj+v3onENwFgptxRsL6PypxYlYGxiVQBnVSL1rRWxnsyyF
         GgD0DBuMU90u8TnPa9xiS3s7a5zzQEceO7dPPz1oUUSCICY/+AGibHwH0Ekzv7bBPGtI
         bU+/qZpapLlOaQk4XwnBgy6WIyF7MMt+E4cMXUpso4WnoQWvmiHDAifq98kDYR6LaoN6
         TFQv2txAM689HQH9n0L8RZOc1x7066whj37hNc/SBxzoHOh74aIcHQY1JjuRw4mxGfb5
         +LJMtWrdpnXPeGKa6QHKhL43BERMb/N0RmF2ezU0YyXncaPEvL8pXFOTx9hGBBWMhPR0
         KEEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si7071wmd.1.2017.09.14.05.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:32:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291072334"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:32:19 +0200
Date: Thu, 14 Sep 2017 14:31:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Use kcalloc instead
 of kzalloc
In-Reply-To: <1505391353-4516-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141431050.3185@hadrien>
References: <1505391353-4516-1-git-send-email-srishtishar@gmail.com>
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
> ---
>  drivers/staging/ccree/ssi_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
> index 0655658..65a0529 100644
> --- a/drivers/staging/ccree/ssi_sysfs.c
> +++ b/drivers/staging/ccree/ssi_sysfs.c
> @@ -376,7 +376,7 @@ static int sys_init_dir(struct sys_dir *sys_dir, struct ssi_drvdata *drvdata,
>  		return -ENOMEM;
>  	/* allocate memory for directory's attributes list */
>  	sys_dir->sys_dir_attr_list =
> -		kzalloc(sizeof(struct attribute *) * (num_of_attrs + 1),
> +		kcalloc((num_of_attrs + 1), sizeof(struct attribute *),

You don't need the parentheses around the first argument.

julia

>  			GFP_KERNEL);
>
>  	if (!(sys_dir->sys_dir_attr_list)) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505391353-4516-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

