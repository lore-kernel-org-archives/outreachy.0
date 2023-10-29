Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AEC81E
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="PqhuNkPw"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4A09C433C8;
	Sun, 29 Oct 2023 12:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698583942;
	bh=8spl7K1/FLdXBAri3W2+pcmycu+sQ0EjkG2iadehAVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PqhuNkPw0q96zP97RiS/2xZSvpWTFEWSTynDNGU+wLwvs5UlOCepojJHTgbZtvW+L
	 47jwj56VFDP3WDqZVJGOyit+cPjrJiO/DAyY7LKCqgNoLSEqIuIYLilITXZiU0EWCZ
	 602he42dLZ9mFWGvSmLN3W8YRmTLoiy8ZWlYTYGQ=
Date: Sun, 29 Oct 2023 13:52:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH]: Remove multiple blank lines
Message-ID: <2023102943-rename-slam-ea49@gregkh>
References: <20231029124900.2674-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029124900.2674-1-dorine.a.tipo@gmail.com>

On Sun, Oct 29, 2023 at 12:49:00PM +0000, Dorine Tipo wrote:
> This patch removes multiple consecutive blank lines from the code. It improves code readability and adheres to coding style guidelines.
> ---
>  drivers/staging/vt6655/rxtx.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
> index a67757c9bb5c..be1e5180d57b 100644
> --- a/drivers/staging/vt6655/rxtx.h
> +++ b/drivers/staging/vt6655/rxtx.h
> @@ -19,7 +19,6 @@
>  #define DEFAULT_MSDU_LIFETIME_RES_64us	8000 /* 64us */
>  #define DEFAULT_MGN_LIFETIME_RES_64us	125  /* 64us */
>  
> -
>  /*---------------------  Export Definitions -------------------------*/
>  
>  /*---------------------  Export Variables  --------------------------*/
> -- 
> 2.25.1
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

- Your patch does not have a Signed-off-by: line.  Please read the
  kernel file, Documentation/process/submitting-patches.rst and resend
  it after adding that line.  Note, the line needs to be in the body of
  the email, before the patch, not at the bottom of the patch or in the
  email signature.

- Your patch was sent privately to Greg.  Kernel development is done in
  public, please always cc: a public mailing list with a patch
  submission.  Using the tool, scripts/get_maintainer.pl on the patch
  will tell you what mailing list to cc.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what is needed in
  order to properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/process/submitting-patches.rst for what a proper
  Subject: line should look like.

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
