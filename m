X-GM-THRID: 6399925601472348160
X-Received: by 10.28.105.80 with SMTP id e77mr517156wmc.23.1490617627939;
        Mon, 27 Mar 2017 05:27:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.126.2 with SMTP id z2ls525844wmc.10.gmail; Mon, 27 Mar 2017
 05:27:07 -0700 (PDT)
X-Received: by 10.28.128.146 with SMTP id b140mr491438wmd.18.1490617627142;
        Mon, 27 Mar 2017 05:27:07 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id x188si60220wmx.0.2017.03.27.05.27.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id F0541EAA6F
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:27:04 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E1C0DBAC28
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:27:04 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id D6E60DA725; Mon, 27 Mar 2017 14:27:04 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C4B62BAC4A
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:27:02 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 14:27:02 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 12767 invoked from network); 27 Mar 2017 14:27:02 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 14:27:02 +0200
Date: Mon, 27 Mar 2017 14:27:03 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH 0/2] netfilter: Remove unnecessary cast on void pointer
Message-ID: <20170327122703.GA25227@salvia>
References: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 21, 2017 at 05:49:52PM +0530, simran singhal wrote:
> This patch series remove unnecessary cast on void pointer.
> 
> simran singhal (2):
>   netfilter: ipset: Remove unnecessary cast on void pointer
>   netfilter: Remove unnecessary cast on void pointer

Please, merge this two patches in one single patch.

I have to pass up batches to David, and I would like this cleanups are
grouped into the same logical change.

Is there more occurrences of this in the Netfilter tree? Please have a
look at net/ipv4/netfilter/ net/ipv6/netfilter/ and
net/bridge/netfilter, we also have code there.

Thanks.

