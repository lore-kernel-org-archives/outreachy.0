X-GM-THRID: 6256826514740871168
X-Received: by 10.28.225.8 with SMTP id y8mr538766wmg.7.1456922790753;
        Wed, 02 Mar 2016 04:46:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.202 with SMTP id c193ls856103lfe.79.gmail; Wed, 02 Mar
 2016 04:46:30 -0800 (PST)
X-Received: by 10.25.90.85 with SMTP id o82mr2194651lfb.10.1456922790141;
        Wed, 02 Mar 2016 04:46:30 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 71si62139wmp.0.2016.03.02.04.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 04:46:30 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id A30D080FE
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:46:29 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 91883DA395
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:46:29 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 8F195DA8FB; Wed,  2 Mar 2016 13:46:29 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 59435DA39E
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 13:46:27 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 02 Mar 2016 13:46:27 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 5719 invoked from network); 2 Mar 2016 13:46:27 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 2 Mar 2016 13:46:27 +0100
Date: Wed, 2 Mar 2016 13:46:26 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Florian Westphal <fw@strlen.de>
Cc: Laura Garcia Liebana <nevola@gmail.com>,
	netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160302124626.GA5243@salvia>
References: <20160301204042.GA15382@sonyv>
 <20160302114611.GA3008@salvia>
 <20160302121033.GA4348@breakpoint.cc>
 <20160302123339.GA4930@salvia>
 <20160302123738.GB4348@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160302123738.GB4348@breakpoint.cc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 02, 2016 at 01:37:38PM +0100, Florian Westphal wrote:
> Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> 
> [ nft meta random ]
> 
> > I'm fine with the probability scaling, but I think we should keep this
> > consistent with other selectors, so I would use lt and gte instead
> > here.
> > 
> > We can potentially use ranges here too and other available operations
> > such as prefixes (although this one I don't know use case for this).
> 
> Ok, so just to clarify.  You want me to submit v2 of nft meta random
> patch set that turns:
> 
> meta random value
> into
> meta random lt value
> 
> ... and ...
> 
> meta random ne value
> into
> meta random ge value
> 
> Is that correct?

I think so, so this becomes consistent with other selectors that we
have. Does this sound reasonable to you?

