X-GM-THRID: 6402251586842656768
X-Received: by 10.25.234.202 with SMTP id y71mr3261120lfi.2.1490640589681;
        Mon, 27 Mar 2017 11:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.139 with SMTP id z133ls1233199lfd.6.gmail; Mon, 27 Mar
 2017 11:49:48 -0700 (PDT)
X-Received: by 10.25.104.21 with SMTP id d21mr3238392lfc.31.1490640588142;
        Mon, 27 Mar 2017 11:49:48 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id q207si22909wme.3.2017.03.27.11.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C80F6392E08
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 20:49:45 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B97BFDA86B
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 20:49:45 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AE850DA848; Mon, 27 Mar 2017 20:49:45 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 91B79DA86E
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 20:49:43 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 20:49:43 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 15567 invoked from network); 27 Mar 2017 20:49:43 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 20:49:43 +0200
Date: Mon, 27 Mar 2017 20:49:40 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: netfilter-devel@vger.kernel.org, pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] Constify option structures
Message-ID: <20170327184940.GA21804@salvia>
References: <cover.1490640256.git.gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 28, 2017 at 12:15:26AM +0530, Gargi Sharma wrote:
> The struct option is generally used only to initialise
> fields inside certain structs and is not modified anywhere.
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

Please indicate what userspace tree in the subject, I guess this is
iptables.

And merge them all into one single patch, they are part of the same
logical change.

Thanks!

