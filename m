X-GM-THRID: 6402531164952723456
X-Received: by 10.25.145.17 with SMTP id t17mr5438394lfd.25.1491578844914;
        Fri, 07 Apr 2017 08:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.79 with SMTP id u76ls965049lja.51.gmail; Fri, 07 Apr
 2017 08:27:23 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr4336973ljd.23.1491578843453;
        Fri, 07 Apr 2017 08:27:23 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id d184si285397wmc.0.2017.04.07.08.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 08:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 1A10B1324C3
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:27:19 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 0B9F5DA38B
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:27:19 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id F3793DA388; Fri,  7 Apr 2017 17:27:18 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 18DD8DA4E3
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 17:27:16 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 17:27:16 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 3380 invoked from network); 7 Apr 2017 17:27:15 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 17:27:15 +0200
Date: Fri, 7 Apr 2017 17:27:12 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	Stephen Hemminger <stephen@networkplumber.org>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>,
	bridge@lists.linux-foundation.org
Subject: Re: [PATCH v2] net: Remove unnecessary cast on void pointer
Message-ID: <20170407152712.GA1466@salvia>
References: <20170328190516.GA19531@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328190516.GA19531@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 29, 2017 at 12:35:16AM +0530, simran singhal wrote:
> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> 
> - (T*)
>   e
> )
> 
> Unnecessary parantheses are also remove.

Applied, thanks.

