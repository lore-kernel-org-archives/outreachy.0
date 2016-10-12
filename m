X-GM-THRID: 6339043757720076288
X-Received: by 10.176.86.19 with SMTP id y19mr252620uaa.30.1476278263440;
        Wed, 12 Oct 2016 06:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.208 with SMTP id e16ls3300086otd.6.gmail; Wed, 12 Oct
 2016 06:17:43 -0700 (PDT)
X-Received: by 10.129.46.132 with SMTP id u126mr259461ywu.38.1476278263126;
        Wed, 12 Oct 2016 06:17:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id co10si874106pad.1.2016.10.12.06.17.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4CFBE9C;
	Wed, 12 Oct 2016 13:17:42 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:17:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@aliitletooquiet.net
Subject: Re: [PATCH v3] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161012131751.GA8589@kroah.com>
References: <20161011133545.GA5979@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011133545.GA5979@euri>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 07:05:46PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue by removing the Free Software
> Foundation's mailing address from the sample GPL notice. Because the FSF
> has changed address in the past, and may change again. Linux already
> includes a copy of the GPL.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  Changes in v3:
>  -Removes the complete paragraph related to mailing address.
> 
>  drivers/staging/vt6655/baseband.c    | 5 -----
>  drivers/staging/vt6655/baseband.h    | 5 -----
>  drivers/staging/vt6655/card.c        | 4 ----
>  drivers/staging/vt6655/card.h        | 4 ----
>  drivers/staging/vt6655/channel.c     | 4 ----
>  drivers/staging/vt6655/channel.h     | 4 ----
>  drivers/staging/vt6655/desc.h        | 4 ----
>  drivers/staging/vt6655/device.h      | 4 ----
>  drivers/staging/vt6655/device_cfg.h  | 4 ----
>  drivers/staging/vt6655/device_main.c | 4 ----
>  drivers/staging/vt6655/dpc.c         | 4 ----
>  drivers/staging/vt6655/dpc.h         | 4 ----
>  drivers/staging/vt6655/key.c         | 5 -----
>  drivers/staging/vt6655/key.h         | 5 -----
>  drivers/staging/vt6655/mac.c         | 5 -----
>  drivers/staging/vt6655/mac.h         | 5 -----
>  drivers/staging/vt6655/power.c       | 5 -----
>  drivers/staging/vt6655/power.h       | 4 ----
>  drivers/staging/vt6655/rf.c          | 5 -----
>  drivers/staging/vt6655/rf.h          | 5 -----
>  drivers/staging/vt6655/rxtx.c        | 4 ----
>  drivers/staging/vt6655/rxtx.h        | 4 ----
>  drivers/staging/vt6655/srom.c        | 4 ----
>  drivers/staging/vt6655/srom.h        | 5 -----
>  drivers/staging/vt6655/tmacro.h      | 4 ----
>  drivers/staging/vt6655/upc.h         | 4 ----
>  26 files changed, 114 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c

This patch was not line-wrapped at all, and worked just fine.  Try doing
whatever you did here with your other patch...

thanks,

greg k-h

