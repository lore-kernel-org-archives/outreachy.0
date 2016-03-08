X-GM-THRID: 6258660898055913472
X-Received: by 10.112.54.202 with SMTP id l10mr2271750lbp.14.1457434436212;
        Tue, 08 Mar 2016 02:53:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.68 with SMTP id d65ls62955lfe.34.gmail; Tue, 08 Mar
 2016 02:53:55 -0800 (PST)
X-Received: by 10.25.32.144 with SMTP id g138mr3395686lfg.0.1457434435337;
        Tue, 08 Mar 2016 02:53:55 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id z75si751814wmz.2.2016.03.08.02.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 02:53:55 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 95E6C7414
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:53:54 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 70972DA3A4
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:53:54 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 876F1DA8FA; Tue,  8 Mar 2016 11:53:48 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BA34BDA3B2
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:53:46 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 08 Mar 2016 11:53:46 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 24459 invoked from network); 8 Mar 2016 11:53:46 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 8 Mar 2016 11:53:46 +0100
Date: Tue, 8 Mar 2016 11:53:46 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv3] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160308105346.GB4008@salvia>
References: <20160307212141.GA10594@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307212141.GA10594@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Mar 07, 2016 at 10:21:44PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables. Not supported types in nftables

These are actually icmp codes that we don't support yet, right?

> are: any, network-unreachable, host-unreachable, protocol-unreachable,
> port-unreachable, fragmentation-needed, source-route-failed,
> network-unknown, host-unknown, network-prohibited, host-prohibited,
> TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
> host-precedence-violation, precedence-cutoff, network-redirect,
> host-redirect, TOS-network-redirect, TOS-host-redirect,
> router-advertisement, router-solicitation, ttl-zero-during-transit,
> ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
> 
> Examples:
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j LOG
> nft add rule ip filter INPUT icmp type echo-reply counter log level warn
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
> nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> v2:
> 	- Detection of not supported types in nftables, as Shivani suggested.
> v3:
> 	- Fix array iteration protection.
> 
>  extensions/libipt_icmp.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> index 666e7da..2c8be87 100644
> --- a/extensions/libipt_icmp.c
> +++ b/extensions/libipt_icmp.c
> @@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
>  }
>  
>  static void icmp_print(const void *ip, const struct xt_entry_match *match,
> -                       int numeric)
> +		       int numeric)

I think this change doesn't below this patch.

>  {
>  	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
>  
> @@ -249,6 +249,52 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>  	}
>  }
>  
> +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +			     unsigned int code_min, unsigned int code_max)
                       ^^^^^^

This should be aligned with the line above:

static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
                                     unsigned int code_min,
                                     unsigned int code_max)

> +{
> +	unsigned int i;
> +
> +	if (code_min == code_max)
> +		return 0;
> +
> +	switch (icmptype) {
> +	case 0xFF:

You can skip the 0xff case by adding nothing.

> +	case 9:
> +	case 10:

You can send me a two-liner for this for nft, so we don't need this I
think.

> +		return 0;
> +	default:
> +		for (i = 0; i < ARRAY_SIZE(icmp_codes); ++i)
> +			if (icmp_codes[i].type == icmptype &&
> +			    icmp_codes[i].code_min == code_min &&
> +			    icmp_codes[i].code_max == code_max)
> +				break;
> +
> +		if (i != ARRAY_SIZE(icmp_codes))
> +			xt_xlate_add(xl, icmp_codes[i].name);
> +		else
> +			return 0;
> +	}
> +
> +	return 1;
> +}

