X-GM-THRID: 6258660898055913472
X-Received: by 10.25.136.134 with SMTP id k128mr2956253lfd.5.1457374859019;
        Mon, 07 Mar 2016 10:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.136.11 with SMTP id k11ls720738wmd.25.canary; Mon, 07 Mar
 2016 10:20:58 -0800 (PST)
X-Received: by 10.194.119.66 with SMTP id ks2mr2957260wjb.6.1457374858553;
        Mon, 07 Mar 2016 10:20:58 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 185si453087wml.0.2016.03.07.10.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:20:58 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 1C766ED06B
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:20:58 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 0F3F8DA8FA
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:20:58 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 04876DA8F9; Mon,  7 Mar 2016 19:20:58 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id EC828DA386
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:20:55 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 19:20:55 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 20183 invoked from network); 7 Mar 2016 19:20:55 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 19:20:55 +0100
Date: Mon, 7 Mar 2016 19:20:54 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307182054.GA6823@salvia>
References: <20160306222442.GA20945@sonyv>
 <20160307171408.GB29573@salvia>
 <20160307180445.GA22851@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307180445.GA22851@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Mar 07, 2016 at 07:04:46PM +0100, Laura Garcia wrote:
> On Mon, Mar 07, 2016 at 06:14:08PM +0100, Pablo Neira Ayuso wrote:
> > On Sun, Mar 06, 2016 at 11:24:44PM +0100, Laura Garcia Liebana wrote:
> > > Add translation for icmp to nftables. Not supported types in nftables
> > > are: any, network-unreachable, host-unreachable, protocol-unreachable,
> > > port-unreachable, fragmentation-needed, source-route-failed,
> > > network-unknown, host-unknown, network-prohibited, host-prohibited,
> > > TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
> > > host-precedence-violation, precedence-cutoff, network-redirect,
> > > host-redirect, TOS-network-redirect, TOS-host-redirect,
> > > router-advertisement, router-solicitation, ttl-zero-during-transit,
> > > ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
> > > 
> > > Examples:
> > > 
> > > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j LOG
> > > nft add rule ip filter INPUT icmp type echo-reply counter log level warn
> > > 
> > > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> > > nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
> > > 
> > > $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
> > > nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn
> > > 
> > > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > > ---
> > > v2:
> > > 	- Detection of not supported types in nftables, as Shivani suggested.
> > > 
> > >  extensions/libipt_icmp.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 45 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> > > index 666e7da..89eb36e 100644
> > > --- a/extensions/libipt_icmp.c
> > > +++ b/extensions/libipt_icmp.c
> > > @@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
> > >  }
> > >  
> > >  static void icmp_print(const void *ip, const struct xt_entry_match *match,
> > > -                       int numeric)
> > > +		       int numeric)
> > >  {
> > >  	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
> > >  
> > > @@ -249,6 +249,49 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
> > >  	}
> > >  }
> > >  
> > > +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> > > +			     unsigned int code_min, unsigned int code_max)
> > > +{
> > > +	unsigned int i;
> > > +
> > > +	if (code_min == code_max)
> > > +		return 0;
> > > +
> > > +	switch (icmptype) {
> > > +	case 0xFF:
> > > +	case 9:
> > > +	case 10:
> > 
> > Why are we skipping these here?
> > 
> 
> These are types which doesn't seem to be supported by nftables: any,
> router-advertisement and router-solicitation, so in this case we would
> return a 0 in order to indicate that the translation is not supported.

I think you can add these two to icmp_type_tbl in nft/src/proto.c, it
would be just a two-liner to support ICMP_ROUTERADVERT and
ICMP_ROUTERSOLICIT.

Regarding 'any', you can just skip translating this. From ip_tables
kernel code I can see this just return true in case 0xff is specified.
so the right translation to me is not to print anything.

> > > +		return 0;
> > > +	default:
> > > +		for (i = 0; ARRAY_SIZE(icmp_codes); ++i)
> > 
> > Missing bracket here.
> > 
> > > +			if (icmp_codes[i].type == icmptype &&
> > > +			    icmp_codes[i].code_min == code_min &&
> > > +			    icmp_codes[i].code_max == code_max)
> > > +				break;
> > > +
> > > +			xt_xlate_add(xl, icmp_codes[i].name);
> > 
> > Same thing. But as I said in the previous patch, are you sure you need
> > this code snippet above at this stage?
> > 
> 
> The brackets are not missing here, sorry for the confusion. Inside the for
> statement we only have the condition. Just the xt_late_add function indentation is not correct.

OK, makes sense.

Then fix this broken indent and resubmit a v2, thanks Laura.

