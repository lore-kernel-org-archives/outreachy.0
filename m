X-GM-THRID: 6260489275457929216
X-Received: by 10.28.148.150 with SMTP id w144mr730071wmd.7.1457635079281;
        Thu, 10 Mar 2016 10:37:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.198 with SMTP id c189ls211465wmh.12.gmail; Thu, 10 Mar
 2016 10:37:58 -0800 (PST)
X-Received: by 10.28.232.155 with SMTP id f27mr734451wmi.0.1457635078814;
        Thu, 10 Mar 2016 10:37:58 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c140si204832wmh.1.2016.03.10.10.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 6DABCC9ED3
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:37:58 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 5C652DA385
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:37:58 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 50F58DA380; Thu, 10 Mar 2016 19:37:58 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 666C6DA8FB
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:37:56 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 10 Mar 2016 19:37:56 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 4109 invoked from network); 10 Mar 2016 19:37:56 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 10 Mar 2016 19:37:56 +0100
Date: Thu, 10 Mar 2016 19:37:57 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: Laura Garcia Liebana <nevola@gmail.com>,
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] extensions: libipt_LOG: Avoid to print the default log
 level in the translation
Message-ID: <20160310183757.GB10249@salvia>
References: <20160310181537.GA16699@sonyv>
 <CAKHNQQGPvSmQP9R3omAuo1hbnOHPrsWhxkmsB7npxKM97v++Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQGPvSmQP9R3omAuo1hbnOHPrsWhxkmsB7npxKM97v++Fw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Mar 11, 2016 at 12:02:25AM +0530, Shivani Bhardwaj wrote:
> On Thu, Mar 10, 2016 at 11:45 PM, Laura Garcia Liebana <nevola@gmail.com> wrote:
> > Avoid to print the log level in the translation when the level is the
> > default value.
> >
> > Example:
> >
> > $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 10 -j LOG
> > nft add rule ip filter INPUT icmp type != router-solicitation counter log
> >
> 
> Looks good. Don't forget to send a patch for libip6t_LOG too.

Yes please, send a patch for libip6t_LOG too.

> Same is the case with reject as well. When I did the translations, I
> left its default nature intact.
> $ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip6 filter FORWARD tcp dport 22 counter reject with
> icmpv6 type port-unreachable
> 
> Pablo, should this be corrected too?

It would be good to translate this to the more compact syntax, if
possible.

> Laura, may be you can send more patches depending on his response.

Yes please. Thanks for commenting on this Shivani.

