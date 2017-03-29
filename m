X-GM-THRID: 6402886167316922368
X-Received: by 10.99.133.200 with SMTP id u191mr111070pgd.93.1490792242071;
        Wed, 29 Mar 2017 05:57:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls18418676otd.8.gmail; Wed, 29 Mar
 2017 05:57:21 -0700 (PDT)
X-Received: by 10.200.45.138 with SMTP id p10mr90852qta.17.1490792241684;
        Wed, 29 Mar 2017 05:57:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s67si1028894pfs.4.2017.03.29.05.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [81.92.22.186])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E944DB90;
	Wed, 29 Mar 2017 12:57:20 +0000 (UTC)
Date: Wed, 29 Mar 2017 14:57:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] accepted patches
Message-ID: <20170329125707.GA5403@kroah.com>
References: <alpine.DEB.2.20.1703291345300.2989@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703291345300.2989@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 29, 2017 at 01:48:24PM +0200, Julia Lawall wrote:
> Hello,
> 
> If you look for your patches on the web interface to Greg's tree, remember
> to select that you want the staging-testing branch.  If you look at the
> master branch, you may see very few or none of your patches.
> 
> In your application, please indcate where your patches can be found, if
> they were accepted by someone other than Greg.  This could be URLs for the
> IIO and Documentation trees, if those are the small tasks you have worked
> on.

To follow up on this, all staging patches (that were not for iio
drivers) have been processed by me, so if I have missed anything, please
resend it as my queue is empty.

thanks,

greg k-h

