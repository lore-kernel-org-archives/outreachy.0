X-GM-THRID: 6403004360189542400
X-Received: by 10.28.9.203 with SMTP id 194mr30602wmj.21.1491495756057;
        Thu, 06 Apr 2017 09:22:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.15 with SMTP id u15ls2669686wmf.14.gmail; Thu, 06 Apr
 2017 09:22:34 -0700 (PDT)
X-Received: by 10.28.21.1 with SMTP id 1mr1168055wmv.3.1491495754910;
        Thu, 06 Apr 2017 09:22:34 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 82si80475wmg.3.2017.04.06.09.22.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 09:22:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C7B7711ADC6
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:22:31 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B75C4DA870
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:22:31 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AC83ADA865; Thu,  6 Apr 2017 18:22:31 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B603ADA873
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:22:29 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Thu, 06 Apr 2017 18:22:29 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 26553 invoked from network); 6 Apr 2017 18:22:29 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 6 Apr 2017 18:22:29 +0200
Date: Thu, 6 Apr 2017 18:22:14 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] iptables: Remove explicit static variables
 initalization.
Message-ID: <20170406162214.GA5655@salvia>
References: <cover.1490815157.git.rvarsha016@gmail.com>
 <58dc0a89.549c620a.6eb0a.5c33@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58dc0a89.549c620a.6eb0a.5c33@mx.google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 30, 2017 at 12:57:02AM +0530, Varsha Rao wrote:
> Static variables are initialized to zero by default, so remove explicit
> initalization. This patch fixes the checkpatch issue.

Applied.

But I had to add this chunk:

diff --git a/iptables/xtables-restore.c b/iptables/xtables-restore.c
index a551c8c19f7f..6afa0d0ec5b1 100644
--- a/iptables/xtables-restore.c
+++ b/iptables/xtables-restore.c
@@ -24,7 +24,7 @@
 #define DEBUGP(x, args...)
 #endif
 
-static int counters = 0, verbose = 0, noflush = 0;
+static int counters, verbose, noflush;
 
 /* Keeping track of external matches and targets.  */
 static const struct option options[] = {

You have to be more careful. It's good if you just fix all spots in
one single go.

Thanks!

