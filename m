X-GM-THRID: 6260127828626374656
X-Received: by 10.28.24.14 with SMTP id 14mr334380wmy.1.1457608570612;
        Thu, 10 Mar 2016 03:16:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.14 with SMTP id u14ls124843wmu.22.canary; Thu, 10 Mar
 2016 03:16:10 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr340433wje.1.1457608569997;
        Thu, 10 Mar 2016 03:16:09 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id f75si77987wme.3.2016.03.10.03.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 03:16:09 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id A8638C9ED0
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 12:16:09 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 9BDBEDA380
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 12:16:09 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 9127EDA38B; Thu, 10 Mar 2016 12:16:09 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B24ABDA386
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 12:16:07 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 10 Mar 2016 12:16:07 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 733 invoked from network); 10 Mar 2016 12:16:07 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 10 Mar 2016 12:16:07 +0100
Date: Thu, 10 Mar 2016 12:16:08 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH nft] proto: Add router advertisement and solicitation
 icmp types
Message-ID: <20160310111608.GA8823@salvia>
References: <20160309185304.GA13575@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160309185304.GA13575@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 09, 2016 at 07:53:07PM +0100, Laura Garcia Liebana wrote:
> Enable support for router-advertisement and router-solicitation icmp types in nft.
> 
> Example:
> $ sudo nft add rule ip filter input icmp type router-advertisement counter accept
> $ sudo nft add rule ip filter input icmp type router-solicitation counter accept

Applied, thanks Laura.

