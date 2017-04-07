X-GM-THRID: 6402799563919327232
X-Received: by 10.46.88.70 with SMTP id x6mr4089351ljd.22.1491579283703;
        Fri, 07 Apr 2017 08:34:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.201 with SMTP id k192ls3005534lfg.18.gmail; Fri, 07 Apr
 2017 08:34:42 -0700 (PDT)
X-Received: by 10.25.72.71 with SMTP id v68mr5488417lfa.9.1491579282936;
        Fri, 07 Apr 2017 08:34:42 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w130si377486wmf.0.2017.04.07.08.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 08:34:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id BA6421324CB
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:34:39 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id ABFEFDA398
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:34:39 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id A1551DA394; Fri,  7 Apr 2017 17:34:39 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7AC3FDA87D
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:34:37 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 17:34:37 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 16429 invoked from network); 7 Apr 2017 17:34:36 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 17:34:36 +0200
Date: Fri, 7 Apr 2017 17:34:37 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iptables: libiptc: Use
 list_{next/prev}_entry instead of list_entry
Message-ID: <20170407153437.GD1466@salvia>
References: <20170329061219.GA6036@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329061219.GA6036@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 29, 2017 at 11:42:19AM +0530, simran singhal wrote:
> This patch replace list_entry with list_{next/prev}_entry as it makes
> the code more clear to read.

Applied, thanks.

I think you can send a similar patch for libnftnl.

