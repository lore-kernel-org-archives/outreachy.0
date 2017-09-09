X-GM-THRID: 6463500175393423360
X-Received: by 10.223.160.199 with SMTP id n7mr331467wrn.15.1504976386353;
        Sat, 09 Sep 2017 09:59:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.78 with SMTP id y75ls469551wme.15.gmail; Sat, 09 Sep
 2017 09:59:45 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBOgIO7FcNojs/jAtRS+eD0MaGgQbapPX1P/Xt9YPM75OrfZF10QNUqmgZepsjCdrpfj+Uw
X-Received: by 10.28.35.142 with SMTP id j136mr475477wmj.1.1504976385628;
        Sat, 09 Sep 2017 09:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504976385; cv=none;
        d=google.com; s=arc-20160816;
        b=ajNW/8ULBGh6zFnInPasIMrjxXa/LzqTfanbtTiQuZIPMWOh6BAi2QQThOc9iJuP77
         Os9+n7ca4DqFGECTMF6PWRy/zmlqSddYJJ3hMIuMlIXjVwD4UJxfGkXLIyOyfztDBcOq
         3FpjziuJBijJrdRUkSPEvxBu4HYqW9Ox9UkSz7J5FYMgXktf1blEOEEUc37Ioy+do2HX
         KOa4KKixmZghhU/nIrf+j6mundVS7/cnCzE8X3MI1qzSE1ZmsJAenpcPlfKTyE/DDwz1
         jGkJP+FlCJYErKt0qsiSuw3zhJ0Za3eYGoL9F8smCoSULsDDut1Q83pdBZWxG5T1RaBr
         2O/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ghD+dwvxzBIGeKMI8pJIyMtiZIQ1wEpxu32WD9cV6+o=;
        b=SituUZ98xiVA2jFFkhd8tsFPzogvA16EbuEsdtpGxyjwfY1yiheV+F64s0YLFHA6uq
         tYvdvlavRidlq+8J1lEp4NK8FdnEbv2YkXBXx1kD54cJll6DvSzJ8qK4rrQuZqaTimsw
         JSdVAkaNAQ0dmWuPKH6p7nNCCxWGSkiwIAVUBgPA0EKiOkI0zxTwrlWT4AjerUoqrWHe
         0eWCDbwqXlFB8GNp/AUxDsT+y3mBtnwQlHXlUZilcTamlJOqOrUL02PIDPAGYD+97zJp
         jF+OCmDzPjcpsiVbvOoJ3SKNAyP0cZJUKXf/qniYYbsoXSzD5C2hpVGtFXofezZDHpZV
         GBqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o7si160556wme.1.2017.09.09.09.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 09:59:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,367,1500933600"; 
   d="scan'208";a="290298371"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 18:59:45 +0200
Date: Sat, 9 Sep 2017 18:59:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Merge assignment with
 return
In-Reply-To: <1504953861-3221-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709091858060.2149@hadrien>
References: <1504953861-3221-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Srishti Sharma wrote:

> Merge the assignment and return statements to return the value
> directly. Done using coccinelle.

Coccinelle is not always perfect about pretty printing, so you have to
watch out for it.

>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_sysfs.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
> index 0655658..9fa7be0 100644
> --- a/drivers/staging/ccree/ssi_sysfs.c
> +++ b/drivers/staging/ccree/ssi_sysfs.c
> @@ -412,7 +412,6 @@ static void sys_free_dir(struct sys_dir *sys_dir)
>
>  int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
>  {
> -	int retval;
>

This is going to leave a single empty line at the top of the function.
That is not needed.

>  #if defined CC_CYCLE_COUNT
>  	/* Init. statistics */
> @@ -423,10 +422,9 @@ int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
>  	SSI_LOG_ERR("setup sysfs under %s\n", sys_dev_obj->name);
>
>  	/* Initialize top directory */
> -	retval = sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
> +	return sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
>  			      ssi_sys_top_level_attrs,
>  			      ARRAY_SIZE(ssi_sys_top_level_attrs));

Previously the arguments were lined up with the right side of the ( but
now they are not.  So move the above two lines to the left by 2 spaces.

julia

> -	return retval;
>  }
>
>  void ssi_sysfs_fini(void)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504953861-3221-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

