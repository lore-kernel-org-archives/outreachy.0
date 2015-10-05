X-GM-THRID: 6201390323940196352
X-Received: by 10.129.46.204 with SMTP id u195mr23284730ywu.47.1444015222635;
        Sun, 04 Oct 2015 20:20:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.197 with SMTP id ta5ls1032697obc.95.gmail; Sun, 04 Oct
 2015 20:20:22 -0700 (PDT)
X-Received: by 10.182.102.194 with SMTP id fq2mr23873177obb.43.1444015222263;
        Sun, 04 Oct 2015 20:20:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si2240882ywg.4.2015.10.04.20.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 20:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DAE3E1731;
	Mon,  5 Oct 2015 03:20:20 +0000 (UTC)
Date: Mon, 5 Oct 2015 04:20:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com,
	Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: Use
 module_platform_driver
Message-ID: <20151005032019.GF27303@kroah.com>
References: <1443873690-30847-1-git-send-email-shraddha.6596@gmail.com>
 <6498111.CeIiP0D2Ox@wuerfel>
 <20151004194144.GA23542@kroah.com>
 <5205519.8Wzskdy2sz@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5205519.8Wzskdy2sz@wuerfel>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 09:47:16PM +0200, Arnd Bergmann wrote:
> On Sunday 04 October 2015 20:41:44 Greg KH wrote:
> > On Sun, Oct 04, 2015 at 09:30:50PM +0200, Arnd Bergmann wrote:
> > > On Saturday 03 October 2015 17:31:30 Shraddha Barke wrote:
> > > > 
> > > > -/**
> > > > - * dim2_hdm_init - Driver Registration Routine
> > > > - */
> > > > -static int __init dim2_hdm_init(void)
> > > > -{
> > > > -       pr_info("dim2_hdm_init()\n");
> > > > -       return platform_driver_register(&dim2_driver);
> > > > -}
> > > > -
> > > > 
> > > 
> > > Your changelog does not mention that you are removing the pr_info() lines
> > > in the process of the conversion.
> > > 
> > > Removing those lines is a good idea, but that should better be done as
> > > a separate patch upfront, possibly removing other debug statements
> > > from the same driver as well.
> > 
> > No, this is how we converted all of the other drivers to this api a long
> > time ago, no need to break it up into 2 patches.  This is also one of
> > the main reasons to use this api, to keep things "quiet".
> > 
> 
> Ok, fair enough. It's probably worth mentioning that in the changelog though.

I don't think I ever did that when I converted drivers to this api, so I
wouldn't expect a new developer to do something I wasn't willing to do
:)

thanks,

greg k-h

