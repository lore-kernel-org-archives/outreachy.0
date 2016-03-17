X-GM-THRID: 6258660898055913472
X-Received: by 10.112.212.68 with SMTP id ni4mr1453990lbc.12.1458229594097;
        Thu, 17 Mar 2016 08:46:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.105.81 with SMTP id e78ls1256495wmc.1.canary; Thu, 17 Mar
 2016 08:46:33 -0700 (PDT)
X-Received: by 10.194.19.195 with SMTP id h3mr1487023wje.1.1458229593392;
        Thu, 17 Mar 2016 08:46:33 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id s141si146040wmd.1.2016.03.17.08.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 08:46:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D71F413C0E2
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:32 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C8CB9DA8F8
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:32 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id BDE5FDA38C; Thu, 17 Mar 2016 16:46:32 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E315ADA390
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:30 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 17 Mar 2016 16:46:30 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 18505 invoked from network); 17 Mar 2016 16:46:30 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 17 Mar 2016 16:46:30 +0100
Date: Thu, 17 Mar 2016 16:46:26 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv7] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160317154626.GA10673@salvia>
References: <20160316220019.GA2952@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160316220019.GA2952@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 16, 2016 at 11:00:22PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables. Not supported icmp codes in nftables
> are: network-unreachable, host-unreachable, protocol-unreachable,
> port-unreachable, fragmentation-needed, source-route-failed,
> network-unknown, host-unknown, network-prohibited, host-prohibited,
> TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
> host-precedence-violation, precedence-cutoff, network-redirect,
> host-redirect, TOS-network-redirect, TOS-host-redirect,
> ttl-zero-during-transit, ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
> 
> Examples:
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j ACCEPT
> nft add rule ip filter INPUT icmp type echo-reply counter accept
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j ACCEPT
> nft add rule ip filter INPUT icmp type destination-unreachable counter accept
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j ACCEPT
> nft add rule ip filter INPUT icmp type != destination-unreachable counter accept

Applied, thanks Laura.

