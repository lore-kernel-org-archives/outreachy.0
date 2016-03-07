X-GM-THRID: 6258648860254535680
X-Received: by 10.112.155.8 with SMTP id vs8mr1880608lbb.13.1457375112535;
        Mon, 07 Mar 2016 10:25:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.53.69 with SMTP id c66ls718250wma.6.canary; Mon, 07 Mar
 2016 10:25:12 -0800 (PST)
X-Received: by 10.28.7.133 with SMTP id 127mr1474670wmh.2.1457375111961;
        Mon, 07 Mar 2016 10:25:11 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id z75si579835wmz.2.2016.03.07.10.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:25:11 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 9EBC213C0E6
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:25:11 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 91D49DA38A
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:25:11 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 8762DDA8FA; Mon,  7 Mar 2016 19:25:11 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 94DA5DA3A3
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 19:25:09 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 19:25:09 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 27586 invoked from network); 7 Mar 2016 19:25:09 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 19:25:09 +0100
Date: Mon, 7 Mar 2016 19:25:04 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160307182504.GA7325@salvia>
References: <20160306222308.GA20846@sonyv>
 <20160307171119.GA29573@salvia>
 <20160307180850.GB22851@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307180850.GB22851@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Mar 07, 2016 at 07:08:51PM +0100, Laura Garcia wrote:
> On Mon, Mar 07, 2016 at 06:11:19PM +0100, Pablo Neira Ayuso wrote:
> > 
> > #define XT_ICMPV6_TYPE(type)    (ND_ROUTER_SOLICIT - type)
> > 
> > static const char *icmp6_type_xlate_array[] = {
> >         [XT_ICMPV6_TYPE(ND_ROUTER_SOLICIT))]    = "nd-router-solicit",
> >         [XT_ICMPV6_TYPE(ND_ROUTER_ADVERT)]      = "nd-router-advert",
> >         ...
> >         [XT_ICMPV6_TYPE(ND_REDIRECT)]           = "nd-redirect",
> > };
> > 
> > static const char *icmp6_type_xlate(unsigned int type)
> > {
> >         unsigned type
> > 
> >         if (type < ND_ROUTER_SOLICIT || type > ND_REDIRECT))
> >                 return NULL;
> > 
> >         return icmp6_type_xlate_array[XT_ICMPV6_TYPE(type)];
> > }
> > 
> > Then, from type_xlate_print() use this icmp6_type_xlate().
> > 
> 
> Ok
> 
> > > +	default:
> > > +		for (i = 0; ARRAY_SIZE(icmpv6_codes); ++i)
> >                                                            ^
> > BTW, missing opening bracket here
> > 
> > > +			if (icmpv6_codes[i].type == icmptype &&
> > > +			    icmpv6_codes[i].code_min == code_min &&
> > > +			    icmpv6_codes[i].code_max == code_max)
> > > +				break;
> > > +			xt_xlate_add(xl, icmpv6_codes[i].name);
> > 
> > and closing bracket here '}'
> > 
> > BTW, do you really need this code now that we just skip when we get an
> > icmp code?
> > 
> 
> Same thing here, the brackets are not needed. It's only a indentation
> problem in the function xt_xlate_add.

Ok, thanks for explaining.

Please, send a v3 with the proposed changes above and resubmit.
Thanks.

