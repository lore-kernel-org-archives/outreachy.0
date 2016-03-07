X-GM-THRID: 6258648860254535680
X-Received: by 10.28.6.14 with SMTP id 14mr1615599wmg.6.1457370685266;
        Mon, 07 Mar 2016 09:11:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.99.134 with SMTP id x128ls693409wmb.30.canary; Mon, 07 Mar
 2016 09:11:24 -0800 (PST)
X-Received: by 10.194.84.40 with SMTP id v8mr2907219wjy.2.1457370684767;
        Mon, 07 Mar 2016 09:11:24 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c140si510312wmh.1.2016.03.07.09.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 09:11:24 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4F0494B104
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:11:22 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 41F98DA38E
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:11:22 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 368F1DA380; Mon,  7 Mar 2016 18:11:22 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 31D7EDA38F
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 18:11:20 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 18:11:20 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 22739 invoked from network); 7 Mar 2016 18:11:19 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 18:11:19 +0100
Date: Mon, 7 Mar 2016 18:11:19 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160307171119.GA29573@salvia>
References: <20160306222308.GA20846@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306222308.GA20846@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Mar 06, 2016 at 11:23:10PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmpv6 to nftables. Not supported types in nftables
> are: no-route, communication-prohibited, beyond-scope,
> address-unreachable, port-unreachable, failed-policy, reject-route,
> ttl-zero-during-transit, ttl-zero-during-reassembly, bad-header,
> unknown-header-type and unknown-option.
> 
> Examples:
> 
> $ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type 1 -j LOG
> nft add rule ip6 filter INPUT icmpv6 type destination-unreachable counter log level warn
> 
> $ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type neighbour-advertisement -j LOG
> nft add rule ip6 filter INPUT icmpv6 type nd-neighbor-advert counter log level warn
> 
> $ ip6tables-translate -t filter -A INPUT -m icmp6 ! --icmpv6-type packet-too-big -j LOG
> nft add rule ip6 filter INPUT icmpv6 type != packet-too-big counter log level warn
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> v2:
> 	- Detection of not supported types in nftables, as Shivani suggested.
> 
>  extensions/libip6t_icmp6.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
> index e183ce6..70f9c21 100644
> --- a/extensions/libip6t_icmp6.c
> +++ b/extensions/libip6t_icmp6.c
> @@ -222,6 +222,58 @@ static void icmp6_save(const void *ip, const struct xt_entry_match *match)
>  		printf("/%u", icmpv6->code[0]);
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
> +	case 133:
> +		xt_xlate_add(xl, "nd-router-solicit");
> +		break;
> +	case 134:
> +		xt_xlate_add(xl, "nd-router-advert");
> +		break;
> +	case 135:
> +		xt_xlate_add(xl, "nd-neighbor-solicit");
> +		break;
> +	case 136:
> +		xt_xlate_add(xl, "nd-neighbor-advert");
> +		break;
> +	case 137:
> +		xt_xlate_add(xl, "nd-redirect");
> +		break;

Could you generalize this code a bit?

#define XT_ICMPV6_TYPE(type)    (ND_ROUTER_SOLICIT - type)

static const char *icmp6_type_xlate_array[] = {
        [XT_ICMPV6_TYPE(ND_ROUTER_SOLICIT))]    = "nd-router-solicit",
        [XT_ICMPV6_TYPE(ND_ROUTER_ADVERT)]      = "nd-router-advert",
        ...
        [XT_ICMPV6_TYPE(ND_REDIRECT)]           = "nd-redirect",
};

static const char *icmp6_type_xlate(unsigned int type)
{
        unsigned type

        if (type < ND_ROUTER_SOLICIT || type > ND_REDIRECT))
                return NULL;

        return icmp6_type_xlate_array[XT_ICMPV6_TYPE(type)];
}

Then, from type_xlate_print() use this icmp6_type_xlate().

> +	default:
> +		for (i = 0; ARRAY_SIZE(icmpv6_codes); ++i)
                                                           ^
BTW, missing opening bracket here

> +			if (icmpv6_codes[i].type == icmptype &&
> +			    icmpv6_codes[i].code_min == code_min &&
> +			    icmpv6_codes[i].code_max == code_max)
> +				break;
> +			xt_xlate_add(xl, icmpv6_codes[i].name);

and closing bracket here '}'

BTW, do you really need this code now that we just skip when we get an
icmp code?

> +	}
> +
> +	return 1;
> +}
> +
> +static int icmp6_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
> +		       int numeric)
> +{
> +	const struct ip6t_icmp *info = (struct ip6t_icmp *)match->data;
> +
> +	xt_xlate_add(xl, "icmpv6 type%s ",
> +		     (info->invflags & IP6T_ICMP_INV) ? " !=" : "");
> +
> +	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
> +		return 0;
> +
> +	xt_xlate_add(xl, " ");
> +
> +	return 1;
> +}
> +
>  static struct xtables_match icmp6_mt6_reg = {
>  	.name 		= "icmp6",
>  	.version 	= XTABLES_VERSION,
> @@ -234,6 +286,7 @@ static struct xtables_match icmp6_mt6_reg = {
>  	.save		= icmp6_save,
>  	.x6_parse	= icmp6_parse,
>  	.x6_options	= icmp6_opts,
> +	.xlate		= icmp6_xlate,
>  };
>  
>  void _init(void)
> -- 
> 2.7.0
> 

