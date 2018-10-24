X-GM-THRID: 6615663139748839424
X-Received: by 2002:a37:6901:: with SMTP id e1-v6mr1994844qkc.10.1540386975829;
        Wed, 24 Oct 2018 06:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6f:: with SMTP id z47ls3451319qve.10.gmail; Wed, 24
 Oct 2018 06:16:15 -0700 (PDT)
X-Received: by 2002:a0c:b4a7:: with SMTP id c39mr1826809qve.24.1540386975268;
        Wed, 24 Oct 2018 06:16:15 -0700 (PDT)
Received: by 2002:a37:4d4e:0:0:0:0:0 with SMTP id a75-v6msqkb;
        Wed, 24 Oct 2018 06:15:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c1Iit2Abahgd35SoXh6y5xJd73c8AfMWZd+nGD0uG7Mcv8XCt5OGECOU9IhMotedYxQJag
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr330856wmc.24.1540386907211;
        Wed, 24 Oct 2018 06:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540386907; cv=none;
        d=google.com; s=arc-20160816;
        b=NJqmVa+SByuNqH9Wa9NTphXBIqqoUmSaL+QlJCy5g9W5VmcseyCvNzljx8zJDXoBM1
         hVhC87+8/qLb1S4DHEp7ROWBudpZ/q1eQnVPPXcrVxsBWztRs6g1SzfD4AQ2/xfiCTvu
         LBMQiFfh9gk9jSvosa4iWrppw2hy8dPLfk7o6LsMA0WVhkICn4HDhVWfJFvHvSrBlQdv
         rMyUWc7U+OSwQmtCYfLGVcTOhoK916UZNDOy8gVcpN61XT4nRTNferLB0JmnRnTMJTL7
         Ta+jBtkfQ3gDh/1tDUKL7alJBVB+qa2SMmr0qQaeJzwiWiU5DV6sov05aNgntP5XV/6B
         /uPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=a+QIgr4IBvSLtXAR91my763+CYqPVPzf9GLte9IuJFc=;
        b=n8NicerNdsLd8j26WPFqCy31OibnmJgsD5wTXMk5kx0zHrCAFETLo/75pF+WMMXhOo
         LesE477i9cM+YGmux0wFFc+VDZcCNqog1eMnMJg/lILFMneUTdipU2XtlLYvdhPRbjWA
         4/y8u2c5lEIo2TNFbG0Yjhr9BZ3fFnohx0pbSOaHZ2yUu1u0uescNSAYCoHixQ9eO8Jz
         WG/XsSJLiIFkJE5jd9Mo/Iq/j/t8dcj0XhYFOHzMrHPcOpARQjy4LhxdDmzKEbzszbFc
         ikNK2qjdYwyLbcVSxnrr5cCmnd/H5e5BJvNdTTuIn1Yl0kRUDhFOqroFh0v0JOk8E+2N
         3pLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@armlinux.org.uk header.s=pandora-2014 header.b=KElOZxug;
       spf=pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+outreachy-kernel=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Return-Path: <linux+outreachy-kernel=googlegroups.com@armlinux.org.uk>
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id 204-v6si814878wmw.3.2018.10.24.06.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 06:15:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@armlinux.org.uk header.s=pandora-2014 header.b=KElOZxug;
       spf=pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+outreachy-kernel=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2014; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=a+QIgr4IBvSLtXAR91my763+CYqPVPzf9GLte9IuJFc=; b=KElOZxugK8N+hLpuBGYong1s4
	Nzmezbxd2Wfjyv3Tyl2IHHi7ugI6EnXM0DGJFhZP2DKcH5QFD7gnD290VjZG14MMiFDak/+O2rJ4q
	GIIz5MuWU8QtLdoKEoeRdM5VaPvAjsegRZw+30CivQdC5OqMMwx/TvJxidm4Y8ctCv2y4=;
Received: from n2100.armlinux.org.uk ([2001:4d48:ad52:3201:214:fdff:fe10:4f86]:45869)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1gFIzz-0002Cz-Fm; Wed, 24 Oct 2018 14:14:59 +0100
Received: from linux by n2100.armlinux.org.uk with local (Exim 4.90_1)
	(envelope-from <linux@n2100.armlinux.org.uk>)
	id 1gFIzw-0001ST-B1; Wed, 24 Oct 2018 14:14:56 +0100
Date: Wed, 24 Oct 2018 14:14:54 +0100
From: Russell King - ARM Linux <linux@armlinux.org.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	Kimberly Brown <kimbrownkd@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
	NeilBrown <neil@brown.name>,
	Christian =?iso-8859-1?Q?L=FCtke-Stetzkamp?= <christian@lkamp.de>,
	linux-arm-kernel@lists.infradead.org,
	John Crispin <blogic@openwrt.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: mt7621-dma: Add
 braces around else branches
Message-ID: <20181024131454.GW30658@n2100.armlinux.org.uk>
References: <20181023211142.GA2661@v>
 <20181024045653.GA2864@v>
 <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
 <20181024110745.GV30658@n2100.armlinux.org.uk>
 <alpine.DEB.2.21.1810241404050.2371@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810241404050.2371@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: Russell King - ARM Linux <linux@armlinux.org.uk>

On Wed, Oct 24, 2018 at 02:06:18PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 24 Oct 2018, Russell King - ARM Linux wrote:
> 
> > On Wed, Oct 24, 2018 at 12:45:44PM +0200, Matthias Brugger wrote:
> > > Hi Kiberly,
> > >
> > > Thanks for adding all the emails in CC.
> > > I would encourage you for your next patch to distinguish between CC and TO.
> > > You should send your patch TO important maintainers in the get_maintainers.pl
> > > list (as default, to all of them). If there is someone you really want to look
> > > into the patch, then add him/her in TO as well.
> > >
> > > Put the rest (people and mailing lists) in CC. Why? Some people filter their
> > > mails so that they can concentrate on the mails they got send directly and look
> > > on mails they are in CC with lower priority (maybe not at all, because there are
> > > too much?). So it is important to have the maintainers in the TO list and not in CC.
> >
> > +1
> >
> > I'm glad that there's someone else in the Linux community that agrees
> > with me on this point, and is willing to speak out about it.
> 
> If it's an important point, perhaps it should be mentioned in
> submitting-patches.rst?  There is a mention of the Cc tag, but no
> indication of who to put in CC.

submitting-patches.rst talks about the Cc tag in the commit, not the To
or Cc in the email client.

In any case, there's a lot of personal issues here: most kernel
developers don't care whether they're in the To or Cc header of an
email, but there are some who do use it as Matthias says - which is
actually the long-standing definition of these headers.

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

