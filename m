X-GM-THRID: 6338591064541102080
X-Received: by 10.107.19.19 with SMTP id b19mr5302145ioj.2.1475844965899;
        Fri, 07 Oct 2016 05:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.217.69 with SMTP id p66ls1339825itg.18.canary; Fri, 07 Oct
 2016 05:56:01 -0700 (PDT)
X-Received: by 10.36.147.4 with SMTP id y4mr10712810itd.6.1475844961524;
        Fri, 07 Oct 2016 05:56:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si2147272pfw.0.2016.10.07.05.56.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 05:56:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9D0871;
	Fri,  7 Oct 2016 12:56:00 +0000 (UTC)
Date: Fri, 7 Oct 2016 14:56:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com
Subject: Re: [Outreachy kernel] vc04_services driver question
Message-ID: <20161007125608.GA1317@kroah.com>
References: <20161007053033.GA13812@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007053033.GA13812@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Oct 06, 2016 at 10:30:34PM -0700, Elizabeth Ferdman wrote:
> I noticed a new driver vc04_services was just added and that the Kconfig
> says it depends on BROKEN. The tutorial specifically says not to work on
> drivers that have that in the depends on line. However, I also noticed
> that patches were being accepted for rtl8712 and greybus and those
> have BROKEN in the Kconfig as well... so is it ok to submit patches for
> that one or even a patchset?

Yes, but make sure your patches don't make the code worse.  You might be
able to build BROKEN code under some conditions.

And the vc04_services code will get that option removed real soon, I
have a patchset in my queue to fix up the obvious build issues.  Feel
free to get them out of the driverdevel mailing list archives and apply
them locally if you wish to start working on that code.

thanks,

greg k-h

