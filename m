X-GM-THRID: 6402914629157126144
X-Received: by 10.46.7.10 with SMTP id 10mr4874ljh.1.1490884607534;
        Thu, 30 Mar 2017 07:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.9 with SMTP id 9ls362117lji.7.gmail; Thu, 30 Mar 2017
 07:36:46 -0700 (PDT)
X-Received: by 10.25.196.68 with SMTP id u65mr8066lff.0.1490884606324;
        Thu, 30 Mar 2017 07:36:46 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id l138si244683wmg.0.2017.03.30.07.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 07:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id CA1ED24606
	for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 16:36:43 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BAB5CDA86B
	for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 16:36:43 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AFEC1DA87D; Thu, 30 Mar 2017 16:36:43 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 549FFDA848
	for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 16:36:41 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Thu, 30 Mar 2017 16:36:41 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 14954 invoked from network); 30 Mar 2017 16:36:40 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 30 Mar 2017 16:36:40 +0200
Date: Thu, 30 Mar 2017 16:36:41 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Simon Horman <horms@verge.net.au>, outreachy-kernel@googlegroups.com,
	Wensong Zhang <wensong@linux-vs.org>, Julian Anastasov <ja@ssi.bg>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] net: netfilter: remove unused variable
Message-ID: <20170330143641.GA999@salvia>
References: <20170329145752.GA2756@arushi-HP-Pavilion-Notebook>
 <20170330125509.GD2980@verge.net.au>
 <CA+XqjF_pbKoYC+UM9ad2wOvBo6gNnEEWnrUjJHfuDcFx3jEEzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF_pbKoYC+UM9ad2wOvBo6gNnEEWnrUjJHfuDcFx3jEEzQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 30, 2017 at 07:38:08PM +0530, Arushi Singhal wrote:
> On Thu, Mar 30, 2017 at 6:25 PM, Simon Horman <horms@verge.net.au> wrote:
> 
> > On Wed, Mar 29, 2017 at 08:27:52PM +0530, Arushi Singhal wrote:
> > > This patch uses the following coccinelle script to remove
> > > a variable that was simply used to store the return
> > > value of a function call before returning it:
> > >
> > > @@
> > > identifier len,f;
> > > @@
> > >
> > > -int len;
> > >  ... when != len
> > >      when strict
> > > -len =
> > > +return
> > >         f(...);
> > > -return len;
> > >
> > > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> >
> > Applied with patch prefix updated to "ipvs:".
> >
> Hi
> Thanks
> How can I see my accepted patches of netfilter.

You can use links from patchwork:

http://patchwork.ozlabs.org/project/netfilter-devel/

