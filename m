X-GM-THRID: 6256826514740871168
X-Received: by 10.25.154.129 with SMTP id c123mr2588561lfe.1.1456858814745;
        Tue, 01 Mar 2016 11:00:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.14 with SMTP id 14ls204481wmk.34.canary; Tue, 01 Mar
 2016 11:00:13 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr80336wmw.5.1456858812993;
        Tue, 01 Mar 2016 11:00:12 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w197si28150wmw.3.2016.03.01.11.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:00:12 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 92DCB6DFCC
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:00:12 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 822E1DA380
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:00:12 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 77615DA383; Tue,  1 Mar 2016 20:00:12 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 2DCD0DA380
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:00:07 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 01 Mar 2016 20:00:07 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 14293 invoked from network); 1 Mar 2016 20:00:06 +0100
Received: from 77.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.77)
  by mail.us.es with AES128-SHA encrypted SMTP; 1 Mar 2016 20:00:06 +0100
Date: Tue, 1 Mar 2016 20:00:05 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia <nevola@gmail.com>
Cc: Shivani Bhardwaj <shivanib134@gmail.com>,
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	Florian Westphal <fw@strlen.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] extensions: libxt_statistic: Add
 translation to nft
Message-ID: <20160301190005.GA1532@salvia>
References: <20160229212216.GA29706@sonyv>
 <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
 <20160301101331.GA2714@salvia>
 <20160301155657.GB3838@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160301155657.GB3838@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 01, 2016 at 04:56:59PM +0100, Laura Garcia wrote:
> On Tue, Mar 01, 2016 at 11:13:31AM +0100, Pablo Neira Ayuso wrote:
> > 
> > I would like to have them merged upstream, no need to wait to fully
> > support every extension, we can document these limitations in the wiki
> > and the commit log.
> > 
> > IIRC, if the .xlate indirection returns 0, then it means no
> > translation is available. We can use that for things that we don't
> > support yet.
> >
> 
> Hi Pablo, should I have to include this in the patch?

Yes please.

Address Shivani's feedback and send a v2. Thanks Laura.

