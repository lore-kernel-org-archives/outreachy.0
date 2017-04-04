X-GM-THRID: 6402862114247016448
X-Received: by 10.46.80.18 with SMTP id e18mr2641505ljb.10.1491328571080;
        Tue, 04 Apr 2017 10:56:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.150 with SMTP id 22ls2316474lfv.0.gmail; Tue, 04 Apr
 2017 10:56:09 -0700 (PDT)
X-Received: by 10.46.83.23 with SMTP id h23mr2630555ljb.24.1491328568988;
        Tue, 04 Apr 2017 10:56:08 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id i76si159733wmh.1.2017.04.04.10.56.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Apr 2017 10:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id E66AFFF2D3
	for <outreachy-kernel@googlegroups.com>; Tue,  4 Apr 2017 19:56:05 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D46529D69A
	for <outreachy-kernel@googlegroups.com>; Tue,  4 Apr 2017 19:56:05 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id BC9EB9D6A5; Tue,  4 Apr 2017 19:56:05 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-102.8 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_BRBL_LASTEXT,RDNS_NONE,SMTPAUTH_US,
	SPF_HELO_FAIL,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 9AD8A9D696
	for <outreachy-kernel@googlegroups.com>; Tue,  4 Apr 2017 19:56:03 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Tue, 04 Apr 2017 19:56:03 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 11501 invoked from network); 4 Apr 2017 19:56:03 +0200
Received: from unknown (HELO us.es) (1984lsi@173.243.43.210)
  by mail.us.es with AES128-SHA encrypted SMTP; 4 Apr 2017 19:56:03 +0200
Date: Tue, 4 Apr 2017 19:56:00 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>,
	outreachy-kernel@googlegroups.com, Julian Anastasov <ja@ssi.bg>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netdev@vger.kernel.org, lvs-devel@vger.kernel.org,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] net: netfilter: Replace explicit NULL comparison with !
 operator
Message-ID: <20170404175600.GB1154@salvia>
References: <20170329101406.GA29770@arushi-HP-Pavilion-Notebook>
 <20170404174111.GB7257@verge.net.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170404174111.GB7257@verge.net.au>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Apr 04, 2017 at 01:41:11PM -0400, Simon Horman wrote:
> On Wed, Mar 29, 2017 at 03:45:01PM +0530, Arushi Singhal wrote:
> > Replace explicit NULL comparison with ! operator to simplify code.
> > 
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  net/netfilter/ipvs/ip_vs_ctl.c         |  8 ++---
> >  net/netfilter/ipvs/ip_vs_proto.c       |  8 ++---
> 
> I count 18 instances of "!= NULL in net/netfilter/ipvs/ip_vs_proto but this
> patch only seems to update 8 of them. I would prefer to fix all or none of
> them.

Agreed.

Please address all instances and resubmit.

