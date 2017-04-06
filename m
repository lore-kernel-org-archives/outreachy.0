X-GM-THRID: 6403004537116819456
X-Received: by 10.25.104.21 with SMTP id d21mr4618038lfc.31.1491495790079;
        Thu, 06 Apr 2017 09:23:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.203 with SMTP id 72ls2803868lfy.19.gmail; Thu, 06 Apr
 2017 09:23:08 -0700 (PDT)
X-Received: by 10.25.203.151 with SMTP id b145mr4611212lfg.17.1491495788359;
        Thu, 06 Apr 2017 09:23:08 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id d184si73363wmc.0.2017.04.06.09.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 09:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 6132411ADC6
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:23:05 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 518FFDA86E
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:23:05 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 464FCDA875; Thu,  6 Apr 2017 18:23:05 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 50FAEDA870
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Apr 2017 18:23:03 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Thu, 06 Apr 2017 18:23:03 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 27628 invoked from network); 6 Apr 2017 18:23:02 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 6 Apr 2017 18:23:02 +0200
Date: Thu, 6 Apr 2017 18:22:59 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] iptables: Remove unnecessary braces.
Message-ID: <20170406162259.GB5655@salvia>
References: <cover.1490815157.git.rvarsha016@gmail.com>
 <58dc0ab2.15dc630a.414de.570e@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58dc0ab2.15dc630a.414de.570e@mx.google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 30, 2017 at 12:57:43AM +0530, Varsha Rao wrote:
> Remove braces which are not required, to fix the check patch issue.
> The following coccinelle script was used to fix this issue.
> 
> @@
> expression e;
> expression e1;
> @@
> if(e)
> -{
>  e1;
> -}

Applied, thanks.

