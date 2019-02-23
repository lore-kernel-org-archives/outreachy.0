X-GM-THRID: 6661069764566188032
X-Received: by 2002:a24:7709:: with SMTP id g9mr1343805itc.28.1550908605756;
        Fri, 22 Feb 2019 23:56:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls2491101itb.1.canary-gmail; Fri,
 22 Feb 2019 23:56:44 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZbnIET3gpPgDS6t6P7KNIh1MzqsoaDZ+AyLxaREYJqqQQrjtfw5jRta2toNh5bHS9zWRoH
X-Received: by 2002:a24:394f:: with SMTP id l76mr1383050ita.23.1550908604929;
        Fri, 22 Feb 2019 23:56:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550908604; cv=none;
        d=google.com; s=arc-20160816;
        b=z1Q/JVR0PYCpsVY1idgIapq+0XRrf3KrXVycdxx/06JySaCe+rWw3anJgHnkE4nmsX
         Ekqqt//HGfko4aKGSO2QrABAJqEiFW+qVFeazH6IszZ+byUbLGQg+0Xyf8ZQlfvH4XjJ
         /pBlfeuY1ApEhtPN1hvwt1RYYZzvnl0wfBeo9IyEU1gshuKebFmlnYx6x++GmsTQl/H8
         lc9GRCrWqDLNbpAqnLTPKvI1SwOL+uhgB0LVwd3itUg4taCgdcHgTIj1GAtcofLngi3a
         dGBQ8umyzkVM2+y/HsytWAhqZyDszAHfZSLv/1aB73JOlKH9+Gu8LpGZ5d+3YSGgG0ek
         r27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=m3ZnKvd2VrE7x0Bntv97BnHG8N9hTzegy24TXq/9FAs=;
        b=bzXwYUMHlWDv7LsTvC0dNfxTAux7yNlP5hmk5EAY07SDkn2sXyxu9Yey0wx4Z4jgfD
         evBRT1z+lr44778F6g3xI5k/OJD8YyCd1LstsG909OkYNlWXJst8xIjqfBkQgjBX84VU
         ZIJBFUTqgLZr37CqGWgZ6+qllgBUqKO5SExCZVqwL1+bMBgCaiFlh6OrdG0TTn/LAbQL
         eHe/6mNSmUnSJEuRwmpSIqFSlhvw3Iztft4IRMice/UNjypH6LuD5Ohu39xG6masXLvo
         Eg/JzACEDFyHVKBKFcJ3SwJqMmUb4+H1p+UbodD1+X2NcM25doLJXpvCoDlNn/T9HgCe
         hk+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ItEV67Ez;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v63si301957iof.0.2019.02.22.23.56.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:56:44 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ItEV67Ez;
       spf=pass (google.com: domain of srs0=0uj0=q6=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=0UJ0=Q6=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8C6D206A3;
	Sat, 23 Feb 2019 07:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550908604;
	bh=8gNkXhkH4MUS4wHW7eeGa5cspkSEmhm41sIHt2hrGl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ItEV67Ez2a4bgZJfoPoO/KePGq9g7BXSiYhY0cgbVQC/SqSECSgsTg410uiAbR83y
	 KUlnmzEy2c4r7zvTzMl/7wZqRkItIv3833+02dA0nSjjNJVTwn1jmADojyD9nemXBH
	 tG+lEma+2T2SH+q0Da2wLzlCNM/fmwElwpovPIMI=
Date: Sat, 23 Feb 2019 08:56:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: gasket: Replaces symbolic permissions
Message-ID: <20190223075641.GB2640@kroah.com>
References: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223055207.3792-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 11:22:07AM +0530, Bhanusree Pola wrote:
> Replaces Symbolic Permissions with Octal Permission which solves the
> checkpatch.pl warning:
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> 
> v2: Subject line modified
> 
>  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index 151e8edd28ea..60590ea4b760 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -40,7 +40,7 @@
>   */
>  #define GASKET_END_OF_ATTR_ARRAY                                               \
>  	{                                                                      \
> -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \

The trailing "\" is now messed up :(

But, as I have said before when people try to fix this up, this whole
macro is not needed at all.  Please just remove it and use the proper
logic in the code.

>  		.data.attr_type = 0,                                           \
>  	}
>  
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \

Trailing \ is not aligned here either.

Also, this should be using __ATTR_RO(), right?

thanks,

greg k-h

