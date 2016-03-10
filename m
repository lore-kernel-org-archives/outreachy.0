X-GM-THRID: 6260489275457929216
X-Received: by 10.25.165.148 with SMTP id o142mr730642lfe.8.1457635012968;
        Thu, 10 Mar 2016 10:36:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.73 with SMTP id y70ls211128wme.26.gmail; Thu, 10 Mar
 2016 10:36:52 -0800 (PST)
X-Received: by 10.28.195.131 with SMTP id t125mr726502wmf.5.1457635012426;
        Thu, 10 Mar 2016 10:36:52 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id g81si187408wmi.3.2016.03.10.10.36.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:36:52 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id DB5E3C9ED8
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:36:51 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CC32EDA8FB
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:36:51 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C1871DA385; Thu, 10 Mar 2016 19:36:51 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id ED97ADA384
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:36:49 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 10 Mar 2016 19:36:49 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 2465 invoked from network); 10 Mar 2016 19:36:49 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 10 Mar 2016 19:36:49 +0100
Date: Thu, 10 Mar 2016 19:36:50 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] extensions: libipt_LOG: Avoid to print the default log
 level in the translation
Message-ID: <20160310183650.GA10249@salvia>
References: <20160310181537.GA16699@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160310181537.GA16699@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 10, 2016 at 07:15:40PM +0100, Laura Garcia Liebana wrote:
> Avoid to print the log level in the translation when the level is the
> default value.
> 
> Example:
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 10 -j LOG
> nft add rule ip filter INPUT icmp type != router-solicitation counter log

Applied, thanks Laura.

