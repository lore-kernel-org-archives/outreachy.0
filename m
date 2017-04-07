X-GM-THRID: 6402671483300085760
X-Received: by 10.46.69.9 with SMTP id s9mr4203101lja.20.1491579028322;
        Fri, 07 Apr 2017 08:30:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.135 with SMTP id l129ls2865906lfg.23.gmail; Fri, 07 Apr
 2017 08:30:27 -0700 (PDT)
X-Received: by 10.25.67.80 with SMTP id m16mr5365041lfj.27.1491579027312;
        Fri, 07 Apr 2017 08:30:27 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id p14si354198wmi.2.2017.04.07.08.30.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 08:30:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4C0941324C9
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:30:24 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3DF07DA8FF
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:30:24 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 30E13DA912; Fri,  7 Apr 2017 17:30:24 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E8667DA878
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:30:21 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 17:30:21 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 8994 invoked from network); 7 Apr 2017 17:30:21 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 17:30:21 +0200
Date: Fri, 7 Apr 2017 17:30:22 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>,
	Julian Anastasov <ja@ssi.bg>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilter: Use seq_puts()/seq_putc() where possible
Message-ID: <20170407153022.GB1466@salvia>
References: <20170328215517.GA18237@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328215517.GA18237@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 29, 2017 at 03:25:17AM +0530, simran singhal wrote:
> For string without format specifiers, use seq_puts(). For
> seq_printf("\n"), use seq_putc('\n').

Applied, thanks.

