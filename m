X-GM-THRID: 6401417655470784512
X-Received: by 10.25.199.66 with SMTP id x63mr4764860lff.4.1491507330399;
        Thu, 06 Apr 2017 12:35:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.141 with SMTP id 135ls2789812lfa.3.gmail; Thu, 06 Apr
 2017 12:35:28 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr4724510lfg.19.1491507328769;
        Thu, 06 Apr 2017 12:35:28 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w130si123374wmf.0.2017.04.06.12.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 12:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 9537A11E58B
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 21:35:25 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 86C5EDA848
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 21:35:25 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 6FFBCDA873; Thu,  6 Apr 2017 21:35:25 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D7E77DA863
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 21:35:19 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Thu, 06 Apr 2017 21:35:19 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 3879 invoked from network); 6 Apr 2017 21:35:19 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 6 Apr 2017 21:35:19 +0200
Date: Thu, 6 Apr 2017 21:35:16 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] net: netfilter: Remove multiple assignment.
Message-ID: <20170406193516.GA4743@salvia>
References: <20170327223326.GA486@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170327223326.GA486@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Arushi,

On Tue, Mar 28, 2017 at 04:03:27AM +0530, Arushi Singhal wrote:
> This patch removes multiple assignments to follow the kernel coding
> style as also reported by checkpatch.pl.
> Done using coccinelle.
> @@
> identifier i1,i2;
> constant c;
> @@
> - i1=i2=c;
> + i1=c;
> + i2=i1;

I see more multiple assignments like this under:

net/netfilter/
net/ipv4/netfilter/
net/ipv6/netfilter/
net/bridge/netfilter/

So I would prefer whether fix them all or none.

Thanks!

