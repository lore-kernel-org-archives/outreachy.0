X-GM-THRID: 2063631122432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfa74777ed570cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.23.226 with SMTP id v62mr9752156yhv.25.1424986055881;
        Thu, 26 Feb 2015 13:27:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.193 with SMTP id o62ls306703ioi.94.gmail; Thu, 26 Feb
 2015 13:27:35 -0800 (PST)
X-Received: by 10.67.29.231 with SMTP id jz7mr10150908pad.9.1424986055727;
        Thu, 26 Feb 2015 13:27:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si279366pac.0.2015.02.26.13.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:27:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 77E80AF6;
	Thu, 26 Feb 2015 21:27:35 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:27:35 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comments
 from C99 to C89 style
Message-ID: <20150226212735.GB10249@kroah.com>
References: <1424548970-28835-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424548970-28835-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:02:50PM +0100, Ksenija Stanojevic wrote:
> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    | 120 ++++++++++-----------
>  1 file changed, 60 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index acaa723..f6272c0 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -5,20 +5,20 @@
>  
>  static void TsSetupTimeOut(unsigned long data)
>  {
> -	// Not implement yet
> -	// This is used for WMMSA and ACM , that would send ADDTSReq frame.
> +	/* Not implement yet */
> +	/* This is used for WMMSA and ACM , that would send ADDTSReq frame. */

As Arnd pointed out, this isn't the correct multi-line comment format,
sorry.

thanks,

greg k-h

