X-GM-THRID: 6250911351266344960
X-Received: by 10.66.141.36 with SMTP id rl4mr13937877pab.3.1455496410976;
        Sun, 14 Feb 2016 16:33:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.201 with SMTP id n67ls2994477qgd.18.gmail; Sun, 14 Feb
 2016 16:33:30 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr13238355ywd.41.1455496410413;
        Sun, 14 Feb 2016 16:33:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si2598541pac.1.2016.02.14.16.33.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:33:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 204B0BA3;
	Mon, 15 Feb 2016 00:33:30 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:33:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Thaissa Falbo <thaissa.falbo@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCHi v2] staging:media:davinci_vpfe: Fixed
 block comments according to kernel coding style
Message-ID: <20160215003329.GA12116@kroah.com>
References: <1455448327-4572-1-git-send-email-thaissa.falbo@gmail.com>
 <alpine.DEB.2.02.1602141719060.2066@localhost6.localdomain6>
 <alpine.OSX.2.20.1602142120510.6498@thaissas-macbook-pro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.OSX.2.20.1602142120510.6498@thaissas-macbook-pro.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 14, 2016 at 09:21:51PM -0200, Thaissa Falbo wrote:
> 
> 
> On Sun, 14 Feb 2016, Julia Lawall wrote:
> 
> > On Sun, 14 Feb 2016, Thaissa Falbo wrote:
> >
> > > In v2:
> > > Lined up the *s, according to Julia's instructions
> > >
> > > In v1:
> > > Fixed block comments by following the checkpatch warnings
> >
> > The above information is supposed to go below the ---.  Actually, this
> > historical information is not interesting once the patch is applied,
> > because only the most recent version is applied.  And the text that is
> > below the --- and is not part of the patch disappears when the patch is
> > applied.
> >
> > julia
> >
> 
> Should I send a v3 for that? Or should I just try resend the v2 correctly?

Please send a v3.

thanks,

greg k-h

