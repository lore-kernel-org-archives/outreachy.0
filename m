X-GM-THRID: 6256826514740871168
X-Received: by 10.25.170.7 with SMTP id t7mr2618797lfe.2.1456860063225;
        Tue, 01 Mar 2016 11:21:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.73 with SMTP id k70ls710742lfe.22.gmail; Tue, 01 Mar
 2016 11:21:02 -0800 (PST)
X-Received: by 10.112.189.104 with SMTP id gh8mr2547759lbc.12.1456860062297;
        Tue, 01 Mar 2016 11:21:02 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id s141si66718wmd.1.2016.03.01.11.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:21:02 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C6E81E666D
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:21:01 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id AA7CFDA396
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:21:01 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 9E9FEDA394; Tue,  1 Mar 2016 20:21:01 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 5C55EDA380
	for <outreachy-kernel@googlegroups.com>; Tue,  1 Mar 2016 20:20:55 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 01 Mar 2016 20:20:55 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 20417 invoked from network); 1 Mar 2016 20:20:55 +0100
Received: from 77.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.77)
  by mail.us.es with AES128-SHA encrypted SMTP; 1 Mar 2016 20:20:55 +0100
Date: Tue, 1 Mar 2016 20:20:54 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia <nevola@gmail.com>
Cc: Shivani Bhardwaj <shivanib134@gmail.com>,
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	Florian Westphal <fw@strlen.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] extensions: libxt_statistic: Add
 translation to nft
Message-ID: <20160301192054.GA2297@salvia>
References: <20160229212216.GA29706@sonyv>
 <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
 <20160301154935.GA3838@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160301154935.GA3838@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 01, 2016 at 04:49:36PM +0100, Laura Garcia wrote:
> On Tue, Mar 01, 2016 at 03:21:24PM +0530, Shivani Bhardwaj wrote:
> > On Tue, Mar 1, 2016 at 2:52 AM, Laura Garcia Liebana <nevola@gmail.com> wrote:
> > 
> > Hi Laura,
> > 
> > > Add translation for random to nftables.
> > >
> > Here, you are providing translation for module statistic, random is
> > just a mode for matching the rule. Please make sure to use correct
> > module name in the commit message next time.
> > 
> 
> Hi Shivani,
> 
> The translation is only for random due to the mode nth is not implemented in nft yet.
> 
> 
> > > Examples:
> > >
> > > $ iptables-translate -A INPUT -m statistic --mode random --probability
> > > 0.1 -j ACCEPT
> > > nft add rule ip filter INPUT meta random 0.10000000009 counter accept
> > >
> > > $ iptables-translate -A INPUT -m statistic --mode random ! --probability
> > > 0.1 -j ACCEPT
> > > nft add rule ip filter INPUT meta random != 0.10000000009 counter accept
> > >
> > 
> > The match statistic is not yet supported in nftables, so these
> > translations are not going to work. You can track the supported
> > extensions here:
> > http://wiki.nftables.org/wiki-nftables/index.php/Supported_features_compared_to_xtables,
> > you can edit any discrepancies you find on this page.
> > 
> 
> The nf-next branch includes the random feature and it's working
> perfectly for me. Should I have to update something in the wiki?

The nf-next tree is OK for this. The sooner we get a translation, the
better.

Yes please, update the wiki page once this hits the master branch.

Thanks.

