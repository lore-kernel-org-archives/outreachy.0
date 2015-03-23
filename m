X-GM-THRID: 9315895214080
X-Received: by 10.42.95.135 with SMTP id f7mr22383481icn.30.1427152902836;
        Mon, 23 Mar 2015 16:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.131.199 with SMTP id oo7ls1388255obb.46.gmail; Mon, 23 Mar
 2015 16:21:42 -0700 (PDT)
X-Received: by 10.182.236.67 with SMTP id us3mr2019643obc.47.1427152902651;
        Mon, 23 Mar 2015 16:21:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t6si291411pbs.0.2015.03.23.16.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 37BD9A79;
	Mon, 23 Mar 2015 23:21:40 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:29:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marianne Moeller Knudsen <marianne@masu.dk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Move misplaced open
 brace to previous line
Message-ID: <20150323212935.GA26156@kroah.com>
References: <20150320182043.GA2677@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150320182043.GA2677@debianvm>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 20, 2015 at 07:20:43PM +0100, Marianne Moeller Knudsen wrote:
> Move open brace { to same line as statement. Issue found by checkpatch.
> 
> Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c |    3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 33add64..0392020 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -118,8 +118,7 @@ void setChipClock(unsigned int frequency)
>  			return;
>  #endif
>  
> -    if (frequency != 0)
> -    {
> +    if (frequency != 0) {
>          /*
>           * Set up PLL, a structure to hold the value to be set in clocks.
>           */

This doesn't apply to my tree, and neither did any of the other patches
you sent me for this driver :(

Please sync up on the proper git tree and resend _ALL_ of your patches,
in a patch series, so that I have a chance to be able to apply them.

thanks,

greg k-h

