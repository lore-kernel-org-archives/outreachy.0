X-GM-THRID: 6333834735065759744
X-Received: by 10.36.29.7 with SMTP id 7mr3252409itj.2.1474804422544;
        Sun, 25 Sep 2016 04:53:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.195 with SMTP id d186ls1821195itc.15.gmail; Sun, 25 Sep
 2016 04:53:38 -0700 (PDT)
X-Received: by 10.107.142.4 with SMTP id q4mr4033416iod.87.1474804418133;
        Sun, 25 Sep 2016 04:53:38 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3442349pab.2.2016.09.25.04.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 04:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id zl8so714492pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 04:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AmOXIWtq0peRiIS6XG4zxpHQLcN+cTbvPIvG+swOzoU=;
        b=A2kzoqM9deoBj2GkDKAWxWcagxxgjSh8XPZUiGwKn0lnxivS5lVurtvgVzl+g/xMlD
         5P0ZJcIBFrxFBfJeiyloeSUlR2EK9PmHwElyNtWnBcw8kDpPcKcGolQvj9oTFC6jyAxU
         o6g7LCHZcX9C7O+Q85VcfmFnsNdrkK/kZkkH9wUv4DXYXMuyNxiw37mxPn4tVX0goZL1
         pTikIw6YSg+Fw62diYsqFxVLl9e3cP4Ysgk5SYrJIGBQXNUNx0dPn9MUkK4qUGSyKrzw
         Tdc5vbV3RBUx8ZkNz9CDQmRQKBvqNDAPXV4aZRx1IPqyd0SRey5/zwy4KFaZu75DiuIy
         q7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AmOXIWtq0peRiIS6XG4zxpHQLcN+cTbvPIvG+swOzoU=;
        b=dD5IjgelQC6pwuxs4pll227seli4Xe/Pa9UM24cmp4oYnMGWkPm8LM3jIHzZcgTmrB
         JG2PVsP3ZS+gdzlp47ErLqXkasyByQLPM3R/sslPRXyNWHqzfLj1gtM5L/u6U58hzgtU
         l8xc+FxW0kqSaQFrIzQbiHI9xBnrnLNzD8mlE3o2mSIpWjjUR+yHCdsWzMb8tkY3hNlo
         RDmUH/maxnwCwWrxwtpeckZp6q+eWAT8XluDTGTZvTVlviryEZqoB6v16AHVmXu6Nftq
         AsuO4810p/iCP3ynFHSPCjn5x8wyYS+h7I7IS3eQTgLinYsz3UecXYODl86EDZ53jo9+
         ntrg==
X-Gm-Message-State: AE9vXwNJnur5Ie1GXASu99XZBYrQCXrKcJtKNoVTd5tSZOYuwYPTYCGg0UjD7260TaPudQ==
X-Received: by 10.66.121.131 with SMTP id lk3mr28716025pab.139.1474804417971;
        Sun, 25 Sep 2016 04:53:37 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id f202sm23635169pfa.12.2016.09.25.04.53.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 04:53:37 -0700 (PDT)
Date: Sun, 25 Sep 2016 17:23:32 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: media: lirc: Remove multiple blank lines
Message-ID: <20160925115330.GA6677@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160924164525.GA12571@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160925100458.GA4872@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160925100458.GA4872@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Sep 25, 2016 at 12:04:59PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 24, 2016 at 10:15:30PM +0530, Namrata A Shettar wrote:
> > Remove multiple blank lines to resolve checkpatch issue.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/media/lirc/lirc_sasem.c | 11 -----------
> >  1 file changed, 11 deletions(-)
> 
> You sent another patch with this same subject: as part of a larger
> series, what makes this one different?

This one I had mistakenly clubbed with [PATCH 6/6] of the previous
series. I have changed the subject line and resent this one as another
patch. 

Thanks,

namrata

> 
> thanks,
> 
> greg k-h

