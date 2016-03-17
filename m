X-GM-THRID: 6261219545555402752
X-Received: by 10.112.212.68 with SMTP id ni4mr1454232lbc.12.1458229616412;
        Thu, 17 Mar 2016 08:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.74 with SMTP id l71ls382294lfi.59.gmail; Thu, 17 Mar
 2016 08:46:55 -0700 (PDT)
X-Received: by 10.112.13.40 with SMTP id e8mr1452171lbc.24.1458229615873;
        Thu, 17 Mar 2016 08:46:55 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c140si1415242wmh.1.2016.03.17.08.46.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 08:46:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 7BEDD13C0E3
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:55 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 6E32FDA390
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:55 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 63B18DA38C; Thu, 17 Mar 2016 16:46:55 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 12D2DDA398
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:53 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 17 Mar 2016 16:46:53 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 19301 invoked from network); 17 Mar 2016 16:46:52 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 17 Mar 2016 16:46:52 +0100
Date: Thu, 17 Mar 2016 16:46:48 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libipt_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160317154648.GC10673@salvia>
References: <20160316222358.GA5106@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160316222358.GA5106@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 16, 2016 at 11:24:00PM +0100, Laura Garcia Liebana wrote:
> Avoid to print the reject with value in the translation when the value is the default.
> 
> Before this patch:
> 
> $ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip filter FORWARD tcp dport 22 counter reject with icmp type port-unreachable
> 
> After this patch:
> 
> $ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip filter FORWARD tcp dport 22 counter reject

Applied this too, thanks.

