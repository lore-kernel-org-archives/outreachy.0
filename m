X-GM-THRID: 1678556266496
X-Received: by 10.70.42.170 with SMTP id p10mr9817735pdl.3.1424985795538;
        Thu, 26 Feb 2015 13:23:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls337397igi.25.gmail; Thu, 26 Feb
 2015 13:23:15 -0800 (PST)
X-Received: by 10.68.194.97 with SMTP id hv1mr9872234pbc.0.1424985795375;
        Thu, 26 Feb 2015 13:23:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si266012pad.1.2015.02.26.13.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0F0CCAF6;
	Thu, 26 Feb 2015 21:23:15 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:23:14 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Ksenija Stanojevic <ksenija.stanojevic@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comment
 from C99 to C89 style.
Message-ID: <20150226212314.GB30897@kroah.com>
References: <1424510461-4094-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424510461-4094-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 10:21:01AM +0100, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@googlegroups.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 447af93..a826d88 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -5,13 +5,13 @@
>   * Portions Copyright (C) 2004, Intel Corporation <jketreno@linux.intel.com>
>   *
>   * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> +i * it under the terms of the GNU General Public License version 2 as

I don't think this line is correct :(

And nice to see you are using vim :)

Please fix up and resend.

thanks,

greg k-h

