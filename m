X-GM-THRID: 6331277743473295360
X-Received: by 10.13.213.22 with SMTP id x22mr12123733ywd.52.1474148182930;
        Sat, 17 Sep 2016 14:36:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.112 with SMTP id 103ls2949982oti.31.gmail; Sat, 17 Sep
 2016 14:36:22 -0700 (PDT)
X-Received: by 10.200.52.4 with SMTP id u4mr2060930qtb.44.1474148182624;
        Sat, 17 Sep 2016 14:36:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si4143579pab.1.2016.09.17.14.36.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E4747904;
	Sat, 17 Sep 2016 21:36:20 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:36:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: Return NULL instead
 of 0.
Message-ID: <20160917213623.GB31410@kroah.com>
References: <20160917071702.GA16260@sandhya>
 <20160917212443.GC2854@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917212443.GC2854@d830.WORKGROUP>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 02:24:45PM -0700, Alison Schofield wrote:
> On Sat, Sep 17, 2016 at 12:47:02PM +0530, Sandhya Bankar wrote:
> > Return NULL instead of 0, if card with given driverId is not found.
> > 
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> 
> Greg, 
> 
> I was going to say something else here about there being a lot of
> printk's that maybe could be converted, but then I looked at the TODO
> file.
> 
> >>    * The icn, pcbit and act2000 drivers are dead, remove them in 2017
> >>    after another longterm kernel has been released, just in the
> >>    unlikely case someone still has this hardware.
> 
> Do you want work done on a driver that's on it's way out?

If people want to "practice" on such a driver, it is fine with me.

thanks,

greg k-h

