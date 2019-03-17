X-GM-THRID: 6667995620579475456
X-Received: by 2002:a25:f20c:: with SMTP id i12mr6476285ybe.12.1552819554467;
        Sun, 17 Mar 2019 03:45:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls2956729yba.13.gmail; Sun, 17
 Mar 2019 03:45:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwiCOJZ4aNjXdYEKEIsxf1KUERo5mOPtFgcFQRBYQpdwOzVC2fMj8a34AFwLtPhCtvcVnlp
X-Received: by 2002:a5b:c43:: with SMTP id d3mr6936849ybr.27.1552819553625;
        Sun, 17 Mar 2019 03:45:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819553; cv=none;
        d=google.com; s=arc-20160816;
        b=VWndQ+U4eUd9dkfNIt94xhKW+HD19CTOEQZz87Dc/YAeRTD7QT9ZPLanRBnxTnhQ/4
         HU+se+rEAZZjNaEXy2Fk8s+xR0U9hYiSgYtAak+SQPIRax9GQkzHLZlevIj0qlbsoheR
         k8TsTosgSB4KFSHIPmaS3mQb5ADGJWjUlMYHqRCrV/JKFqOgLiWQQ04xESDQUXb4Xbwa
         fg2a/UCWKCgag+Dwj4ZrWTbJqpOSAjwznR8yAC67o8aqcRg9dmtbKxFNwEPbtOBHUptT
         sZEax5X8Fo7c7E6/ee8l8lZp2JIwcLiGu/CMT3dHSirP2ZHMHpY1cQYfcPE0+ZVy2TEd
         ACpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gbWcmL2qxUiQwLoHVahXqeowc2XuQ7UP9OAD4l/0f1w=;
        b=P02zE0RVZzA+m8H5eUC5x4WRxnqONMub7/tmJ2HDKfmDyAMzKxYmc1sUCIto8Ns2uA
         gS50Nsf3ErXBdXAd2aF2b0gvUEclvunSRbl/rUb3Ir3f0urjVHxmqDTO31hvtNcvemf8
         934RS9l2/4lZovCHmfbo95GfXL58mnTzel3YLsSLo/vH1zZPo9wLWBhGHbTkpv/c+HaD
         lf89rgfyiiQ7+4BB2YPS/3iHalfhcHrCHgwXYYb5gkCwr5SjR0vhCfNrmSqBsn16BgIg
         cpzuPa3tBCtTHIoe1Ox2q3Pcnf/v0wQrxM4EMDkTJb2xRcf9yS4OeU1KV/xq2RjcNt+P
         2DGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DEeDH8yu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t128si327046ywa.4.2019.03.17.03.45.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:45:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DEeDH8yu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 203AF2085A;
	Sun, 17 Mar 2019 10:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819552;
	bh=Bsoj62Kcl3kMkFbSroon6R80h8QmwCY5fu+a8KeWfBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DEeDH8yul+mXExjrrb7BCzFHtIa4tCRz+7HlND4wHx/jiZLbA6TvNA7t717+T0WlB
	 LJvp78iyI/lyjZM5ZpGsGIBKUixtxR2nPleJ/YGu7ST2vMpbB97/rsMsVTbPX6IJb3
	 OaCtBiI+6O3M2uwQVPOg3p5WyAJXpH+yCCBluKLU=
Date: Sun, 17 Mar 2019 11:45:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Branden Bonaby <brandonbonaby94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wlan-ng: line over 80 character limit
Message-ID: <20190317104550.GC16257@kroah.com>
References: <20190313214825.7089-1-brandonbonaby94@gmail.com>
 <20190314201651.28111-1-brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190314201651.28111-1-brandonbonaby94@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 14, 2019 at 04:16:51PM -0400, Branden Bonaby wrote:
> Align macros and function to prevent them from going over
> the 80 character a line limit for readability. There should
> not be tabspace between #define and the name.
> WARNING: line over 80 characters

That is a lot of different things happening in the same patch.  This
should be probably just 2 patches, one for the macro alignment and one
for the function prototype changing.

thanks,

greg k-h

