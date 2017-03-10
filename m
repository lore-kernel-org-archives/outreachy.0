X-GM-THRID: 6395922242043117568
X-Received: by 10.99.175.6 with SMTP id w6mr9707927pge.125.1489181312058;
        Fri, 10 Mar 2017 13:28:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls192839ith.16.canary-gmail; Fri, 10
 Mar 2017 13:28:31 -0800 (PST)
X-Received: by 10.99.53.12 with SMTP id c12mr9047562pga.11.1489181311505;
        Fri, 10 Mar 2017 13:28:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si1964326pfa.4.2017.03.10.13.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 13:28:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D1C69360;
	Fri, 10 Mar 2017 21:28:30 +0000 (UTC)
Date: Fri, 10 Mar 2017 22:28:20 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
Message-ID: <20170310212820.GB11308@kroah.com>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
 <alpine.DEB.2.20.1703101826170.3356@hadrien>
 <CAKG5xWiM9k_5dhtK5_1A=JRatEar3=FuYCpFf9Q81iPszb0A5w@mail.gmail.com>
 <alpine.DEB.2.20.1703101847510.3356@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703101847510.3356@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 06:50:22PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 10 Mar 2017, sayli karnik wrote:
> 
> > On Fri, Mar 10, 2017 at 10:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > >
> > > On Fri, 10 Mar 2017, sayli karnik wrote:
> > >
> > >> ieee80211 has the following function which to me does nothing-
> > >> void ieee80211_tkip_null(void)
> > >> {
> > >>      printk("============>%s()\n", __func__);
> >
> > This printk is commented..forgot the '//' before it
> >
> > >>      return;
> > >> }
> > >>
> > >> Before its function call there is this comment-
> > >> /* These function were added to load crypte module autoly */
> > >>          ieee80211_tkip_null();
> > >>
> > >> Is this function needed in the driver? If not, can I send in a patch
> > >> removing it?
> > >
> > > Are there any maintainers associated with the file?  They would know
> > > better.  I can't see that the function is doing anything useful.
> > >
> > maintainer.pl just displays Greg.
> 
> Greg,
> 
> Is there a general policy about:
> 
> functions that do nothing
> code under comments
> boring logging message
> 
> Can we assume that the code as it is in staging basically works, and while
> these things may have been a useful reminder in the past, now they can go?

Yes.

> Or is that too much to assume for a general rule?

Nope, delete away!

But note, this code does do something, so that functionality needs to be
preserved.

thanks,

greg k-h

