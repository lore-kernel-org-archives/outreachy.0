X-GM-THRID: 6256826514740871168
X-Received: by 10.66.160.9 with SMTP id xg9mr20684133pab.38.1456919180085;
        Wed, 02 Mar 2016 03:46:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.6 with SMTP id l6ls4598860qge.18.gmail; Wed, 02 Mar
 2016 03:46:19 -0800 (PST)
X-Received: by 10.140.18.239 with SMTP id 102mr2589069qgf.28.1456919179133;
        Wed, 02 Mar 2016 03:46:19 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id r75si3493049pfr.0.2016.03.02.03.46.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 03:46:18 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 7A7BA810D
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 12:46:15 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 6A018DA398
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 12:46:15 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 5F742DA38A; Wed,  2 Mar 2016 12:46:15 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 30F18DA399
	for <outreachy-kernel@googlegroups.com>; Wed,  2 Mar 2016 12:46:13 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 02 Mar 2016 12:46:13 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 22377 invoked from network); 2 Mar 2016 12:46:12 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 2 Mar 2016 12:46:12 +0100
Date: Wed, 2 Mar 2016 12:46:11 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com, fw@strlen.de,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160302114611.GA3008@salvia>
References: <20160301204042.GA15382@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160301204042.GA15382@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 01, 2016 at 09:40:45PM +0100, Laura Garcia Liebana wrote:
> Add translation for random mode to nftables. The nth mode is not
> supported yet.
> 
> Examples:
> 
> $ iptables-translate -A INPUT -m statistic --mode random --probability
> 0.1 -j ACCEPT
> nft add rule ip filter INPUT meta random 0.10000000009 counter accept

Is this translation correct?

I can see in 

static bool
statistic_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
        const struct xt_statistic_info *info = par->matchinfo;
        bool ret = info->flags & XT_STATISTIC_INVERT;
        int nval, oval;

        switch (info->mode) {
        case XT_STATISTIC_MODE_RANDOM:
                if ((prandom_u32() & 0x7FFFFFFF) < info->u.random.probability)

--probability seems to check for "less than" the random value.

I think meta random 0.10000000009 will only match for the exact case.

So I suspect this is:

        meta random lt 0.10000000009

> $ iptables-translate -A INPUT -m statistic --mode random ! --probability
> 0.1 -j ACCEPT
> nft add rule ip filter INPUT meta random != 0.10000000009 counter accept

Then, the opposite has to be:

        meta random gte 0.10000000009


