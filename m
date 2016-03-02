X-GM-THRID: 6256826514740871168
X-Received: by 10.28.128.204 with SMTP id b195mr529238wmd.7.1456922027618;
        Wed, 02 Mar 2016 04:33:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.144 with SMTP id o138ls339295wmd.14.gmail; Wed, 02 Mar
 2016 04:33:47 -0800 (PST)
X-Received: by 10.194.62.69 with SMTP id w5mr3075539wjr.5.1456922027223;
        Wed, 02 Mar 2016 04:33:47 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w10si133144wmw.3.2016.03.02.04.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 04:33:47 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C9FD49D33A
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:33:46 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BA214DA391
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:33:46 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AF3ADDA390; Wed,  2 Mar 2016 13:33:46 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 89FCFDA392
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:33:40 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 02 Mar 2016 13:33:40 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 563 invoked from network); 2 Mar 2016 13:33:40 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 2 Mar 2016 13:33:40 +0100
Date: Wed, 2 Mar 2016 13:33:39 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Florian Westphal <fw@strlen.de>
Cc: Laura Garcia Liebana <nevola@gmail.com>,
	netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160302123339.GA4930@salvia>
References: <20160301204042.GA15382@sonyv>
 <20160302114611.GA3008@salvia>
 <20160302121033.GA4348@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160302121033.GA4348@breakpoint.cc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 02, 2016 at 01:10:33PM +0100, Florian Westphal wrote:
> Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> > I think meta random 0.10000000009 will only match for the exact case.
> 
> No; I thought that 'nft ... meta random 0.5' should on average match half of
> the time so the proposed nft prandom patch set makes LE the default op.
> 
> So meta random 0.1 is in fact 'meta random le 0.1' (and nft will display
> it like this).
> 
> > > $ iptables-translate -A INPUT -m statistic --mode random ! --probability
> > > 0.1 -j ACCEPT
> > > nft add rule ip filter INPUT meta random != 0.10000000009 counter accept
> > 
> > Then, the opposite has to be:
> > 
> >         meta random gte 0.10000000009
> 
> Good point, this is not intuitive.
> 
> Currently if no operator is given and the type is TYPE_PROBABILITY then
> we just use le instead of eq (just like we pick "&" in some cases).
> 
> But if user asks 'meta random ne 0.1' then the match propability is close
> to 100%.
> 
> Do you think its enough to just document that you need to use le/ge etc.
> for this?
>
> Other option would be to rewrite NE to GE if rh value is a probability,
> but I'm not sure if such 'helpful' logic isn't too likely to get in the
> way.
> 
> Yet another option is to just disallow EQ and NE ops and throw an error.
> 
> Other suggestions?

I'm fine with the probability scaling, but I think we should keep this
consistent with other selectors, so I would use lt and gte instead
here.

We can potentially use ranges here too and other available operations
such as prefixes (although this one I don't know use case for this).

Thanks.

