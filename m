X-GM-THRID: 6395378707824902144
X-Received: by 10.157.31.42 with SMTP id x39mr4706161otd.111.1489050053342;
        Thu, 09 Mar 2017 01:00:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls2352239ote.15.gmail; Thu, 09 Mar
 2017 01:00:52 -0800 (PST)
X-Received: by 10.157.41.240 with SMTP id g45mr4355596otd.94.1489050052867;
        Thu, 09 Mar 2017 01:00:52 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Wed, 8 Mar 2017 23:34:57 -0800 (PST)
X-Received: by 10.129.5.145 with SMTP id 139mr4686431ywf.96.1489044896908;
        Wed, 08 Mar 2017 23:34:56 -0800 (PST)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id a3si1078399pfb.2.2017.03.08.23.34.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 23:34:56 -0800 (PST)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id E9F622E0;
	Thu,  9 Mar 2017 07:34:54 +0000 (UTC)
Date: Thu, 9 Mar 2017 00:34:49 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Documentation: phy: Fix
 repetition of word 'the'
Message-ID: <20170309003449.4c514c0a@lwn.net>
In-Reply-To: <20170309063409.GA8177@kroah.com>
References: <cover.1489039271.git.karniksayli1995@gmail.com>
	<3559f33444fbae6fda8e11ea00c0dfe3b7dc46b2.1489039271.git.karniksayli1995@gmail.com>
	<20170309063409.GA8177@kroah.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Thu, 9 Mar 2017 07:34:09 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 09, 2017 at 11:46:22AM +0530, sayli karnik wrote:
> > The patch replaces 'the the' with 'the' in the documantation.
> > 
> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> > ---
> >  Documentation/phy.txt | 2 +-  
> 
> I can't take any outreachy application patches outside of
> drivers/staging/ sorry.

I'm always happy to take docs improvements, though, so I've applied these
to the docs tree.  Thanks!

jon

