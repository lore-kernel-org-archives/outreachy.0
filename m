X-GM-THRID: 6947865110016688128
X-Received: by 2002:a17:902:c94e:b029:e8:d589:b33 with SMTP id i14-20020a170902c94eb02900e8d5890b33mr13412415pla.53.1617686000785;
        Mon, 05 Apr 2021 22:13:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9106:: with SMTP id k6ls966126pjo.0.canary-gmail;
 Mon, 05 Apr 2021 22:13:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoGAjb343yLcz68pNMEhVgjRJYfqg/E4dcdjJbcKCBpc7HSm6nuvohaevRTrAqUnXEsz7b
X-Received: by 2002:a17:90b:3613:: with SMTP id ml19mr29133pjb.38.1617685999823;
        Mon, 05 Apr 2021 22:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617685999; cv=none;
        d=google.com; s=arc-20160816;
        b=EpgW0apTAUlQZGT38xX5zK/CFlr9pJq6XJigT/lX7bV23J/B4xLrvBa5EJ6uWHqCwW
         11/S8viu52oz/VZ49WM/10J6ln/wSOXPXDPl7NlUMimRUuYmV2ViElPobV1UxPb1pH75
         Pk8IbCtnZ/QMdtYi4TH4r4hVV5qmw++OGzoHvH9ckiM2TmBvT59uEt7cTwGb1NtuWBfA
         CQknx2PePJBnIltn9ElbgE3ENztx49N4pddT56FQjcR3Hj4YwcQGbUCI5iUmhQo/vzZI
         EMImyI/aY3WPA3L2v1LfMN1dZ08B6Kxhr02A2g2b3lcTln8b+lhNurCGlBpMEY61nIuX
         wuIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O3CjngASSClCaoIpQZXmLDjSwfqzENKq1+HbR5pMNXo=;
        b=HO6r3yhrGWWfN3ZlwYCxz/jF2rcnWXFyFeUNriAXHM7MlP3k93MzIYtPv5Gzo9NVxE
         LnGqaNKAaM8ihSVIFQkntBARwDH8FNMf4jAFmbPkuBQy7two0MOBy9w3cCPicG8mX/8W
         V0QHqUt6p27mzicwF7ayryytapwlM6WwLnKvXulOjpeigHyGO50assmdJePc6uNsMEM5
         5bGKKWXDkCuaZdgTkkJf99xoTj7DkmcsFU/viEW/xlMRoA7zjutVdwzZnsOFDQlTt14C
         SHWmjRsrA7/saAYs1z2DrhLkJeEAV9LVb4gqLowvBIY+5YpbNu8xa4KPjnHXR2E5W1al
         Va4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Esu869F2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ft8si167757pjb.0.2021.04.05.22.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 22:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Esu869F2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id F2B2261158;
	Tue,  6 Apr 2021 05:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617685999;
	bh=JgqC+ZBtao1mK7X9TANu+Pk4zpJh5jZWMk/4IQuaiBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Esu869F2eHdnyv/FFm+9GooWdLMdigIqPKVzXTeOmQ9wv/lQH9xlbF2B0M3TS6EFf
	 nJRUs6tS8v/0HLy9cNkN02w94Bky9HvYhk+rLS92D6QdvMNktKhetP0y66fM5eReCq
	 sCbKdHXO3uhm0c24uBmwZBHEhic03s56EH4zYEZw=
Date: Tue, 6 Apr 2021 07:13:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Correct
 indentation in Hal8723BReg.h
Message-ID: <YGvt7PqvfKny2WBk@kroah.com>
References: <20210406022459.29824-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406022459.29824-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 04:24:59AM +0200, Fabio M. De Francesco wrote:
> Correct indentation issues of many #define and comments in Hal8723BReg.h
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 605 ++++++++++----------
>  1 file changed, 300 insertions(+), 305 deletions(-)

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

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

