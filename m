X-GM-THRID: 6401417655470784512
X-Received: by 10.223.160.67 with SMTP id l3mr1386862wrl.11.1490616519501;
        Mon, 27 Mar 2017 05:08:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.99.135 with SMTP id x129ls1381302wmb.9.canary-gmail; Mon,
 27 Mar 2017 05:08:38 -0700 (PDT)
X-Received: by 10.28.137.68 with SMTP id l65mr489378wmd.0.1490616518591;
        Mon, 27 Mar 2017 05:08:38 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id x188si54664wmx.0.2017.03.27.05.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:08:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 5BC50E8E92
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:08:36 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4D282DA879
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:08:36 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 41689DA86C; Mon, 27 Mar 2017 14:08:36 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3960BDA870
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:08:34 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 14:08:34 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 32603 invoked from network); 27 Mar 2017 14:08:34 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 14:08:34 +0200
Date: Mon, 27 Mar 2017 14:08:27 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilter: Remove multiple assignment.
Message-ID: <20170327120827.GA15676@salvia>
References: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Mar 25, 2017 at 06:19:47PM +0530, Arushi Singhal wrote:
> This patch removes multiple assignments.
> Done using coccinelle.
> @@
> identifier i1,i2;
> constant c;
> @@
> - i1=i2=c;
> + i1=c;
> + i2=c;

You have to explain why this is bad.

