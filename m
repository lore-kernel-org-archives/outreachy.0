X-GM-THRID: 6465606659155689472
X-Received: by 10.46.85.142 with SMTP id g14mr58688lje.22.1505393718296;
        Thu, 14 Sep 2017 05:55:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.91.74 with SMTP id p71ls102304ljb.31.gmail; Thu, 14 Sep
 2017 05:55:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC5pRSNHkLYeVHmABTEQuaC5rU3Fggn59lioKdJrDRyHiX+1biNA1TnvmO2s7366yje9oef
X-Received: by 10.46.85.142 with SMTP id g14mr58681lje.22.1505393716770;
        Thu, 14 Sep 2017 05:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505393716; cv=none;
        d=google.com; s=arc-20160816;
        b=YO09+7k86HEOXBcrP2ylQhdhP5SlVpi/RmWyOSl3ARRyuOQaH/iDgn9TljDCKEyBut
         NhL3s2Q2ar28kL2hnVrA4S0flV/teUjtfPcgNgLsURQQD1T5vovAbmDw62JIXfgvtSMg
         ToDvXv9BHnLOKiH5xVJTlLBDlA/7PTyQhuJ12ce01BAmqx5pLkhbYaMraWHdhUFiIfXN
         p7C/wjlZkGyx467om4+yLhUCsMmB6vryNjoD/wGUEekXpNlrCMcwDyR+jG73ZAB6VtkB
         RMgYcDE86Z88cELjZmzAlBrMURghgbO14DclbcZQYEYsVrAXoG2SNC0kdq6zEarmoP+G
         Mm+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6ENdDJ9EwkNZRFhHr/qML+0XYwjvcMr4ef2+3gp4Xhg=;
        b=D9URju37IR3G9lgIJKy7aZDYaOgUpmv6QwA0dFQhnq3kYdPqyBhyYOFMJVPYgAL5eF
         YnMnGct6yvlHWJnmrUGEMusdw1+udKtyymVfhUh6X5emhLTWTxckBm6p20vrS+XUI4iX
         +qpQmkBFzZP+T1VZMS2j55CFgarfeWFQgpXRAN2OwtewZ4DIO9ra6PUswfkGsvFpkzM7
         Lqw11f99OMHeZ6sERCrZQYBdLZJhzAshoAO+XjVJ/K6Ta+oUDsFzjdfYfLUqfE+FRPZT
         VDP8+UW2PZSbmhZIk3YQzefvuaMrOJeVSPdheKGDkBH9lk0Vi7lLw6vZgavoWLDfHR9Y
         jXCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si13534wmd.1.2017.09.14.05.55.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:55:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291078037"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:55:16 +0200
Date: Thu, 14 Sep 2017 14:54:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Use kcalloc instead
 of kzalloc
In-Reply-To: <1505393293-5941-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141454330.3185@hadrien>
References: <1505393293-5941-1-git-send-email-srishtishar@gmail.com>
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
> Changes in v2:
>  - eliminate parentheses around the first argument
>
>  drivers/staging/ccree/ssi_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
> index 0655658..f7e0c502 100644
> --- a/drivers/staging/ccree/ssi_sysfs.c
> +++ b/drivers/staging/ccree/ssi_sysfs.c
> @@ -376,7 +376,7 @@ static int sys_init_dir(struct sys_dir *sys_dir, struct ssi_drvdata *drvdata,
>  		return -ENOMEM;
>  	/* allocate memory for directory's attributes list */
>  	sys_dir->sys_dir_attr_list =
> -		kzalloc(sizeof(struct attribute *) * (num_of_attrs + 1),
> +		kcalloc(num_of_attrs + 1, sizeof(struct attribute *),
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505393293-5941-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

