Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251191C13
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 07:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D24BC433D7;
	Mon, 14 Nov 2022 07:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1668410451;
	bh=fHrinGUzKS/Ct4ZTB+WHQ0B+J+JANG6qd0CbipbkXgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lGTk4VXVRyvq0xQYMXtieI9QHlBDDnY6Gb2zLFxlUiEFUTRGRZZKC53bKoS+ti1D3
	 G1YT7D4naoZcIT2UzIzJ8Gb9uwni4FEKN3ZqoQAwQIGDzbWveMNgkCXPMeAek/0ZN4
	 VFfqceK6XDMk1uqU7MlJNn8IVw/H/2vyph0fsftM=
Date: Mon, 14 Nov 2022 08:20:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev, johan@kernel.org, elder@kernel.org,
	hvaibhav.linux@gmail.com, vireshk@kernel.org,
	pure.logic@nexus-software.ie
Subject: Re: [PATCH v3 1/2] Staging: greybus: Whitespace cleanup
Message-ID: <Y3HsUB/f69IJdFrz@kroah.com>
References: <cover.1668395762.git.hunter.chasens18@ncf.edu>
 <35ee8be5f3737350b5324bfb2b6fd6b74fd02c58.1668395762.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35ee8be5f3737350b5324bfb2b6fd6b74fd02c58.1668395762.git.hunter.chasens18@ncf.edu>

On Sun, Nov 13, 2022 at 10:26:45PM -0500, Hunter Chasens wrote:
> Modifies whitespace to better come into compliance with the kernel's coding style.
> 
> Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>
> ---
>  .../Documentation/firmware/authenticate.c     |  2 +-
>  .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
>  drivers/staging/greybus/arche-platform.c      |  2 +-
>  .../staging/greybus/greybus_authentication.h  |  1 -
>  drivers/staging/greybus/loopback.c            |  3 +-
>  drivers/staging/greybus/tools/loopback_test.c | 16 +--------
>  6 files changed, 21 insertions(+), 37 deletions(-)
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

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
