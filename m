X-GM-THRID: 3900162703360
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d48b6c3da0aff89e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.4.134 with SMTP id 6mr9726869yhj.35.1424987278888;
        Thu, 26 Feb 2015 13:47:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.115 with SMTP id 106ls343117qgc.57.gmail; Thu, 26 Feb
 2015 13:47:58 -0800 (PST)
X-Received: by 10.236.20.234 with SMTP id p70mr9922941yhp.46.1424987278608;
        Thu, 26 Feb 2015 13:47:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si285206pdc.0.2015.02.26.13.47.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:47:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 52C25B1B;
	Thu, 26 Feb 2015 21:47:58 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:47:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if
 statements
Message-ID: <20150226214758.GA28945@kroah.com>
References: <1424977815-7967-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424977815-7967-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 08:10:15PM +0100, Ksenija Stanojevic wrote:
> This patch simplifies if conditions that contain bool variable,
> using Coccinelle script:
> @@
> bool x;
> symbol true;
> @@
> - x == true
> + x
> 
> Signed-off-by:Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 02707d8..2efcb20 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -2822,7 +2822,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
>  		}
>  		dm_initialize_txpower_tracking(dev);
>  
> -		if (priv->bDcut == true) {
> +		if (priv->bDcut) {
>  			u32 i, TempCCk;
>  			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
>  			for (i = 0; i < TxBBGainTableLength; i++) {

This patch does not apply to my tree :(

