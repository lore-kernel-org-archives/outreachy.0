X-GM-THRID: 6802850530437627904
X-Received: by 2002:ac8:4548:: with SMTP id z8mr7321795qtn.188.1584016503734;
        Thu, 12 Mar 2020 05:35:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls2149147qtc.6.gmail; Thu, 12 Mar
 2020 05:35:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDXv3OOMCKm3whgq8sQCf5spd8AA3AVhToW6Ckz2mmQUHfk4YdbyD3ZJTWA48zNBfiqLVa
X-Received: by 2002:aed:3fce:: with SMTP id w14mr7468971qth.0.1584016500643;
        Thu, 12 Mar 2020 05:35:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016500; cv=none;
        d=google.com; s=arc-20160816;
        b=zWNybVHaGud104uJXAVXlh0OB9UA342y1Y9ZEAaDIBGSj4dnhDsAfU/hztGvSjZwgW
         imHHO2z3EPxURcv2iNzbg+Sphu2ZewryeJU0wLey0liaToRZVL6ys8gRAlrPbCtrpLE+
         UBOLqW+naXliZaIDmZN9oVqO6ItWKiG/OaLXExHe7i3+cr5IoZ7fvyW5B7s1YeEc4wWF
         /k+bHmOOZj0Hl4UqYLQhGHfOEeqfBIsAtvbJgNwez1T4dx3Fkw9ugV4wvIvqd0g3KzQh
         M4n0pvOQkN/EbBba7z6hx2DP//evXQ0WL1abCG2xXssRK8uGd2cmke7Ktrq0C5n7vwPJ
         7bdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=3DiZkF3SYVatUDkT1eThQgfFuAKVuf3NveComKMC8uw=;
        b=UbIdu6obRLfDt2ZbwAUBOekEqi77AjMnzowXmHxOoopSSenCt2oAieoQ82Vk5fpaPX
         Bw70EN7S70/+dad2nTi8CAw1Zl8ooj7EwIEZR3+DiEivMiM8al45tX7PV6kRntrg98V1
         dRmtxFy5wJiGH7jy+S9Kg4jxshUC1qrWUFLB1rZwEXgR85Mgnd309/MDvPbwd/bqZEKH
         gb35ekbosmfS6wc7wE4cD7AmPorV2fYj5asNUb1T/eOuNfweZQDyEZ0VJceyqaKeqnni
         BSexrCyNztJZGhUnuwb7G4SSwbMXwpsaksiVCmCZCcwMleQ55imxl7cWVY4JiB63LwPr
         rx0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJPomwE1;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d193si248288qke.1.2020.03.12.05.35.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:35:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJPomwE1;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id z5so3212379pfn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3DiZkF3SYVatUDkT1eThQgfFuAKVuf3NveComKMC8uw=;
        b=dJPomwE1wdLu6kfpfHFC149ijQ9WMDvPnX10jDm2GNkxpltcJ4wdi6xrfZ15gaNYkd
         8SBOE1QYRhsVIknOXnlhdH2bPuR/8c23uAlhswEcDoHa9PLMhZ1AaFY9rGYkXPbQ2hVO
         mSrLUSi+7dhDtTPxUwsoF0qdqLAeOSMQsFYvWYs/AG59llf+yvnMNjlbn4v31aF2RPHo
         fg3fKST/4zi/HrKkILXcTO3Cc6YB6GtU7m+55xpsN1dL6qb0vyU9Ec23oOvQuvlWVxvU
         2pR2CT8naqll8jm0sX9gw0EmWcF0i/gzftFPxzbPknHRpRsWY5gK1KnMv9fvIgMmVZOT
         CdDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3DiZkF3SYVatUDkT1eThQgfFuAKVuf3NveComKMC8uw=;
        b=QDIsrbo/0fFtwhirFQKIqYI0j97BbkrssZkDGbyhVPm+WlEYo03tnZ2M9oZwExBomZ
         dPlyQbUAqBZck/Nrrg+3zq8r/wIB1QmTQt9FWVW8LKCoLHQIFVpvkqRrEPwtetqKY6Mh
         IVN+Un+6gS3tf3uNVpqu2NLyjMZWQcZKsSIcuvtp+YghsTnITtQKfKIXvj9EbfQQ1LNV
         5yJlZPWreN2Bwj+RFsOEPFqqaTfOPmkSEnmiNIvkRUH8DSTJBCXWK4qpN8MBLvkq5WOF
         FzFEO+mbwyUJXuPqZa9sIBfZQVPvoYersml05Gp7TGDr7G7iGWtKXFFI8WRDbeiwIW3D
         +Sog==
X-Gm-Message-State: ANhLgQ1FAd4ihuVoyl0bcUDzsG5J8RCyKTgUVsVHVpx4f/8lAMOA72Id
	osHwprq5yspWdZ2Rgw/FQK0=
X-Received: by 2002:a63:f113:: with SMTP id f19mr7929138pgi.168.1584016499891;
        Thu, 12 Mar 2020 05:34:59 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.googlemail.com with ESMTPSA id m68sm9044922pjb.0.2020.03.12.05.34.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 05:34:59 -0700 (PDT)
Message-ID: <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove
 an unneeded variable
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Larry.Finger@lwfinger.net, outreachy-kernel@googlegroups.com
Date: Thu, 12 Mar 2020 18:04:53 +0530
In-Reply-To: <20200312082739.GA54601@kroah.com>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com>
	 <20200312082739.GA54601@kroah.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-12 at 09:27 +0100, Greg KH wrote:
> On Wed, Mar 11, 2020 at 01:04:18PM +0530, Payal Kshirsagar wrote:
> > Remove unneeded temporary local variable, cleanup suggested by
> > coccinelle.
> > 
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> > v2: Change in commit message and changelog.
> > 
> >  drivers/staging/rtl8188eu/hal/usb_halinit.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> > b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> > index 16a57b31a439..aa6354b9ffa2 100644
> > --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> > +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> > @@ -40,8 +40,6 @@ static void _ConfigNormalChipOutEP_8188E(struct
> > adapter *adapt, u8 NumOutPipe)
> >  
> >  static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter
> > *adapt, u8 NumInPipe, u8 NumOutPipe)
> >  {
> > -	bool			result		= false;
> > -
> >  	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
> >  
> >  	/*  Normal chip with one IN and one OUT doesn't have interrupt
> > IN EP. */
> > @@ -52,9 +50,7 @@ static bool
> > HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8
> > NumInPip
> >  
> >  	/*  All config other than above support one Bulk IN and one
> > Interrupt IN. */
> >  
> > -	result = hal_mapping_out_pipe(adapt, NumOutPipe);
> > -
> > -	return result;
> > +	return hal_mapping_out_pipe(adapt, NumOutPipe);
> >  }
> >  
> >  void rtw_hal_chip_configure(struct adapter *adapt)
> > -- 
> > 2.17.1
> > 
> 
> Always test-build your patches so that you do not get grumpy kernel
> maintainers telling you to test-build your patches to prevent the
> build
> from breaking.
> 

HOW TO test-build the patches?


> Are you _SURE_ you used coccinelle for this?  If so, something is
> really
> broken as this patch is totally incorrect :(
> 
> The suggestion might be correct, but the implementation is broken.
> 
> thanks,
> 
> greg k-h

Yes, I used following semantic patch to get this file for cleanup
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;


