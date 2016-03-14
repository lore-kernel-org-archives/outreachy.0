X-GM-THRID: 6261863495109705728
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.140.154.1 with SMTP id a1mr18877809qha.14.1457970283112;
        Mon, 14 Mar 2016 08:44:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls4048026qgk.69.gmail; Mon, 14 Mar
 2016 08:44:41 -0700 (PDT)
X-Received: by 10.31.11.75 with SMTP id 72mr18653069vkl.2.1457970281349;
        Mon, 14 Mar 2016 08:44:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si2622188pab.2.2016.03.14.08.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 08:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B5C63C19;
	Mon, 14 Mar 2016 15:44:40 +0000 (UTC)
Date: Mon, 14 Mar 2016 08:44:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: tejaswini allikanti <tejaswini.allikanti@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Unable to clone Git Repository
Message-ID: <20160314154440.GA10573@kroah.com>
References: <0f7561c0-b6ef-4179-9f5e-f2ee3d2d53f8@googlegroups.com>
 <alpine.DEB.2.10.1603141210450.2688@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1603141210450.2688@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 14, 2016 at 12:16:58PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 14 Mar 2016, tejaswini allikanti wrote:
> 
> > Heyy
> > I am unable to clone the Greg Kroah-Hartman's staging tree repository.It is
> > showing the error 'unable to connect to git.kernel.org' although i am
> > connected to the internet
> > please look into the matter ASAP
> 
> What command did you use?  I just tried
> 
> git clone git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> 
> and had no problem.  The problem may be on your side.
> 
> Maybe you will have more luck with the following:
> 
> git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging
> 
> I'm not sure that it is up to date, though.  On the web page
> 
> https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging/
> 
> if I click on staging-testing, I get a patch dated March 2 and committed
> March 5, while I have more recent patches from git.kernel.org

googlesource.com seems to be out of sync right now, I'd rely on
git.kernel.org if at all possible.

thanks,

greg k-h

