X-GM-THRID: 6402792697450463232
X-Received: by 10.46.74.2 with SMTP id x2mr4274596lja.2.1491579092183;
        Fri, 07 Apr 2017 08:31:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.6 with SMTP id d6ls273009wmd.25.canary-gmail; Fri, 07
 Apr 2017 08:31:31 -0700 (PDT)
X-Received: by 10.28.4.151 with SMTP id 145mr1009782wme.8.1491579090899;
        Fri, 07 Apr 2017 08:31:30 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 82si359056wmg.3.2017.04.07.08.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 08:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id DD4B41324C7
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:31:27 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CF224DA862
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:31:27 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C47DCDA7F7; Fri,  7 Apr 2017 17:31:27 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B6D3BDA877
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:31:25 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 17:31:25 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 11160 invoked from network); 7 Apr 2017 17:31:25 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 17:31:25 +0200
Date: Fri, 7 Apr 2017 17:31:22 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilter: Use list_{next/prev}_entry instead of
 list_entry
Message-ID: <20170407153122.GC1466@salvia>
References: <20170329054540.GA15593@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329054540.GA15593@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 29, 2017 at 11:15:40AM +0530, simran singhal wrote:
> This patch replace list_entry with list_prev_entry as it makes the
> code more clear to read.

Also applied, thanks.

