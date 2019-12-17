X-GM-THRID: 6771501280908017664
X-Received: by 2002:a81:3693:: with SMTP id d141mr376590ywa.396.1576613284250;
        Tue, 17 Dec 2019 12:08:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5d09:: with SMTP id r9ls3313484ybb.2.gmail; Tue, 17 Dec
 2019 12:08:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqw1GyHhWt11MOHY12LWGVZY5X3AWfBnvUX62UOXBrKI1aPcQF5MH3ECo9ZZDmOGB6O1mBdI
X-Received: by 2002:a25:bdc9:: with SMTP id g9mr25593526ybk.501.1576613283015;
        Tue, 17 Dec 2019 12:08:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576613283; cv=none;
        d=google.com; s=arc-20160816;
        b=gE8qywPirrOVwHcmWMqyb4+Finasaz1FA+6FeDMwUgkPsu8DvBRFbJ61/k2E/mehFa
         ha65JU7fljHC7E+kN0rPlp+QDjNvzl/MMpDsWdt2GX5oCA6yQIfyGNtL5QG5DVsE+A57
         yNb0FY4NS2LpkqWQobfZ1htYMW3j7rfQleuKKu5XlWOENa/hzCGMpyVvHglKU+XXZtrh
         eRGD2Itqt08zvDRmCZSuZC8f0R2NWyqVEj9nsWmqv34cu4rduYqzk1CLuq3OON/XT2sx
         ho7zvrOCSNGvVVRqOYttUXJ+lJBuctRzbcOfqQluC4zPfJLZ8utBdV4TCiH7eeu9HxNY
         NMzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NpwuSBkoqbGtAtK4BaGRNDtLB50M2rLjBALCxeUFmT8=;
        b=SyVnT9AImPugMC9ADJaFiRj2LHIHruuCmo/1Oh8eWwfPoxcJqE8CULffkzUAPbL9nZ
         iVwYMHAthE69/58OlpcMSoAn2uE392sSikLxdWS/Zq+90EJsoRxZ+HyS+9J7kw7uNvBC
         1K8Bp8l+J8+ssmQbrRjO4cgL7El4N7NwntUiy+zlQaKHNNBeUY3ptCmZRPCMuppfIgzG
         G2fORmOxFD12PjsVucBAOnoFHBjwEZAHIDmqa5gOi4eT7P7EG2WoPzTm0r8Hfgk1SXwR
         Q5gqt+utYU730Y+OtqSbdofn8CSxGEmyZArJRcRyBcpqce4vlpHZvhBepUElpRJoYBqS
         ioDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VQ6McAQz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si1176479ywa.4.2019.12.17.12.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Dec 2019 12:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VQ6McAQz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96E372072D;
	Tue, 17 Dec 2019 20:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1576613282;
	bh=+XDsGBa5xJYEJFBjm6dpbRdzTu/u8mLP1v8QOi5sp64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VQ6McAQz8qCF97t3QMlaroeZU26ZdMnk2LLl+BCVSFqDwGbTnS9cP1rgZvGKlh4cN
	 ZmnPaK7gDKxGQA1/6BxrgTB9MKhzz5RPmLqM6uSaPU3vjAzbasJwaQCfRPk9E68kd+
	 4Jv1IbUmA2bkFEzkY58mgDZvVxy+ohLZ/wMHz3h4=
Date: Tue, 17 Dec 2019 21:07:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Fix line over 80 characters
Message-ID: <20191217200759.GA4128770@kroah.com>
References: <20191217200317.GA6493@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191217200317.GA6493@siyah2>

On Tue, Dec 17, 2019 at 11:03:17PM +0300, Gokce Kuler wrote:
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/exfat/exfat_core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index b23fbf3..e4777e8 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -2312,7 +2312,8 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
>  
>  				if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
>  					file_ep = (struct file_dentry_t *)ep;
> -					if ((type == TYPE_ALL) || (type == entry_type)) {
> +					if ((type == TYPE_ALL) ||
> +			         	    (type == entry_type)) {
>  						num_ext_entries = file_ep->num_ext;
>  						is_feasible_entry = true;
>  					} else {
> -- 
> 2.7.4
>


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch was sent privately to Greg.  Kernel development is done in
  public, please always cc: a public mailing list with a patch
  submission.  Using the tool, scripts/get_maintainer.pl on the patch
  will tell you what mailing list to cc.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

