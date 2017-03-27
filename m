X-GM-THRID: 6402257939123404800
X-Received: by 10.223.164.138 with SMTP id g10mr1601886wrb.3.1490641971857;
        Mon, 27 Mar 2017 12:12:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.76.193 with SMTP id z184ls1229716lfa.31.gmail; Mon, 27 Mar
 2017 12:12:51 -0700 (PDT)
X-Received: by 10.46.88.9 with SMTP id m9mr95070ljb.25.1490641971025;
        Mon, 27 Mar 2017 12:12:51 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id i76si40152wmh.1.2017.03.27.12.12.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C39E8392E08
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:12:48 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B5CE6DA86B
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:12:48 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AAFA2DA863; Mon, 27 Mar 2017 21:12:48 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id A149CDA807
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:12:46 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 21:12:46 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 20656 invoked from network); 27 Mar 2017 21:12:46 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 21:12:46 +0200
Date: Mon, 27 Mar 2017 21:12:39 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] iptables: Constify option struct
Message-ID: <20170327191239.GA18080@salvia>
References: <1490641815-12741-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490641815-12741-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 28, 2017 at 12:40:15AM +0530, Gargi Sharma wrote:
> The struct  of the type option is only used to initialise a field
> inside the xtables_match struct and is not modified anywhere.
> Done using Coccinelle:
> 
> @r1 disable optional_qualifier@
> identifier s,i;
> position p;
> @@
> 
> static struct option i@p[] ={...};
> 
> @ok1@
> identifier r1.i;
> expression e;
> position p;
> @@
> e = i@p
> 
> @bad@
> position p != {r1.p,ok1.p};
> identifier r1.i;
> @@
> e@i@p
> 
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct option i[] = { ... };

Applied, thanks.

You can probably have a look at ebtables.git, probably there are more
things to constify there.

