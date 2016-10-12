X-GM-THRID: 6340186644258226176
X-Received: by 10.107.155.198 with SMTP id d189mr338220ioe.63.1476278196365;
        Wed, 12 Oct 2016 06:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.39 with SMTP id 39ls1314678ioh.39.gmail; Wed, 12 Oct
 2016 06:16:31 -0700 (PDT)
X-Received: by 10.66.88.100 with SMTP id bf4mr217565pab.120.1476278191512;
        Wed, 12 Oct 2016 06:16:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si1211597pff.1.2016.10.12.06.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B400D1BB;
	Wed, 12 Oct 2016 13:16:30 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:16:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Patch v3] Staging: vt6655: Replace dwIoBase by iobase
Message-ID: <20161012131639.GA2678@kroah.com>
References: <CAAFX7JRFjLpbHA00qxOEonn1dEQBMg2WQNg=Aj_B2xJgZ+X=uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAFX7JRFjLpbHA00qxOEonn1dEQBMg2WQNg=Aj_B2xJgZ+X=uw@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 06:27:29PM +0530, Varsha Rao wrote:
> In this patch dwIoBase is renamed as iobase. This is done to fix the
> checkpatch issue of the CamelCase.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  Changes in v3:
>  -Edited commit message.
> 
>  drivers/staging/vt6655/
> baseband.c |  52 +++---
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

This patch is still line-wrapped and can not be applied :(

How are you sending this?  Previously you said you used mutt, and used
vim to import the patch.  If so, that's fine, but vim will not
line-wrap things unless you tell it to.

How exactly are you doing this?
Why not just use 'git send-email' directly?

thanks,

greg k-h

