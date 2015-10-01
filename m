X-GM-THRID: 6200529091432546304
X-Received: by 10.182.120.3 with SMTP id ky3mr7045571obb.6.1443687505255;
        Thu, 01 Oct 2015 01:18:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.165 with SMTP id gv5ls301834obb.4.gmail; Thu, 01 Oct
 2015 01:18:24 -0700 (PDT)
X-Received: by 10.182.50.138 with SMTP id c10mr7259103obo.38.1443687504861;
        Thu, 01 Oct 2015 01:18:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e64si541954ywb.7.2015.10.01.01.18.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:18:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6655312D9;
	Thu,  1 Oct 2015 08:18:23 +0000 (UTC)
Date: Thu, 1 Oct 2015 10:18:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
Message-ID: <20151001081817.GA27354@kroah.com>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
 <20151001055624.GA25101@kroah.com>
 <20151001061400.GA21892@sudip-pc>
 <20151001080016.GA26145@kroah.com>
 <alpine.DEB.2.10.1510011003220.2765@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510011003220.2765@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 01, 2015 at 10:04:38AM +0200, Julia Lawall wrote:
> > Yes, but other files might use those functions and they need to still
> > build if the config option is not enabled.
> 
> Are there some drivers in particular for which one should watch out for
> this issue?

drivers/staging/android/ should be the only stuff that has this issue.
I'd recommend everyone staying away from drivers/staging/android/ unless
you are an Andoid kernel developer, and even those people know to keep
away from it :)

thanks,

greg k-h

