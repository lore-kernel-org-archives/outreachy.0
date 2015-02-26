X-GM-THRID: 2102830039040
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,411056084fa6f56
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.53.71 with SMTP id vp7mr10172685icb.12.1424986072287;
        Thu, 26 Feb 2015 13:27:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls132185obc.82.gmail; Thu, 26 Feb
 2015 13:27:52 -0800 (PST)
X-Received: by 10.182.96.131 with SMTP id ds3mr9281618obb.35.1424986072140;
        Thu, 26 Feb 2015 13:27:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si267463pad.1.2015.02.26.13.27.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D3996AF6;
	Thu, 26 Feb 2015 21:27:51 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:27:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace C99
 comments with C89
Message-ID: <20150226212751.GC10249@kroah.com>
References: <1424549422-28933-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424549422-28933-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:10:22PM +0100, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 252 +++++++++++-----------
>  1 file changed, 126 insertions(+), 126 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index d401dbf..c4676af 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -22,7 +22,7 @@
>  
>  
>  #include <linux/compiler.h>
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */

Just delete this line.


