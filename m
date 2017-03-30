X-GM-THRID: 6403272126352064512
X-Received: by 10.99.151.10 with SMTP id n10mr1429802pge.9.1490944510569;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.150 with SMTP id z22ls9188512otc.20.gmail; Fri, 31 Mar
 2017 00:15:10 -0700 (PDT)
X-Received: by 10.31.207.130 with SMTP id f124mr1059151vkg.7.1490944509991;
        Fri, 31 Mar 2017 00:15:09 -0700 (PDT)
Received: by 10.55.73.144 with SMTP id w138msqka;
        Thu, 30 Mar 2017 10:23:23 -0700 (PDT)
X-Received: by 10.28.186.139 with SMTP id k133mr283747wmf.2.1490894602811;
        Thu, 30 Mar 2017 10:23:22 -0700 (PDT)
Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id k74si160240wmd.1.2017.03.30.10.23.22
        for <outreachy-kernel@googlegroups.com>;
        Thu, 30 Mar 2017 10:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandre.belloni@free-electrons.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@free-electrons.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=alexandre.belloni@free-electrons.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 22BA2207DD; Thu, 30 Mar 2017 19:23:22 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from localhost (unknown [88.191.26.124])
	by mail.free-electrons.com (Postfix) with ESMTPSA id ECD722055F;
	Thu, 30 Mar 2017 19:23:11 +0200 (CEST)
Date: Thu, 30 Mar 2017 19:23:12 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: jacopo <jacopo@jmondi.org>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: adc: replace comma with a semicolon
Message-ID: <20170330172312.ooxwqmkz6sw7smgd@piout.net>
References: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook>
 <20170330133046.GA7900@w540>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170330133046.GA7900@w540>
User-Agent: NeoMutt/20170113 (1.7.2)

On 30/03/2017 at 15:30:46 +0200, jacopo wrote:
> Hi Arushi,
>    thanks for your patch
> 
> On Thu, Mar 30, 2017 at 06:16:03PM +0530, Arushi Singhal wrote:
> > Replace a comma between expression statements by a semicolon. This
> > changes the semantics of the code, but given the current indentation
> > appears to be what is intended.
> > A simplified version of the Coccinelle semantic patch that performs this
> > transformation is as follows:
> > 
> > // <smpl>
> > @r@
> > expression e1,e2;
> > @@
> > 
> >  e1
> > -,
> > +;
> >  e2;
> > // </smpl>
> > 
> 
> You can simply say that this fixes what appears to be a bug to me.
> I wonder how this does even compile..
> 

It is not a bug, it is perfectly valid and working as expected/intended.
This is just a cosmetic change.

See https://en.wikipedia.org/wiki/Comma_operator if you want to
understand.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com

