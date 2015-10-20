X-GM-THRID: 6207874064974872576
X-Received: by 10.182.79.70 with SMTP id h6mr5412755obx.22.1445383744817;
        Tue, 20 Oct 2015 16:29:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.225 with SMTP id q1ls1268438ige.8.canary; Tue, 20 Oct
 2015 16:29:04 -0700 (PDT)
X-Received: by 10.66.102.38 with SMTP id fl6mr5037221pab.48.1445383744404;
        Tue, 20 Oct 2015 16:29:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si710629pab.1.2015.10.20.16.29.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 16:29:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1654A90;
	Tue, 20 Oct 2015 23:29:04 +0000 (UTC)
Date: Tue, 20 Oct 2015 16:29:03 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] patchset question
Message-ID: <20151020232903.GA8110@kroah.com>
References: <20151020232149.GA13649@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151020232149.GA13649@Ubuntu-D830>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 20, 2015 at 04:21:50PM -0700, Alison Schofield wrote:
> 
> Patchset help needed:
> 
> I've changed one file in 5 different ways..all cleanup related. 
> It will be split into 5 patches.
> 
> In one branch I used git add -pi followed by commit to incrementally
> create 5 commits.  Each one dependent on the previous.  This is easy to grab 
> and build as a patchset because they are all on the same branch.
> 
> Is this method  OK?

Yes it is, and in fact, it's the preferred method, nice job.

greg k-h

