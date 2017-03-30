X-GM-THRID: 6403272126352064512
X-Received: by 10.129.145.65 with SMTP id i62mr1483616ywg.151.1490944510575;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.215 with SMTP id y23ls2084285oty.7.gmail; Fri, 31 Mar
 2017 00:15:10 -0700 (PDT)
X-Received: by 10.31.160.66 with SMTP id j63mr1017044vke.31.1490944509990;
        Fri, 31 Mar 2017 00:15:09 -0700 (PDT)
Received: by 10.55.73.144 with SMTP id w138msqka;
        Thu, 30 Mar 2017 11:06:22 -0700 (PDT)
X-Received: by 10.25.104.21 with SMTP id d21mr120684lfc.31.1490897181920;
        Thu, 30 Mar 2017 11:06:21 -0700 (PDT)
Return-Path: <jacopo@jmondi.org>
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net. [217.70.183.196])
        by gmr-mx.google.com with ESMTPS id i76si940053wmh.1.2017.03.30.11.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:06:21 -0700 (PDT)
Received-SPF: neutral (google.com: 217.70.183.196 is neither permitted nor denied by best guess record for domain of jacopo@jmondi.org) client-ip=217.70.183.196;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.70.183.196 is neither permitted nor denied by best guess record for domain of jacopo@jmondi.org) smtp.mailfrom=jacopo@jmondi.org
Received: from w540 (unknown [IPv6:2001:b07:6442:1ac4:7831:628a:17a8:e655])
	(Authenticated sender: jacopo@jmondi.org)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9BFAC1720C9;
	Thu, 30 Mar 2017 20:06:19 +0200 (CEST)
Date: Thu, 30 Mar 2017 20:06:18 +0200
From: jacopo <jacopo@jmondi.org>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: adc: replace comma with a semicolon
Message-ID: <20170330180618.GD7900@w540>
References: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook>
 <20170330133046.GA7900@w540>
 <20170330172312.ooxwqmkz6sw7smgd@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20170330172312.ooxwqmkz6sw7smgd@piout.net>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi Alexandre
   hope you're doing good!

On Thu, Mar 30, 2017 at 07:23:12PM +0200, Alexandre Belloni wrote:
> On 30/03/2017 at 15:30:46 +0200, jacopo wrote:
> > Hi Arushi,
> >    thanks for your patch
> > 
> > On Thu, Mar 30, 2017 at 06:16:03PM +0530, Arushi Singhal wrote:
> > > Replace a comma between expression statements by a semicolon. This
> > > changes the semantics of the code, but given the current indentation
> > > appears to be what is intended.
> > > A simplified version of the Coccinelle semantic patch that performs this
> > > transformation is as follows:
> > > 
> > > // <smpl>
> > > @r@
> > > expression e1,e2;
> > > @@
> > > 
> > >  e1
> > > -,
> > > +;
> > >  e2;
> > > // </smpl>
> > > 
> > 
> > You can simply say that this fixes what appears to be a bug to me.
> > I wonder how this does even compile..
> > 
> 
> It is not a bug, it is perfectly valid and working as expected/intended.
> This is just a cosmetic change.
> 
> See https://en.wikipedia.org/wiki/Comma_operator if you want to
> understand.
> 

Thanks! That's valid and legal (I should have thought at multiple
expression in for(;;) as an example).
Ignore my comment then (I still don't think it was "intended" as it's
quite unusual to see commas there :)

Thanks
   j

> 
> -- 
> Alexandre Belloni, Free Electrons
> Embedded Linux and Kernel engineering
> http://free-electrons.com

