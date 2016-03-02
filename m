X-GM-THRID: 6256826514740871168
X-Received: by 10.25.160.207 with SMTP id j198mr1942216lfe.4.1456931849488;
        Wed, 02 Mar 2016 07:17:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.106 with SMTP id m103ls106265lfi.94.gmail; Wed, 02 Mar
 2016 07:17:28 -0800 (PST)
X-Received: by 10.25.153.196 with SMTP id b187mr3170406lfe.3.1456931848583;
        Wed, 02 Mar 2016 07:17:28 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id h73si198155wme.0.2016.03.02.07.17.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 07:17:28 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id E4570E6655
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:17:27 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CF20DDA38A
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:17:27 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C473ADA39E; Wed,  2 Mar 2016 16:17:27 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B7546DA38E
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 16:17:25 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 02 Mar 2016 16:17:25 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 23538 invoked from network); 2 Mar 2016 16:17:25 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 2 Mar 2016 16:17:25 +0100
Date: Wed, 2 Mar 2016 16:17:24 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Florian Westphal <fw@strlen.de>
Cc: Jan Engelhardt <jengelh@inai.de>,
	Laura Garcia Liebana <nevola@gmail.com>,
	netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160302151724.GB5844@salvia>
References: <20160301204042.GA15382@sonyv>
 <20160302114611.GA3008@salvia>
 <20160302121033.GA4348@breakpoint.cc>
 <alpine.LSU.2.20.1603021409540.15745@nerf40.vanv.qr>
 <20160302145016.GF4348@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160302145016.GF4348@breakpoint.cc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 02, 2016 at 03:50:16PM +0100, Florian Westphal wrote:
> Jan Engelhardt <jengelh@inai.de> wrote:
> > On Wednesday 2016-03-02 13:10, Florian Westphal wrote:
> > >>         case XT_STATISTIC_MODE_RANDOM:
> > >>                 if ((prandom_u32() & 0x7FFFFFFF) < info->u.random.probability)
> > >> 
> > >> --probability seems to check for "less than" the random value.
> > >
> > >Yes. [...] 
> > >Other suggestions?
> > 
> > "--probability" is meant to represent saying "with a probability
> > of�p=10%, ...". This does not mandate any particular operator.
> 
> Right, that was my reasoning for making meta random 0.1 behave
> like 'match with a probabiliy of 10%'.
> 
> > Furthermore, it surprises me that iptables even supports
> > !�--probability, because you can just express it as 1-p
> > instead.
> 
> Yes.
> 
> So my suggestion is this:
> 
> for nft v2 of meta random support:
> 
> - keep the 'implicit LE op' behaviour so that
> meta random 0.1 means '10% probability of matching'.
> - change display to hide the LE detail from the user, i.e.
> don't show 'meta random le 0.1' but 'meta random 0.1'.
> [ I agree with Jan, its detail, users can still see this
> with debug output on ].
> 
> Don't change anything else, i.e.
> 
> meta random == 0.1 will match with a probability of 1 in 0xfffffff
> on average.  It does what you asked it to do ;)
> 
> For the translation patch, if ! is given, translate it to the inverse
> as per Jans instruction, e.g.
> 
> --probability ! 0.1 is translated to
> 
> meta random 0.9
> 
> If there are no further comments, I will send a v2 for nft meta random
> side soon.

In all this thread you talk all the time on probability semantics,
however the selector name is 'random'.

Why don't you rename this to 'meta probability' instead?

No changes in the semantics then, just use:

        meta probability 0.1

and when expressing the opposite:

        meta probability 0.9

