X-GM-THRID: 6670105232964321280
X-Received: by 2002:a63:b74b:: with SMTP id w11mr570306pgt.87.1553064548694;
        Tue, 19 Mar 2019 23:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:68c7:: with SMTP id d190ls617354pgc.3.gmail; Tue, 19 Mar
 2019 23:49:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxswIeWD9db+FaIwm4QuqIZl7K5C8GvC4UIQmSpgLIjdvhFTdchtPPcki7a+LHMopLobrmr
X-Received: by 2002:a62:168d:: with SMTP id 135mr8423647pfw.83.1553064548040;
        Tue, 19 Mar 2019 23:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553064548; cv=none;
        d=google.com; s=arc-20160816;
        b=BX8iSVFc51seT6yurvoTVgmnUZwEVMcgjQPlQxwGSgDTm1KamisEtHIDCqQqlYHUpO
         l+Mqf7elWHKanlmkQt6ZJUy+1ryXo0YoZF2VRaZJ/42R5fQMNh+TtAP6pl/LxOvK+jC+
         /7739tl0ID9a7Vr8j3Tocas4F5hgZYIPhbTLVKQIriYx7vFNZ+f7KXMbqbh/sU4mWfGv
         7ciTsSqJu95dcjnOvjjm2iXAYRcxfKFT/w9vJFSODSXB8ObDyWRY5QMNW2MiBhqyQ5AF
         JcdvaMYERwW3F5wwEtfLzISYNyWi9kyvitZvasdb39+5EAIQmFvpXk5wcdhLKQVi+rQF
         OI4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6Vb4rRXVjSQluz5A5rNfUhcwD7wtPKsh+6QguMYg5dg=;
        b=LHzJRMQkJIThU8TpLBgk/RgXtPSBmv2kGR4XWPnlwnU4r+MIh8Z9vXUFnrWBBizIPc
         zd67fSpL88M4RGk9HZYokZEnFZQ3UTBDsTrz5ECkJoP6/W3ul4YMkPT3VH4Q2jhYPj1l
         kBrDv5TEkUrAzcv6U8+hds6YDgpKgIk1xJ9nYHnZLiiwve15G9LV0IDcDf44HjimaQgF
         QM24X8BlZuASEpBeZpqB3IDrFKIq09AkVl2bjF2WEwGqpa+n7Z17/eyV9O5dDPBk4bGT
         6HIQPWjgej7FrZWJsKLA8GNK9nW8aZexHVXyZejdMiveDoQFAD1bxp2KtCl99XGGkfME
         PU5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l+PzfD5D;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j8si23461plk.3.2019.03.19.23.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l+PzfD5D;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4B6162184D;
	Wed, 20 Mar 2019 06:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553064547;
	bh=4mRErPTvzjm3mzR2cOXYnh6tQTgX0QdKXSwj20fmWGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l+PzfD5Do+okInV6Ph0l5tvtQalDPu5j73clCZ5v8rlArcVqXlb0HSQMKgXkZnNQI
	 k10IhzJkxW6WUENbYB5sjMvZJvWFTA45v7MLQab/PHnr1mxn1aevlrDwyOEyyqotHK
	 4wTKqsLNj3p343TZI0C3XH62aJJjWHFfs29UkR7g=
Date: Wed, 20 Mar 2019 07:49:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 3/3] staging: rtl8192u: r8192U_dm: Remove unnecessary
 blank lines.
Message-ID: <20190320064905.GC11556@kroah.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
 <20190319152648.10497-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319152648.10497-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 08:56:48PM +0530, Sanjana Sanikommu wrote:
> Remove unnecessary blank lines.
> Issue found by checkpatch.pl
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v3:
> Remove multiple blank lines from correct file.
> 
> Changes in v2:
> No changes
>  drivers/staging/rtl8192u/r8192U_dm.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 50a9fe667062..546bf5428848 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTable;
>  
>  /*------------------------Define global variable-----------------------------*/
>  
> -
>  /*------------------------Define local variable------------------------------*/
>  /*------------------------Define local variable------------------------------*/
>  
> -
>  /*--------------------Define export function prototype-----------------------*/
>  extern	void dm_check_fsync(struct net_device *dev);
>  
>  /*--------------------Define export function prototype-----------------------*/
>  
> -

This change is fine, but look at this file now.  All of these crazy
comments can be deleted, they are not doing anything...

thanks,

greg k-h

