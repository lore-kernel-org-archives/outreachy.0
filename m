X-GM-THRID: 6258660898055913472
X-Received: by 10.112.26.74 with SMTP id j10mr1885588lbg.18.1457375275941;
        Mon, 07 Mar 2016 10:27:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.156 with SMTP id 28ls312204lfr.47.gmail; Mon, 07 Mar
 2016 10:27:55 -0800 (PST)
X-Received: by 10.112.13.40 with SMTP id e8mr1781415lbc.24.1457375275279;
        Mon, 07 Mar 2016 10:27:55 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id s141si479884wmd.1.2016.03.07.10.27.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:27:55 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D0CDA13C0DC
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:27:54 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C1B89DA39D
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:27:54 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id B6FB3DA8FB; Mon,  7 Mar 2016 19:27:54 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BA95EDA39E
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:27:52 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 19:27:52 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 32401 invoked from network); 7 Mar 2016 19:27:52 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 19:27:52 +0100
Date: Mon, 7 Mar 2016 19:27:47 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: Laura Garcia <nevola@gmail.com>,
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307182747.GB7325@salvia>
References: <20160306222442.GA20945@sonyv>
 <20160307171408.GB29573@salvia>
 <20160307180445.GA22851@sonyv>
 <CAKHNQQFQvt1j_+HW659VsD3TVJkaBV4q29MyrN_HHkz-NYmDGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQFQvt1j_+HW659VsD3TVJkaBV4q29MyrN_HHkz-NYmDGw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Mar 07, 2016 at 11:40:08PM +0530, Shivani Bhardwaj wrote:
> On Mon, Mar 7, 2016 at 11:34 PM, Laura Garcia <nevola@gmail.com> wrote:
> > On Mon, Mar 07, 2016 at 06:14:08PM +0100, Pablo Neira Ayuso wrote:
> >> On Sun, Mar 06, 2016 at 11:24:44PM +0100, Laura Garcia Liebana wrote:
> > The brackets are not missing here, sorry for the confusion. Inside the for
> > statement we only have the condition. Just the xt_late_add function indentation is not correct.
> >
> > This code it's needed in order to translate from types numbers to type
> > names, but we're ensuring after that which types names are similar in
> > iptables and nftables. For example, with this code we get:
> >
> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> > nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
> >
> > Without this code:
> >
> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> > nft add rule ip filter INPUT icmp type 3 counter log level warn
> >
> This looks good too. nftables is anyway going to convert it to its
> name type (if available). See how this above rule shows up in the
> chain:
> 
> table ip filter {
>     chain INPUT {
>         type filter hook input priority 0; policy accept;
>         icmp type destination-unreachable counter packets 0 bytes 0 log
>     }
> }
> 
> But, anyway, wait for Pablo's comments about this.

Translation to text is better, if possible.

