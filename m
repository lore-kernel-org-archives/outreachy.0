X-GM-THRID: 6261220057224839168
X-Received: by 10.112.141.33 with SMTP id rl1mr1508705lbb.9.1458229602928;
        Thu, 17 Mar 2016 08:46:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.3 with SMTP id y3ls575982wmy.38.gmail; Thu, 17 Mar 2016
 08:46:42 -0700 (PDT)
X-Received: by 10.28.189.130 with SMTP id n124mr1594223wmf.4.1458229602476;
        Thu, 17 Mar 2016 08:46:42 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id s141si146086wmd.1.2016.03.17.08.46.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 08:46:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 1BEA513C0E2
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:42 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 0AD30DA8FA
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:42 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id F29C5DA386; Thu, 17 Mar 2016 16:46:41 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1BE16DA399
	for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 16:46:40 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 17 Mar 2016 16:46:40 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 18830 invoked from network); 17 Mar 2016 16:46:40 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 17 Mar 2016 16:46:40 +0100
Date: Thu, 17 Mar 2016 16:46:38 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libip6t_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160317154638.GB10673@salvia>
References: <20160316221749.GA4613@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160316221749.GA4613@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 16, 2016 at 11:17:52PM +0100, Laura Garcia Liebana wrote:
> Avoid to print the reject with value in the translation when the value
> is the default.
> 
> Before this patch:
> 
> $ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip6 filter FORWARD tcp dport 22 counter reject with icmpv6 type port-unreachable
> 
> After this patch:
> 
> $ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip6 filter FORWARD tcp dport 22 counter reject

Also applied, thanks.

