X-GM-THRID: 2517133950976
X-Received: by 10.70.132.138 with SMTP id ou10mr9940738pdb.2.1424987082729;
        Thu, 26 Feb 2015 13:44:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.172 with SMTP id w41ls325313qge.55.gmail; Thu, 26 Feb
 2015 13:44:42 -0800 (PST)
X-Received: by 10.236.37.72 with SMTP id x48mr9849934yha.33.1424987082487;
        Thu, 26 Feb 2015 13:44:42 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si247739pab.2.2015.02.26.13.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:44:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 35753B1B;
	Thu, 26 Feb 2015 21:44:42 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:44:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/4] staging: rtl8192u: Replace asm
 header files with linux ones.
Message-ID: <20150226214442.GA12357@kroah.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
 <71ee952c978879101ab9ef3d18e5eb5a3d8e9a95.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71ee952c978879101ab9ef3d18e5eb5a3d8e9a95.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 10:12:25PM +0530, Navya Sri Nizamkari wrote:
> As asm header files are included in linux header files, this patch
> uses <linux/string.h> instead of <asm/string.h> and <linux/errno.h>
> instead of <asm/errno.h> to fix checkpatch.pl errors:
> 
> ERROR: Use #include <linux/string.h> instead of <asm/string.h>
> ERROR: Use #include <linux/errno.h> instead of <asm/errno.h>
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index cd31598..bd1555d 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -14,8 +14,8 @@
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
> -#include <asm/string.h>
> -#include <asm/errno.h>
> +#include <linux/string.h>
> +#include <linux/errno.h>
>  
>  #include "ieee80211.h"

Doesn't apply :(

