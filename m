X-GM-THRID: 6949513279876104192
X-Received: by 2002:ab0:6397:: with SMTP id y23mr15744339uao.115.1618123058324;
        Sat, 10 Apr 2021 23:37:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6709:: with SMTP id q9ls1261505uam.2.gmail; Sat, 10 Apr
 2021 23:37:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzes5Av1wrHx6R5a7Qy2n+ZzeNzQFbNdA5ocB9klhCuu6G8p60dNDimummgquY9n9Oseqye
X-Received: by 2002:ab0:41e2:: with SMTP id 89mr16082780uap.10.1618123057457;
        Sat, 10 Apr 2021 23:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618123057; cv=none;
        d=google.com; s=arc-20160816;
        b=SraqCV27RMRbwgRjcoQgKZ4FGFnnYkrUrAtINi6N9o2ROMv2C44H4pzQIiaivmyX9J
         3nxXpHn6hO0TTPQxawH33D0KRmr7DQf2Uz4RIb7mYTHUh4NbJbqBk1h9j0U3Ucuy9/T0
         g2aWtmvgY3XyvI5oHlbekT9kmbteRchxelO6qlWn/ALcogeHbHkwZj+QpzNtReW4vgZW
         BDcyoTMfLUHiejkt58AYut4rwiLLx//wGVIb8ktsWujuag4YwLpMRW7J6ME8OaCEk36r
         k2mdOWGgBngIrcgyS0WbyfSLmn/hLTRTe/SpRyQZ4JECc9CRz/AINP4SfELeu7XduqbV
         rJwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NZ/ZZkETCAUWzNFfx+6hMRgkl3zwL6o5vFH9neIatMs=;
        b=DWRDI0Zy/jtY8qKyz+wysG2zSdMXIwbuOQsRufFjLOyY0fE/o0XTi/A6SJxrX4cj1G
         U7VNy46WoT9L0ie/v9bqLOdYNI0BuSn5SyhzHx/lU0jY9txUCinoeBIn/IoF6G/5XtIH
         AjHAIvq7K6DYJFTPH4Rg5y/XjuyEPMoc7oPPZPIIKKtOpqx8gplrCkZVJE5az/ez0PlX
         EIpo66nWLtvVdwY17i3/6xY59RnGM9/7GymUu4teYxdDC0IxmUTO46OX9xwFZMF0Qopl
         8IR4vM9CtjRsK1o/o3o2VD+4pTfGj3Pg/pK7EvdN/J0GarF4ssBcviQhTFPdAU79Nk8C
         GVBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="mNz6/wzj";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y15si353501vsn.1.2021.04.10.23.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="mNz6/wzj";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF9BF61074;
	Sun, 11 Apr 2021 06:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618123056;
	bh=tOHvDuMAXXJQXqYCynFIajbrhi0Vc0ah+1ALFrZkLwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mNz6/wzjz8nqhPTQ287a+aT47Hdj3k6Q5LTb/gu0/fp3IHA5wrqM2gKgVH1JAIunm
	 pNWeWsQ/dETx8Q8pJ7uAToSBiwd538FRHew8aoW6+cHxfHMjclvsASituD2YLOa3Ts
	 rcEN4L1FOihF8DMxZlgT+2/astx263k3KRzC6p1o=
Date: Sun, 11 Apr 2021 08:37:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8192e: fixed pointer
 error by adding '*'
Message-ID: <YHKZLVJRqgO8ni5e@kroah.com>
References: <YHG8qARLUX2KPWwI@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHG8qARLUX2KPWwI@kali>

On Sat, Apr 10, 2021 at 08:26:40PM +0530, Mitali Borkar wrote:
> Fixed pointer error by adding '*' to the function.

That really does not describe this at all.  I'll go fix this up...

greg k-h

