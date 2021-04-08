X-GM-THRID: 6948695492025909248
X-Received: by 2002:ac8:5043:: with SMTP id h3mr6418487qtm.97.1617870997481;
        Thu, 08 Apr 2021 01:36:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls2806399qkm.5.gmail; Thu, 08
 Apr 2021 01:36:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOOI7DI0dFg3joUq3vOOYiTf1zqfjmci6oVD5ZG1SFIQ3ojWP+PSWQoyJUHJs4vSU2JnKf
X-Received: by 2002:a37:396:: with SMTP id 144mr7090505qkd.412.1617870996510;
        Thu, 08 Apr 2021 01:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617870996; cv=none;
        d=google.com; s=arc-20160816;
        b=irQEpZg+tPeT5kVEO2Y10ZGDJR1C0DNfbEpxGHIn0h13tXjD5Wtqpv0a8CziCOcx6A
         TQlwJxufjHudngNzgQ7EllvrqKYC3eud4wwzibmweRcLFP6Bs2WR/4aRUHvyKEGj/iZ/
         xLMzNxYg8pL8bnhH98X0SOjp2jLwj1xu1olaX/J4JDPWbonOefitKGXaXrq5t1GOh4fl
         KADq13vih3XMlfqbg2yPOnS5dWujI/7UQypf7OzJr5hG/xx0VlXuGqg3ZdEGMNLn3BnS
         qtYKpPcBA0bcDNfaJocRgXJWHnrzI8yodJlvgqILRI1GYzbDuOudRYUEbkAbcEVJNLiE
         pzKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yfKN4kvMexDD2UnphvC7pi3FKDKM6mGuA0e53qMucWU=;
        b=n32RHxONQa9Fwzj92r54XEtlcvo3zfOpHaSMraiVLH5S9NH/MKV2ryuVKBjFNd3Wkt
         YRJTtl5PvS4ZeUiHd7albeBwz2YqHCqC3qbzGRiwPr+aPEulMIuox8tNmjt9Bsmv5yvA
         LZGjbWSMXPlg74ZB1k67Eceq5hLbLpTx1xR5DIJM989jprbp1otJ5ioc4KPPwSvWz2O5
         QNc5EpbtLmrSzNQCanpAG1Kb6C29zSMj5ZEIUVviAOIb3Az897Q0cT1zS3rphrmbNQOa
         r0z3nNPNnZwt36IbbOreuiBCJfjYp4i+DMDoQtKEBmp1Zq/85XkvaXfc9SOqECPoTXPo
         Pujw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dwm8AKJ3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b201si1829534qkg.6.2021.04.08.01.36.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dwm8AKJ3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD19A610CC;
	Thu,  8 Apr 2021 08:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617870995;
	bh=PUqvAkqf03KqgMQY3Yt1e9jEPab7tHPz6v3xsENaPKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dwm8AKJ3UC/du4JbTDGv6CEEeEnpwGyIayhV2aylqNeaoDAElkK36XbBzmcBocfUz
	 drAmYtEKMahZIY5byX3UvKkZYjv/njw7nfFwTOmzZWsL5357IiBlOLyeXbxDRDN0Bt
	 Zr7yTFUZ72k8CIJ/EotUEHaQT5oUwtKA6SGPlA6Q=
Date: Thu, 8 Apr 2021 10:36:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove camelcase
 in several files
Message-ID: <YG7AkJjSThRbb/f5@kroah.com>
References: <20210408080714.29481-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210408080714.29481-1-fmdefrancesco@gmail.com>

On Thu, Apr 08, 2021 at 10:07:14AM +0200, Fabio M. De Francesco wrote:
> Remove camelcase in a symbol that is used by several files.

What symbol?

> --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> @@ -203,7 +203,7 @@ struct pwrctrl_priv {
>  	u8 LpsIdleCount;
>  	u8 power_mgnt;
>  	u8 org_power_mgnt;
> -	u8 bFwCurrentInPSMode;
> +	u8 b_fw_current_in_ps_mode;

The "b" here means "byte" so you can drop the "b_" as that means
nothing, we do not use this type of notation in the kernel as the
compiler can check it for us.

thanks,

greg k-h

