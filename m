X-GM-THRID: 6258660898055913472
X-Received: by 10.25.136.134 with SMTP id k128mr2910993lfd.5.1457370856874;
        Mon, 07 Mar 2016 09:14:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.7 with SMTP id u7ls660076wmd.41.gmail; Mon, 07 Mar 2016
 09:14:16 -0800 (PST)
X-Received: by 10.28.7.133 with SMTP id 127mr1426913wmh.2.1457370856408;
        Mon, 07 Mar 2016 09:14:16 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 71si618821wmp.0.2016.03.07.09.14.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 09:14:16 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 0BE65C1257
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:14:16 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id F383ADA383
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:14:15 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id E8D8FDA8FB; Mon,  7 Mar 2016 18:14:15 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D0C2DDA38C
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:14:13 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 18:14:13 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 28026 invoked from network); 7 Mar 2016 18:14:13 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 18:14:13 +0100
Date: Mon, 7 Mar 2016 18:14:08 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307171408.GB29573@salvia>
References: <20160306222442.GA20945@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306222442.GA20945@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Mar 06, 2016 at 11:24:44PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables. Not supported types in nftables
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
> 
>  extensions/libipt_icmp.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> index 666e7da..89eb36e 100644
> --- a/extensions/libipt_icmp.c
> +++ b/extensions/libipt_icmp.c
> @@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
>  }
>  
>  static void icmp_print(const void *ip, const struct xt_entry_match *match,
> -                       int numeric)
> +		       int numeric)
>  {
>  	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
>  
> @@ -249,6 +249,49 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>  	}
>  }
>  
> +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +			     unsigned int code_min, unsigned int code_max)
> +{
> +	unsigned int i;
> +
> +	if (code_min == code_max)
> +		return 0;
> +
> +	switch (icmptype) {
> +	case 0xFF:
> +	case 9:
> +	case 10:

Why are we skipping these here?

> +		return 0;
> +	default:
> +		for (i = 0; ARRAY_SIZE(icmp_codes); ++i)

Missing bracket here.

> +			if (icmp_codes[i].type == icmptype &&
> +			    icmp_codes[i].code_min == code_min &&
> +			    icmp_codes[i].code_max == code_max)
> +				break;
> +
> +			xt_xlate_add(xl, icmp_codes[i].name);

Same thing. But as I said in the previous patch, are you sure you need
this code snippet above at this stage?

> +	}
> +
> +	return 1;
> +}
> +
> +static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
> +		       int numeric)
> +{
> +	const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
> +
> +	xt_xlate_add(xl, "icmp type%s ",
> +		     (info->invflags & IPT_ICMP_INV) ? " !=" : "");
> +
> +	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
> +		return 0;
> +
> +	xt_xlate_add(xl, " ");
> +
> +	return 1;
> +}
> +
> +
>  static struct xtables_match icmp_mt_reg = {
>  	.name		= "icmp",
>  	.version	= XTABLES_VERSION,
> @@ -261,6 +304,7 @@ static struct xtables_match icmp_mt_reg = {
>  	.save		= icmp_save,
>  	.x6_parse	= icmp_parse,
>  	.x6_options	= icmp_opts,
> +	.xlate		= icmp_xlate,
>  };
>  
>  void _init(void)
> -- 
> 2.7.0
> 

