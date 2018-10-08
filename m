X-GM-THRID: 6609326471053836288
X-Received: by 2002:a24:1d0b:: with SMTP id 11-v6mr17025981itj.11.1539004044804;
        Mon, 08 Oct 2018 06:07:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2e83:: with SMTP id i125-v6ls28430ita.2.canary-gmail;
 Mon, 08 Oct 2018 06:07:23 -0700 (PDT)
X-Google-Smtp-Source: ACcGV636fTzN4xuLmRZ2yH277uOL2f+Frs1xzAdof+TUn8z8pIyH+UxCc+TpplyCFEEwXjjWlkbU
X-Received: by 2002:a24:484a:: with SMTP id p71-v6mr12782274ita.23.1539004043915;
        Mon, 08 Oct 2018 06:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539004043; cv=none;
        d=google.com; s=arc-20160816;
        b=0cMYSBThzBwUegOEiRsqFVqnw7pHnSB5D0fIh27SGZ1oFyOXxVOFJcbN0Xri1q5R59
         QjtRDCJYVOOX/mfSvA7xXiSooJcEkeVTcjvaKA9qYXkk4mBcpulT90xX4p1URtKtlyi3
         zJAPh1czt/jmqRir1pfER7Yveoumhm9X8YWe6w7ikln9maa+PoeSyxv3OJhnukr5rBS8
         GSYlxbQSmABdZroPMSqTJdlIVmFTyWKiREHvH8buxO96X79XdIOIjckYwz6kOZlS7FVW
         6yeZMHizWrqAS5kuZ0e7ZNyet/3bCWjZKqsUpnoj0bK0WCvc1BXL5PyQDxNssxHOw9at
         b0zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=DzGE/LNOKp8Wk8Sfhx7DUxVHSb5g9RIODzb1QvSdPJ8=;
        b=avcbge0Y+Dp06CWang/tB4YTrDazbO0lCIuBAWjVZjBsmBLqpjBTCpKaZEOuIOd/+S
         vq4PL+fVdYcmjXQS8xr8fDuEgO3jkqZHs4I1ScQotcxwqLgtraarafhuYglijQOZ16ZN
         m4OHBsT8VEw+m6dYorqrC9lp3HNZ/bTucKm+sJ+tcVpXe3VSZbz8K47nugGoscGwQ4aR
         5euTc8HGDfUE+X75AEJ2KCuG1OlD2XM9sosbWJ+PJKj7I0XcupATrh0lHT+Q6zCVPJFV
         4Dryss4QxrTSc6cuVp4aEi0FTOrI8SQb4pk1pNUdP6azRE8ADQ3LbZj1kTQMCNUAkLDG
         efWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=jrsVWIkN;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=E67HFRTU;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id b81-v6si130694itb.1.2018.10.08.06.07.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 06:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=jrsVWIkN;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=E67HFRTU;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 1FE8421D40;
	Mon,  8 Oct 2018 09:07:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 08 Oct 2018 09:07:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=DzGE/LNOKp8Wk8Sfhx7DUxVHSb5
	g9RIODzb1QvSdPJ8=; b=jrsVWIkN7y8RyA8uTPIogE1i83FDvb7vse3q9J32t9D
	pVOsNI+kf0yxQ649PX0r/B6jCxf/2Hw5oyKEGovaJUPtY6+bqZNmbwu7JshH1jxM
	UHwwWUG/mwNHq9Cpwaw9IBnPa0DeOtuFALGLBTBsaTt7ORe/4XvoT0PxnC9UrItE
	iOMcMaJitR8Avsbr9gbnxFUJyBTwjZqdvJ90zt5bNnPA3dxylT1CKJjTC/hqYbEf
	SeMgIE/3s/6s5ktMRRzD5jqYUs54m9sLLnuWiDUuwUcixWiJfUdu26/HH5lb5vV6
	Hgvw2gvuAXJc9xXey8i6OX9lcs00zIgco97pzGQvYAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=DzGE/L
	NOKp8Wk8Sfhx7DUxVHSb5g9RIODzb1QvSdPJ8=; b=E67HFRTUmGEOcvDc00JTcm
	p2YGjswi/G/zqtefxMfCBPdWzH/T9yRszFvHplSIRN7EiwaY8r9lnK/Qvx7cQA6w
	1tZUZifad8m5a/ykjRWMeHFV59HetLF+l2MiZAQ7pLJ0tkXgS8pp+lXtroStMJi7
	I6mLwgix+0EQzOIOGmrNxJf8nc8wXizKF5nrlvjlwEWRkCKoUJTHSQFXKq35Qhh5
	IvQU+Zz7n7udfk1k1nelC73BJ7gB4qXGzHzEcWs8Ls364SiFAWlpdsDPrZAS1g56
	pNNGz4STHmRDYJsyXSNBw8RbX4m/ukGbQc6yfBAXyiFomX7FIZJPhmNKROqcVshw
	==
X-ME-Sender: <xms:ila7W_0GxSyR0jMhY2774ljZHJx8acZv37UewZ9e86dppnCU6pyObQ>
X-ME-Proxy: <xmx:ila7W_6VYzg79rsCZI4285NMafx_QrFdWCFS5hxVPB-TzUukoYrupw>
    <xmx:ila7W9KEy0J6e12XGMTEb74MCvwnzKJOLO9VRV5vCu1dPZDBNi9bAw>
    <xmx:ila7W6a-NI1ON7UJ2cYRoaEXNdivrjFhgFS82C773QGEO8VTn2rETQ>
    <xmx:ila7W3f1j95jzwwMSUxtJ0dBgxDxpHuud6egeqyIfbOjg-DUxZl7gA>
    <xmx:ila7W33GBeZf2hf7iRMHMGv89xG3gn8UTkWT7CViZs3pfn0DOCFzfA>
    <xmx:ila7W9btbo9Rxnn779ezCexKIIkFrxZyfcPmL0I3evp5TTVE5bhkOw>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id AC8FDE47C0;
	Mon,  8 Oct 2018 09:07:21 -0400 (EDT)
Date: Mon, 8 Oct 2018 15:07:19 +0200
From: Greg KH <greg@kroah.com>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: isely@pobox.com, mchehab@kernel.org, helen.koike@collabora.com,
	hverkuil@xs4all.nl, outreachy-kernel@googlegroups.com,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Outreachy kernel] [PATCH vicodec] media: pvrusb2: replace
 `printk` with `pr_*`
Message-ID: <20181008130719.GA20351@kroah.com>
References: <20181008120647.10271-1-dafna3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181008120647.10271-1-dafna3@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 08, 2018 at 03:06:47PM +0300, Dafna Hirschfeld wrote:
> Replace calls to `printk` with the appropriate `pr_*`
> macro.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/usb/pvrusb2/pvrusb2-debug.h    |  2 +-
>  drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 +++---
>  drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 28 +++++++++-----------
>  drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 +--
>  drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 +--
>  5 files changed, 22 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-debug.h b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> index 5cd16292e2fa..1323f949f454 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
> @@ -17,7 +17,7 @@
>  
>  extern int pvrusb2_debug;
>  
> -#define pvr2_trace(msk, fmt, arg...) do {if(msk & pvrusb2_debug) printk(KERN_INFO "pvrusb2: " fmt "\n", ##arg); } while (0)
> +#define pvr2_trace(msk, fmt, arg...) do {if (msk & pvrusb2_debug) pr_info("pvrusb2: " fmt "\n", ##arg); } while (0)

You should not need prefixes for pr_info() calls.

>  
>  /* These are listed in *rough* order of decreasing usefulness and
>     increasing noise level. */
> diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> index a8519da0020b..7702285c1519 100644
> --- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> +++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
> @@ -3293,12 +3293,12 @@ void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
>  	int nr = pvr2_hdw_get_unit_number(hdw);
>  	LOCK_TAKE(hdw->big_lock);
>  	do {
> -		printk(KERN_INFO "pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
> +		pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);

A driver should be using dev_info(), not pr_*.

Also, for the outreachy application process, I can not accept patches
outside of drivers/staging/.

sorry,

greg k-h

