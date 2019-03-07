X-GM-THRID: 6665628449675149312
X-Received: by 2002:ac8:2d34:: with SMTP id n49mr8455839qta.15.1551986922306;
        Thu, 07 Mar 2019 11:28:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2c1b:: with SMTP id d27ls2988127qta.10.gmail; Thu, 07
 Mar 2019 11:28:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqwnNdMzhEG2v53GUkOn3Fg1PjEYAdWZZB2cln1N/g6AbEluAXqF8MK2LqkqLxtXTsIHJywG
X-Received: by 2002:ac8:30c4:: with SMTP id w4mr8440666qta.30.1551986921798;
        Thu, 07 Mar 2019 11:28:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551986921; cv=none;
        d=google.com; s=arc-20160816;
        b=d+zYKX0c/qnyr1sLzj1eLNVeK2L7iI5YJj0wiE5okoaR4y8qzLb1H1n/4bHRrWDY64
         h/PYYeOtK7UlXaVT2UozK7VLXKJapR318ZCmom0TscB5Tw4f/efdYOZCuYa6p5UAzTTi
         d/84aPqlzsWVXW+FRecAQLrZQtfUiASay0BubLQ64WvWIVlvFu5x1/o0X+Y3RhPMYE0t
         OAzXoSHV+G8X9sUaTowWtQ7v9YVVsvGlOKKaQBZxOocqmryZJ/EGsgsVntQosPaj2q3b
         j83O9MusP+GykXGpJzh5EgHHkhpJYhEmw/mwzUu068DvoH48yriyN+HzibOCMHXjUgW4
         XOqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=K2Eu1+hk8PrbowontNwvaiCiCtW9Wxi2WZdNnbD/QGo=;
        b=Eusx2EQGH4tp9qW4sQR4G/+gQG7T5frhchHWM2+DPmPqMYbziewZIbNE/X4N4Mwdah
         kaC5Zqr4MPRiJ9xca8wvgnijMiKoVcQKr42XGhANcQb1HTEnz3HjYqdmPmgQS9AiTFhj
         jEB+Zwcla0WNmsSJ6yp5CgEAnZjUnXO8xmx6L0H6R4awInNmGmWCN0Kl38M3aYP89wVp
         mTuqKarAk+8ErH1bzdVdowrzm99vXouOI8kaU2vZ8ptdSQ2ZSb9xsLvCxRKkoF1rLemQ
         vZ/xvVbbUdHhrqEmTbRu9lEU8fIAlwTnTdCM5BiVR/eadxOrIdnFyXFxHWyltEgYsS+X
         5qZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jd3Iwh6Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y202si306171qka.2.2019.03.07.11.28.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:28:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jd3Iwh6Y;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 34E3620840;
	Thu,  7 Mar 2019 19:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551986920;
	bh=eRatwbhd989G9L/0mWw+S9QYGlMr9K6/+bKza7CRsq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jd3Iwh6YO16sVcZDuhS8ZWR3+90he2R9f9H64ZdugI73vV71ujSn/5umKpREfwQ9r
	 0MNso9rMjhn3+YwOfUnY4+qFtIAY+zzhNeHVPDf2bwPki3nE5ot16YBf7zrEArwKSg
	 INV12xOa1DwX8poCK4AKO2cpL3U7rfZXXGwnpavk=
Date: Thu, 7 Mar 2019 20:28:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Remove an unused function
Message-ID: <20190307192838.GA8259@kroah.com>
References: <20190307124236.20430-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190307124236.20430-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 06:42:36AM -0600, Madhumitha Prabakaran wrote:
> Remove an unused function to improve codebase.

This should probably say something like:
	Remove an unused function prototype as there is no such function
	in the kernel tree.

That's a better description of what this patch is doing, don't you
agree?

thanks,

greg k-h

