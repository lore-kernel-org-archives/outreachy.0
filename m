X-GM-THRID: 6339138687062769664
X-Received: by 10.157.26.80 with SMTP id u16mr8375131otu.44.1476087894915;
        Mon, 10 Oct 2016 01:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.25 with SMTP id q25ls9438635otb.2.gmail; Mon, 10 Oct
 2016 01:24:54 -0700 (PDT)
X-Received: by 10.13.230.70 with SMTP id p67mr6103064ywe.5.1476087894587;
        Mon, 10 Oct 2016 01:24:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si8251868pac.1.2016.10.10.01.24.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DCCFC8CC;
	Mon, 10 Oct 2016 08:24:53 +0000 (UTC)
Date: Mon, 10 Oct 2016 10:25:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [Patch v2] Staging: vt6655: Replace dwIoBase by iobase
Message-ID: <20161010082502.GA19439@kroah.com>
References: <CAAFX7JT4acPoN+yGojG6jrfXB5y=73rFhRP46t+pTZv==tj=nQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAFX7JT4acPoN+yGojG6jrfXB5y=73rFhRP46t+pTZv==tj=nQ@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 10, 2016 at 12:45:17AM +0530, Varsha Rao wrote:
> In this patch dwIoBase is renamed as iobase.This is done to fix the
> checkpatch issue of the CamelCase.

Please put a space after a . in a sentance.

> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  Changes in v2:
>  -Limited commit message line to 70 characters.
>  -Proper alignment of different comments.
> 
>  drivers/staging/vt6655/baseband.c |  52 +++---
>  drivers/staging/vt6655/baseband.h |   8 +-
>  drivers/staging/vt6655/card.c     |  30 ++--
>  drivers/staging/vt6655/mac.h      | 322 +++++++++++++++++++-------------------
>  drivers/staging/vt6655/rf.c       |  64 ++++----
>  drivers/staging/vt6655/srom.c     |  32 ++--
>  drivers/staging/vt6655/srom.h     |   6 +-
>  7 files changed, 257 insertions(+), 257 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c
> b/drivers/staging/vt6655/baseband.c
> index ba051ff..1ab91f9 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1914,7 +1914,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
> u32 frame_length,

Your patch is line-wrapped and can not be applied :(

How did that happen?  Are you using 'git send-email' or something else?

thanks,

greg k-h

