X-GM-THRID: 6399870143121326080
X-Received: by 10.25.67.80 with SMTP id m16mr5169173lfj.27.1490189923834;
        Wed, 22 Mar 2017 06:38:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.83 with SMTP id o80ls125685lff.53.gmail; Wed, 22 Mar
 2017 06:38:41 -0700 (PDT)
X-Received: by 10.25.22.94 with SMTP id m91mr5123704lfi.14.1490189921341;
        Wed, 22 Mar 2017 06:38:41 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id n128si1365228wmf.2.2017.03.22.06.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 06:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 23CC8170D2E
	for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 14:38:39 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1544EDA872
	for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 14:38:39 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 08343DA86F; Wed, 22 Mar 2017 14:38:39 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 40953DA87D
	for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 14:38:36 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Wed, 22 Mar 2017 14:38:36 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 6910 invoked from network); 22 Mar 2017 14:38:36 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 22 Mar 2017 14:38:36 +0100
Date: Wed, 22 Mar 2017 14:38:21 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/5] netfilter: Clean up tests if NULL returned on failure
Message-ID: <20170322133821.GA21278@salvia>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 21, 2017 at 02:14:34PM +0530, simran singhal wrote:
> This patch series clean up tests if NULL returned on failure.

$ git grep "== NULL" net/netfilter/ | wc -l
461

This is cleaning up just some of them, we still seem to have quite a
bit of them.

Main problem with this changes is that it creates lots of work to
people backporting patches and stable maintainers, I remember that
they have complain about this.

Either way, I would prefer you fix this coding style issue in one go,
ie. one single patch, it will be a large one.

