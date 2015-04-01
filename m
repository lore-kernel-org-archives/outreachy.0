X-GM-THRID: 10493452353536
X-Received: by 10.182.251.231 with SMTP id zn7mr53153401obc.24.1427902768206;
        Wed, 01 Apr 2015 08:39:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.203 with SMTP id i194ls298304ioi.62.gmail; Wed, 01 Apr
 2015 08:39:28 -0700 (PDT)
X-Received: by 10.43.16.70 with SMTP id px6mr73393748icb.28.1427902767997;
        Wed, 01 Apr 2015 08:39:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si264498pac.0.2015.04.01.08.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2A3E7268;
	Wed,  1 Apr 2015 15:39:26 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:39:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] application reminder
Message-ID: <20150401153924.GA6649@kroah.com>
References: <alpine.DEB.2.10.1503311157590.2520@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503311157590.2520@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 31, 2015 at 12:04:49PM +0200, Julia Lawall wrote:
> If you have submitted an application, please be sure that it is complete
> by April 1 at 7pm UTC.  The most important points that may need updating
> are your preferences among the projects and your proposed work plan.  Your
> application should in general reflect all the work that you have done,
> both in terms of submitting patches (I can find out this information,
> though) and in terms of project-specific activities.
> 
> Patches submitted to the outreachy mailing list until April 1 at 7pm UTC
> will be considered for the application.  Afterwards, if you would like to
> continue contributing to the Linux kernel, please send patches to the
> maintainers of the affected code directly (scripts/get_maintainer.pl).  I
> use the arguents --nokeywords --nogit --nogit-fallback --norolestats to
> get the maintainers of the affected code, but not everyone who has ever
> contributed a patch on it.

I've processed all pending Outreachy patches that I had in my queue.  If
anyone hasn't gotten a response from something they have sent out,
please resend it.

Also, I have asked for a number of fixes for patches, feel free to
resend them.  If you miss the deadline today, that's fine, they will not
count for your application, but I'll appreciate them and add them to the
kernel tree :)

thanks,

greg k-h

