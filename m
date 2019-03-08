X-GM-THRID: 6665828102544818176
X-Received: by 2002:a37:8c07:: with SMTP id o7mr192568qkd.6.1552028510414;
        Thu, 07 Mar 2019 23:01:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3438:: with SMTP id u53ls320865qtb.6.gmail; Thu, 07 Mar
 2019 23:01:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqyR4zNlgNXq3KGSteTUsG2Q/dA27YXUO4QwGGotslwIBlD4Qk79zz4MmWgmV0gSpnaW9Za7
X-Received: by 2002:ac8:33d9:: with SMTP id d25mr9659966qtb.49.1552028509844;
        Thu, 07 Mar 2019 23:01:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028509; cv=none;
        d=google.com; s=arc-20160816;
        b=b8HMY11cPwpdB7a0AZIk+ME/U+RZfnP4jDRTdDOnR9efv4Yi+rKvjFa7vMf2hMuUnT
         g1FbLBvuSX1OFb0H63mr/ZgM+CR0BjRtq4+VmcUjWAmTnDiQ7SOWABiYEmoaebuBPHnI
         o7ciFE4oKVvCNEscyT//6sohJzXFfBq/PqCXUTMiAX8d2SmIuvlcBvMlyFmVhac4TCAl
         xCqtBSjwPu9SiY6YNvPKKFRAJI8DWhZjdq9qOOSLtTMPbXunnn3hi/DwQl0YHsZCTOMo
         9yaf4SMEdIlt8fm1E69nmoQgexRqHWJ3POKINNdcE+NLdNHMMVr/INPsLGit/+XRPmg/
         a4vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3Gh75wQH/HcvGaxtIYYaP6tJw1pllZ13ZxFwlG0qFzo=;
        b=kw1/bz3l1DhFMHz13QJxeZR+c+Cwujx6J7P9vrrJp1fLLZWtiJctAUpDmtKtSbSBqJ
         FlOBr3LfPOumCQjeGZx+Li4hAt3imfM9Xs0RCut8miAYShbyvdQnH8lYJvDESZQx8Kn+
         A4XbcxGW0xujF31lhpatAvZuPAk7Slmk8KNsPx1njWH5AyXs1OjGgzXpp++igrrzLN2V
         9FDaKQ2kX3P037g/ntJeXV+ic7nwl1DOKnMClDZ4Ys1c4+5DK+OJRsSIzth5ToVeHTh/
         nocRotfKEbi3YdKpzYXn9Qi4pxcPpxACeFFich7RC67IACdQaaNcTqzTKGJ9v4qGYS09
         z+iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wSr/jtg6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v2si230185qka.0.2019.03.07.23.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:01:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wSr/jtg6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E37420811;
	Fri,  8 Mar 2019 07:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028508;
	bh=4CVzysml9xLpXlKE86t4WIGZzBkOCV+lVlCDyuYXalQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wSr/jtg6Ng5Ef5O1MvJJHx5CDPPzVPCARVEv+/+9kkbCCNew7BrQic07/KyIQFG/4
	 MSyBksUlZOhtl9PhaQTD9hgd4eJdWi0j0NQ9Nb99ApHSghzkCZPq8Zs6w2OfDTW/Ze
	 dOESHqF2zo+dZSS8BjrSknyPjovh0h8RTplWmLvo=
Date: Fri, 8 Mar 2019 08:01:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1 0/2] SPDX cleanups
Message-ID: <20190308070146.GB17194@kroah.com>
References: <20190308013500.27350-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308013500.27350-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 01:34:58AM +0000, Jules Irenge wrote:
>   This v1 series add SPDX identifier and remove unnecessary license boilerplate text
> 
> Jules Irenge (2):
>   staging: zoran: add SPDX GPL-2.0+ license identifier
>   staging: zoran: remove license boilerplate text
> 

Next time the 0/X email here needs to have the subsystem and driver in
the subject so that I don't loose it.

It should say:
	Subject: [PATCH v1 0/2] staging: zoran: SPDX cleanups

thanks,

greg k-h

