X-GM-THRID: 6394869682861506560
X-Received: by 10.99.116.18 with SMTP id p18mr6826443pgc.119.1489091398735;
        Thu, 09 Mar 2017 12:29:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls6962578otc.22.gmail; Thu, 09 Mar
 2017 12:29:58 -0800 (PST)
X-Received: by 10.13.254.2 with SMTP id o2mr6269542ywf.50.1489091398255;
        Thu, 09 Mar 2017 12:29:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si1053647pfb.0.2017.03.09.12.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 12:29:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 54A35958;
	Thu,  9 Mar 2017 20:29:57 +0000 (UTC)
Date: Thu, 9 Mar 2017 21:29:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] drivers/staging/vc04_services
Message-ID: <20170309202947.GA20071@kroah.com>
References: <alpine.DEB.2.20.1703072219270.2292@hadrien>
 <20170309164024.GA30703@kroah.com>
 <alpine.DEB.2.20.1703092120390.2306@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703092120390.2306@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 09:22:14PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 9 Mar 2017, Greg KH wrote:
> 
> > On Tue, Mar 07, 2017 at 10:20:21PM +0100, Julia Lawall wrote:
> > > The maintainers of drivers/staging/vc04_services would prefer not to
> > > be CCd on Outreachy patches.  Just send them to the outreachy mailing
> > > list, without using get_maintainers.
> >
> > Really?  that's not good, their code is in staging they are responsible
> > for it, I want them to see the cleanup patches.  And at the least, I
> > want to be cc:ed on them please.
> 
> Don't you get everything sent to the outreachy mailing list?

Yes, I do, but things that are cc:ed to me stand out "more".  It's not
that big of a deal, I can live with it.

> I also regret their point of view.  Some complicated patches have been
> posted on their code, and it would be good to have their feedback, if
> anything seems amiss.

Yes, that's why I would push back please.  Tell them I said so :)

thanks,

greg k-h

