X-GM-THRID: 6950201228210995200
X-Received: by 2002:a17:903:189:b029:e5:d7c3:a264 with SMTP id z9-20020a1709030189b02900e5d7c3a264mr25629361plg.6.1618219825215;
        Mon, 12 Apr 2021 02:30:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls8858940pjb.2.canary-gmail;
 Mon, 12 Apr 2021 02:30:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmVbveqZAKKB7yZlGUqTkq8WwjNMfIgSRVw5ajwUB7y+O7+d80ZxKTMAsxfu+KmCUBfkrS
X-Received: by 2002:a17:90a:650c:: with SMTP id i12mr28930399pjj.204.1618219824220;
        Mon, 12 Apr 2021 02:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618219824; cv=none;
        d=google.com; s=arc-20160816;
        b=JDBd+48wAbMjWgzdoeo+Ep/ywwTgx/GVMLcz8FZUPpER/TIlQfWtE6X6EKSHFlMhhV
         6bLqQYbvw+vvUpC+p9DrnmqWQyjwA0tYN5dEf/aYDjyGV5rdH5jU7pHpQsVl2ryPnp6B
         deAUYmFvs1pzgWwRj6/4HNySfUF5PWMYvteo6b0OHdIn4sX0X1mqJ7iaZDnOYn31asvc
         1V5gOO4tnWOvVGSjo76qRGXyRpCXafi8+iykH9j5IicLVrpfNBXnJhad7j51WP/xUd9T
         mxHUnjjqVdnhgNBilWBpJXFXVgWpbBYYm9SQbBrJj6XBsiMml6m7iVVy+dzeNFNPegU+
         Kr6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vyyVMhLZ7feBe6qZUuGKY3//3kGK5fNGkkKSQXjobIc=;
        b=YC0Hms2jbVDPIonB0M429BIXP5EfEyRnBMZBqiBMxxAt2UU+8eZ7bEG5XvQCWjkZH1
         hYKnlIO/1oXZPpITOlclEkPMhc/RtTN0Us9Ec4ZsHfwWSv3rxjZdmpZV3uHKrViubsao
         psjJn/+i9VnmdhvDW9MikXK+cwYqPiLWGU4F/GgRwpdHso8Ielzlk5TYc/mijXD/9hhB
         stzQdaJUYo1i6a36rKdiKKzOOpBj+wLDhFjzlCX5jaJWHWShTpwbpi2L/fNLiFjkMRcI
         5hzqwQA7d32L4aRdw4wq1jNXAWFQ9j3iILjMJfsiLiMGQk9WD83pUfTutUBss1Cphjcj
         2IGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2gscKo63;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u12si985192pgf.0.2021.04.12.02.30.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2gscKo63;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5138161209;
	Mon, 12 Apr 2021 09:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618219823;
	bh=WaL4dBUXjfT8rASmI+q10qscE5UnuzaJkLoxDaL8/wc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2gscKo63FYh/GFa1acBa/D+w92KL8kgaWb2QhFEBTlrXIOm5vulDcVbkBawwQ7Jk1
	 12zqUGcfb9O1gGGhAcWo8p4k36S4jumhF6BJVIJJ+NwAArGwYoxlGp97GchzvSIU+j
	 1Z6nCyFNEEGyMn5cHBk8Vu1hCDfobzHH6K/ANHBY=
Date: Mon, 12 Apr 2021 11:30:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: tawahpeggy <tawahpeggy98@gmail.com>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: Remove line to fix checkpatch error
Message-ID: <YHQTLYM38lZ5yJgg@kroah.com>
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>

On Sun, Apr 11, 2021 at 04:49:38PM -0400, tawahpeggy wrote:
> remove one empty line.CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>
> 
> ---
>  drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
>  1 file changed, 0 insertion(+), 1 deletion(-)
>  create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
> 
> diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c b/drivers/staging/comedi/comedi_pcmcia.mod.c
> index 0904b8765afs96..3984db1a39c8
> --- /dev/null
> +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
> @@ -0,0 +1,31 @@
> #include <linux/module.h>
> #define INCLUDE_VERMAGIC
> #include <linux/build-salt.h>
> #include <linux/vermagic.h>
> #include <linux/compiler.h>
> 
> BUILD_SALT;
> 
> MODULE_INFO(vermagic, VERMAGIC_STRING);
> MODULE_INFO(name, KBUILD_MODNAME);
> 
> __visible struct module __this_module
> __section(".gnu.linkonce.this_module") = {
> 	.name = KBUILD_MODNAME,
> 	.init = init_module,
> #ifdef CONFIG_MODULE_UNLOAD
> 	.exit = cleanup_module,
> #endif
> 	.arch = MODULE_ARCH_INIT,
> };
> 
> #ifdef CONFIG_RETPOLINE
> MODULE_INFO(retpoline, "Y");
> #endif
> 
> MODULE_INFO(staging, "Y");
> 
> MODULE_INFO(depends, "pcmcia,comedi");
> 
> -  
> MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
> -- 
> 2.17.1

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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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

- Your patch does not match the description at all.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

