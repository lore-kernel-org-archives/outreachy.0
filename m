X-GM-THRID: 6256826514740871168
X-Received: by 10.112.209.6 with SMTP id mi6mr3099231lbc.15.1456934222895;
        Wed, 02 Mar 2016 07:57:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.204 with SMTP id r195ls730009lfd.97.gmail; Wed, 02 Mar
 2016 07:57:02 -0800 (PST)
X-Received: by 10.112.173.6 with SMTP id bg6mr3211660lbc.0.1456934222164;
        Wed, 02 Mar 2016 07:57:02 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id z75si39951wmz.2.2016.03.02.07.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 07:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id A9740ED06D
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:57:01 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 9B194DA8FA
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:57:01 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 8E586DA383; Wed,  2 Mar 2016 16:57:01 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 8720EDA392
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:56:59 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 02 Mar 2016 16:56:59 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 1019 invoked from network); 2 Mar 2016 16:56:59 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 2 Mar 2016 16:56:59 +0100
Date: Wed, 2 Mar 2016 16:56:57 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Florian Westphal <fw@strlen.de>
Cc: Jan Engelhardt <jengelh@inai.de>,
	Laura Garcia Liebana <nevola@gmail.com>,
	netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160302155657.GA6299@salvia>
References: <20160301204042.GA15382@sonyv>
 <20160302114611.GA3008@salvia>
 <20160302121033.GA4348@breakpoint.cc>
 <alpine.LSU.2.20.1603021409540.15745@nerf40.vanv.qr>
 <20160302145016.GF4348@breakpoint.cc>
 <20160302151724.GB5844@salvia>
 <20160302152946.GH4348@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160302152946.GH4348@breakpoint.cc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 02, 2016 at 04:29:46PM +0100, Florian Westphal wrote:
> Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> > In all this thread you talk all the time on probability semantics,
> > however the selector name is 'random'.
> > 
> > Why don't you rename this to 'meta probability' instead?
> > 
> > No changes in the semantics then, just use:
> > 
> >         meta probability 0.1
> > 
> > and when expressing the opposite:
> > 
> >         meta probability 0.9
> 
> I have no preferences one way or another, i'd
> be fine with using probability for this.
> 
> In future you might want to allow something like
> 
> nft add rule filter input meta mark set meta random

Right.

> or
> nft add rule filter input queue num meta random

Yes, this reminds me we have to fix nft_queue so it also accepts a
sreg as input. It's not very flexible and we cannot use maps with it.

> Perhaps we should use probability for now and later
> alias is to random for these cases?

+1 to using meta probability for this.

