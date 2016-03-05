X-GM-THRID: 6258552787158695936
X-Received: by 10.28.158.2 with SMTP id h2mr237705wme.0.1457182873862;
        Sat, 05 Mar 2016 05:01:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.1 with SMTP id l1ls185816lfe.107.gmail; Sat, 05 Mar
 2016 05:01:12 -0800 (PST)
X-Received: by 10.25.165.148 with SMTP id o142mr1706941lfe.8.1457182872611;
        Sat, 05 Mar 2016 05:01:12 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c140si142853wmh.1.2016.03.05.05.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 05:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id DD0E54B9ED
	for <outreachy-kernel@googlegroups.com>; Sat,  5 Mar 2016 14:01:11 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CF1A1DA385
	for <outreachy-kernel@googlegroups.com>; Sat,  5 Mar 2016 14:01:11 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C423EDA8FB; Sat,  5 Mar 2016 14:01:11 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7627DDA385
	for <outreachy-kernel@googlegroups.com>; Sat,  5 Mar 2016 14:01:09 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Sat, 05 Mar 2016 14:01:09 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 12941 invoked from network); 5 Mar 2016 14:01:09 +0100
Received: from 77.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.77)
  by mail.us.es with AES128-SHA encrypted SMTP; 5 Mar 2016 14:01:09 +0100
Date: Sat, 5 Mar 2016 14:01:08 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Shivani Bhardwaj <shivanib134@gmail.com>
Subject: nftables project in this Linux kernel Outreachy round
Message-ID: <20160305130108.GA2973@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

Hi,

In case you want to apply for the nftables subproject in this
Outreachy round, you can send us (partial) iptables-translation
patches for the following match extensions:

* icmp
* icmp6
* rt

Shivani (previous Outreach intern) made a great job and she documented
what is already translated and what need to be translated here:

http://wiki.nftables.org/wiki-nftables/index.php/List_of_available_translations_via_iptables-translate_tool

Providing a translation from iptables to nftables is relatively easy.
The following link provides an example for the tcp match:

http://git.netfilter.org/iptables/commit/?id=0afd957f6bc03b17fac8824e50b2e0fbd3d6f153

The idea is to add a new .xlate function for that iptables extension,
this function takes the extension structure and print it in text in
nft format.

To provide a translation you have to understand a bit how both
iptables and nft work, to learn more you can visit our wiki page:

http://wiki.nftables.org

For iptables, you can check Oskar Andreasson's iptables documentation.

Thanks.

