X-GM-THRID: 6334708873542238208
X-Received: by 10.129.113.196 with SMTP id m187mr9634687ywc.106.1475130068879;
        Wed, 28 Sep 2016 23:21:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.160.11 with SMTP id o11ls4622928ite.2.canary; Wed, 28 Sep
 2016 23:21:07 -0700 (PDT)
X-Received: by 10.107.139.144 with SMTP id n138mr255870iod.33.1475130067097;
        Wed, 28 Sep 2016 23:21:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id x73si240324pfd.1.2016.09.28.23.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 23:21:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5E85B899;
	Thu, 29 Sep 2016 06:21:06 +0000 (UTC)
Date: Thu, 29 Sep 2016 08:21:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vt6656: Remove unnecessary return values
Message-ID: <20160929062109.GB28764@kroah.com>
References: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160928093606.GA5129@kroah.com>
 <20160928172756.GA4337@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928172756.GA4337@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 28, 2016 at 10:57:58PM +0530, Namrata A Shettar wrote:
> On Wed, Sep 28, 2016 at 11:36:06AM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Sep 27, 2016 at 11:48:47PM +0530, Namrata A Shettar wrote:
> > > Remove unnecessary return values. Change return type of corresponding
> > > functions to 'void' and comments.
> > > 
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  Changes in v2:
> > >  - combine both patches of prior patchset
> > > 
> > >  drivers/staging/vt6656/card.c | 22 ++++++----------------
> > >  drivers/staging/vt6656/card.h |  6 +++---
> > >  2 files changed, 9 insertions(+), 19 deletions(-)
> > 
> > Doesn't apply to my tree at all :(
> 
> Is there a work-around for this? or anything I could have possibly gone
> wrong with?

I don't remember, try rebasing to see what the conflicts are, or perhaps
someone else already sent in this same type of change?  We are averaging
about 20-30 patches added to the staging tree each day right now,
sometimes people end up doing the same work at the same time, sorry.

greg k-h

