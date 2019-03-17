X-GM-THRID: 6669079539693387776
X-Received: by 2002:a25:3241:: with SMTP id y62mr6261525yby.61.1552817622615;
        Sun, 17 Mar 2019 03:13:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:27d6:: with SMTP id n205ls520827ywn.10.gmail; Sun, 17
 Mar 2019 03:13:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwe+Iss9rMvJr+hvAfjz5418B/O+rR6SVxvdaQUkl+YSbg4PbUBxDsVb/ddsstV5206glnD
X-Received: by 2002:a81:9896:: with SMTP id p144mr6245633ywg.0.1552817621546;
        Sun, 17 Mar 2019 03:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817621; cv=none;
        d=google.com; s=arc-20160816;
        b=fWyPq8rnPgzR/dbqe5NZRo+0ulAXOaSpT0DKuuJMBD7da1h6gUANEM/uEWtlUp0P39
         knNU9wSp2rR0N2373zgfi1hXlTNMJw0Ny+aLnyPxmEKiiiL+DawvTORDVOj4l6ELi4JG
         IkeEP5UgUP98Uha4VFd09Fm7GCmgjCigrJINggddVQ2cyCV9r4UH67RetBC/BzmIYm3d
         HdzlhOCckAjHAdx5JyuOFbE6aH8DxTTle0P4OQGfittkA4zGaCaLjTtZlcykIJ6E52jR
         8jU69RIu+cMfln+MGgrr6wlk0OQD2vgQxdQoEo9KiODq8nQaj+iSdnK5P62O8+6/HrSz
         E15A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bRS71dRDuysiQmfrHr0BcNixYLsA2NqonorjsnUztz8=;
        b=qi3qQhRZ3VtpFys+PZ4uMYkf6Rk+pzvNdChYK/DK3wilzA/qIyue4oagNKxX8UDgbj
         VWvr0ZgImS6IIeMtHpRVuUEUaYxeRI00mWT1fpn9/XsjBrGGCE9k9W2iAKjM5EqTMuUY
         Jif81AWlr+o+T2R5pUIBvxRy6K6QrbUiYrY4onttg/NwX89XuRT85wrJzvyon6Dqgu/2
         sB42eFr4vRVNPJ7HLBG3ByxlrNxjFH056nVHk09q1B4JeBrS0toOdMcKDJr5dMxBoXsh
         HGTTL+fRL2Zt5ZDehcYr1asPRT53CxxiuxD7NdQg2SFjcOpvgOl2Z0e1nQAx3u6RLLvZ
         e66Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jvsfLTU4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k62si398935ybb.4.2019.03.17.03.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jvsfLTU4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0144521019;
	Sun, 17 Mar 2019 10:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817620;
	bh=yltHKvL7Voeu3OMU5O4GYdaXh2tiwg29G2FRd1QXfIk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jvsfLTU4pj/ERJ99W+3jP639Xkt46TylU8tCzSjDZ/UKCQKN44o+9iBaBf6EYQ/Oi
	 LOMojup1EKJnCO6X9FJxQZWj0AM45Tx0pQqx8bgaXvA58h/ODv3WSocooB2/cDwew7
	 i+TFVReIDifgOtDiZNuQXnCqdeK5bit4Rdft4BPI=
Date: Sun, 17 Mar 2019 11:13:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: anushkacharu9@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gasket: Create a new
 variable to improve readability
Message-ID: <20190317101337.GD26906@kroah.com>
References: <anushkacharu9@gmail.com>
 <20190316195427.2673-1-anushkacharu9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190316195427.2673-1-anushkacharu9@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:24:27AM +0530, anushkacharu9@gmail.com wrote:
> From: Anushka Shukla <anushkacharu9@gmail.com>
> 
> - Define a new variable temp_table.
> - Modify it to maintain Linux Kernel Coding style.

What is "it" here?

> 
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 7c2ffa467557..d0fffb51c9c4 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -526,21 +526,22 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
>  	}
>  
>  	type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
> +	struct gasket_page_table *temp_table = gasket_dev->page_table[0]

Did you build this code?  The compiler should have complained a lot
about this :(

>  	switch (type) {
>  	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
>  		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
> -				gasket_page_table_num_entries
> -				       (gasket_dev->page_table[0]));
> +				gasket_page_table_num_entries(temp_table);
> +				       

Always run your patches through checkpatch.pl before sending them out,
so that a maintainer does not have to tell you to run them through
checkpatch.pl :)

thanks,

greg k-h

