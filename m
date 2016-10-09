X-GM-THRID: 6339181082300121088
X-Received: by 10.66.13.134 with SMTP id h6mr6047335pac.119.1476021435115;
        Sun, 09 Oct 2016 06:57:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.67 with SMTP id 64ls2734992iog.53.gmail; Sun, 09 Oct
 2016 06:57:11 -0700 (PDT)
X-Received: by 10.36.73.38 with SMTP id z38mr2071336ita.35.1476021431682;
        Sun, 09 Oct 2016 06:57:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si7270317pab.2.2016.10.09.06.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 06:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B75A125A;
	Sun,  9 Oct 2016 13:57:10 +0000 (UTC)
Date: Sun, 9 Oct 2016 15:57:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] Staging: vt6655: Rename dwIoBase as iobase
Message-ID: <20161009135719.GC30914@kroah.com>
References: <20161008194005.GA18035@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008194005.GA18035@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 01:10:05AM +0530, Varsha Rao wrote:
> In this patch dwIoBase is renamed as iobase.
> This is done to fix the checkpatch issue of CamelCase.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c |  52 +++---
>  drivers/staging/vt6655/baseband.h |   8 +-
>  drivers/staging/vt6655/card.c     |  30 ++--
>  drivers/staging/vt6655/mac.h      | 322 +++++++++++++++++++-------------------
>  drivers/staging/vt6655/rf.c       |  64 ++++----
>  drivers/staging/vt6655/srom.c     |  32 ++--
>  drivers/staging/vt6655/srom.h     |   6 +-
>  7 files changed, 257 insertions(+), 257 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 08dbce7..dae1e87 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1916,7 +1916,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>   *
>   * Parameters:
>   *  In:
> - *      dwIoBase    - I/O base address
> + *      iobase      - I/O base address
>   *      byBBAddr    - address of register in Baseband
>   *  Out:
>   *      pbyData     - data read

Minor nit, this isn't a parameter to the function at all.  Perhaps you
can go through and fix them all up to have the proper data (or just
remove them, they are pretty pointless...)

thanks,

greg k-h

