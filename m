X-GM-THRID: 6402533781831417856
X-Received: by 10.28.193.10 with SMTP id r10mr881583wmf.7.1490714774774;
        Tue, 28 Mar 2017 08:26:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.196.194 with SMTP id u185ls1407676lff.30.gmail; Tue, 28 Mar
 2017 08:26:13 -0700 (PDT)
X-Received: by 10.25.56.22 with SMTP id f22mr3821551lfa.13.1490714773478;
        Tue, 28 Mar 2017 08:26:13 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id x188si425153wmx.0.2017.03.28.08.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 08:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 02D5C52438
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 17:26:10 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D6891B7FF3
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 17:26:10 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C7CADB7FEE; Tue, 28 Mar 2017 17:26:10 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 69ACCBAAD3
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 17:26:07 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Tue, 28 Mar 2017 17:26:07 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 1776 invoked from network); 28 Mar 2017 17:26:07 +0200
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 28 Mar 2017 17:26:07 +0200
Date: Tue, 28 Mar 2017 17:26:07 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: netfilter: Remove complexity
Message-ID: <20170328152607.GA1735@salvia>
References: <20170328130032.GA5009@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328130032.GA5009@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 28, 2017 at 06:30:56PM +0530, Arushi Singhal wrote:
> To remove complexity of code the function is added in nfnetlink.h
> to make code more clear and readable.

Patch looks good, you can also use this new function from other
_fill_info() functions in the netfilter code, eg.

        nfnl_cthelper_fill_info()

Take the time to make a careful look at the netfilter tree to see if
we can have a good bunch of new clients of this function in one go.
Most likely many of the nfnetlink_*.c files can use this.

BTW, you can also indicate in your patch description that this is
opencoded in a way that makes it error prone for future netfilter
netlink subsystems.

Please search for a better patch title, this one is too generic. I
understand selecting a good patch title is something that exercise.

I'd suggest this:

        netfilter: add nfnl_msg_type() helper function

Never give up, revamp and resubmit, thanks!

