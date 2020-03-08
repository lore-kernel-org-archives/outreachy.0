X-GM-THRID: 6801564551927037952
X-Received: by 2002:a05:620a:681:: with SMTP id f1mr9936440qkh.148.1583650045203;
        Sat, 07 Mar 2020 22:47:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:15d8:: with SMTP id o24ls2573089qkm.10.gmail; Sat,
 07 Mar 2020 22:47:24 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsXNn8/rV7xExjvwTa3QgTCGtaYDGsqkaqpCjeypVO64Irtl5IFFpovDdy9PCqyWwco19OC
X-Received: by 2002:a37:ac03:: with SMTP id e3mr10169783qkm.173.1583650044022;
        Sat, 07 Mar 2020 22:47:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583650044; cv=none;
        d=google.com; s=arc-20160816;
        b=o/OH6lEIxQu+jxpwFBfK/QdCW0uSlpIwbFnVhTrdnJy97W+D1yx5Z/QLkpmpTddzSd
         wwYcvTecYmCyb0q4x7G9PV6ymIepfrXuF8892fPPoGdYzu3a2ZbEeObnB2MWqYimjKEx
         7cJAVMgZ2v55jVA60poL5pg79KsRsPNWMb+UZvKnWO0gh8FW8LHM8B8/zmzR2cDEj7Qo
         /piQ99NGCp3SqnW1gBnJM5VlsTl3gurGA/DOqcZCIycZWzhosS+H5S635dRZ5GAihFMz
         ztK1fgly2wyRwpWCvgs1QZeoiqyxT4aEs/V7gf5yrGFU/Hl1av4JnkXBTMWAhE/VAKBT
         smTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/WpH7BOnTTKPuLOHb6N8BwW8e+/7E1Q0LVNxQ7No6y4=;
        b=JNB9NuLl54TxpLGVhxNNrsvr22dthGXSjZjvHieaVEsXjsGYmLpRC8tiWn3NfgH5dI
         7R/y6Jta9Q0CB2N8LS4deR3NvcRpQ7f185XKvf0vTm9MVPcUF+HF+XXXZpYaENTBjwpO
         wJJbYcdCK4KngBfy/Y+o3r8ez5MYqQzJxHhg3FoiTKydBms2XcU+RYDAwHm3+jBm05T6
         K0EQEgSkEY7h2pp/4U5Sg5gPwyYTPc66Vp6f1V7DD4EnJi+3Ap0mfenM+SVr0bg0SCjE
         C/rlJjgn0PjKrF31vUeRI2e+7RYi29/vdS9sHTrW043Ox4NwQH0Ya9v1wRIT8XsATz1f
         kuOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VtSc/ok+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si402220qko.3.2020.03.07.22.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 22:47:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VtSc/ok+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 370662072A;
	Sun,  8 Mar 2020 06:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583650042;
	bh=soSYWbNI78SEUQPhVaISR4IQ14o7pWPrzhJ/MzdLigQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VtSc/ok+iKRZC2mNuuMEfrvt2gSevdiZlqigx6U1pMwWe7iYTHFmplrPR3HCUUSu9
	 utCwIV2DGIVEONDaXHTpuiY92r+iIbxkJDr70qc1qlG047gwtik+fGajtwsfNDtHT2
	 yu+G4YQYuoeKscHRf5rsZEz5vOeRMPmT03Ln7veA=
Date: Sun, 8 Mar 2020 07:47:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Fix line over 80 characters
Message-ID: <20200308064718.GA3983392@kroah.com>
References: <20200307202409.GA10517@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200307202409.GA10517@siyah2>

On Sat, Mar 07, 2020 at 11:24:09PM +0300, Gokce Kuler wrote:
> Fix line over 80 characters
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 1ae5a77..37e424f 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -2161,7 +2161,8 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
>  	mutex_lock(&p_fs->v_mutex);
>  
>  	clu_to_free.dir = fid->start_clu;
> -	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
> +	clu_to_free.size = (s32)((fid->size - 1) >>
> +		       	p_fs->cluster_size_bits) + 1;
>  	clu_to_free.flags = fid->flags;
>  
>  	if (!is_dir_empty(sb, &clu_to_free)) {
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

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

