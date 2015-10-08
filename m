X-GM-THRID: 6202613271340515328
X-Received: by 10.182.137.227 with SMTP id ql3mr5087522obb.32.1444298080613;
        Thu, 08 Oct 2015 02:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.232 with SMTP id r8ls369611obl.87.gmail; Thu, 08 Oct
 2015 02:54:40 -0700 (PDT)
X-Received: by 10.182.80.193 with SMTP id t1mr5344327obx.0.1444298080347;
        Thu, 08 Oct 2015 02:54:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si3467054ywg.4.2015.10.08.02.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3F1E51B6C;
	Thu,  8 Oct 2015 09:54:38 +0000 (UTC)
Date: Thu, 8 Oct 2015 10:45:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Do not DMA on
 the stack
Message-ID: <20151008094536.GC6793@kroah.com>
References: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 06, 2015 at 09:07:11PM +0200, Ksenija Stanojevic wrote:
> Fix error "doing DMA on the stack" by using kzalloc for buffer
> allocation.
> Issue found by smatch.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> Changes in v2:
> 	-put all changes in one patch instead patchset.
> 	-replace &data with pdata
> 
>  drivers/staging/rtl8192u/r8192U_core.c | 72 +++++++++++++++++++++++++++++-----
>  1 file changed, 63 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 28b54ba..cf6f90d 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -259,10 +259,16 @@ void write_nic_byte_E(struct net_device *dev, int indx, u8 data)
>  	int status;
>  	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
>  	struct usb_device *udev = priv->udev;
> +	u8 *pdata = kzalloc(sizeof(data), GFP_KERNEL);

Ok, I'm going to be "pendantic" here and say you should never put a 'p'
in front of a variable name just because it is a "pointer".  We know
it's a pointer, the compiler tells us that, so you can't get it wrong.

Try naming it what it is, "usbdata" or "msgdata" or something like that.
Naming is hard, sorry, but please don't try to use 'hungarian notation'
for naming variables, that's just not needed at all in Linux, and is
considered bad-form.

thansk,

greg k-h

