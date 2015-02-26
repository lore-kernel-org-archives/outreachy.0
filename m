X-GM-THRID: 3070446534656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,16551a2579cedb39
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.154.41 with SMTP id vl9mr160904igb.6.1424987183045;
        Thu, 26 Feb 2015 13:46:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.4 with SMTP id jc4ls1983859igb.23.canary; Thu, 26 Feb
 2015 13:46:22 -0800 (PST)
X-Received: by 10.66.252.138 with SMTP id zs10mr10111275pac.3.1424987182871;
        Thu, 26 Feb 2015 13:46:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si284940pac.0.2015.02.26.13.46.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:46:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 99BE5B32;
	Thu, 26 Feb 2015 21:46:22 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:46:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Add space
Message-ID: <20150226214622.GA17919@kroah.com>
References: <1424724642-9022-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424724642-9022-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 09:50:42PM +0100, Ksenija Stanojevic wrote:
> This patch adds space after struct definition. Issue found by
> checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> index e283f5e..d7c718b 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TS.h
> @@ -14,7 +14,7 @@ typedef enum _TR_SELECT {
>  	RX_DIR = 1,
>  } TR_SELECT, *PTR_SELECT;
>  
> -typedef struct _TS_COMMON_INFO{
> +typedef struct _TS_COMMON_INFO {

Please just get rid of these typedefs instead of cleaning up formatting
of them.

thanks,

greg k-h

