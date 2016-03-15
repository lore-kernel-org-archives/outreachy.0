X-GM-THRID: 6258660898055913472
X-Received: by 10.112.13.40 with SMTP id e8mr3221113lbc.24.1458001241741;
        Mon, 14 Mar 2016 17:20:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.202 with SMTP id 193ls765855lfe.5.gmail; Mon, 14 Mar 2016
 17:20:40 -0700 (PDT)
X-Received: by 10.25.165.148 with SMTP id o142mr3278644lfe.8.1458001240943;
        Mon, 14 Mar 2016 17:20:40 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id f75si591078wme.3.2016.03.14.17.20.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 17:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 564FE114F43
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:20:38 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4666ADA383
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:20:38 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 3BD00DA8FA; Tue, 15 Mar 2016 01:20:38 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4D547DA384
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:20:36 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 15 Mar 2016 01:20:36 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 27123 invoked from network); 15 Mar 2016 01:20:36 +0100
Received: from 77.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.77)
  by mail.us.es with AES128-SHA encrypted SMTP; 15 Mar 2016 01:20:36 +0100
Date: Tue, 15 Mar 2016 01:20:35 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCHv6] extensions: libipt_icmp: Add
 translation to nft
Message-ID: <20160315002035.GA9520@salvia>
References: <20160312165431.GA12984@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312165431.GA12984@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Mar 12, 2016 at 05:54:34PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables. Not supported icmp codes in nftables
> are: network-unreachable, host-unreachable, protocol-unreachable,
> port-unreachable, fragmentation-needed, source-route-failed,
> network-unknown, host-unknown, network-prohibited, host-prohibited,
> TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
> host-precedence-violation, precedence-cutoff, network-redirect,
> host-redirect, TOS-network-redirect, TOS-host-redirect,
> ttl-zero-during-transit, ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
> 
> Examples:
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j ACCEPT
> nft add rule ip filter INPUT icmp type echo-reply counter accept
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j ACCEPT
> nft add rule ip filter INPUT icmp type destination-unreachable counter accept
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j ACCEPT
> nft add rule ip filter INPUT icmp type != destination-unreachable counter accept
> 
> In the case of '--icmp-type any' there is no type to translate, nft only
> has to check the icmp header. This is currently not supported in nft.
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type any -j ACCEPT
> nft add rule ip filter INPUT icmp counter accept

Applied with minor glitch below.

> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> v2:
> 	- Detection of not supported types in nftables, as Shivani suggested.
> v3:
> 	- Fix array iteration protection.
> v4:
> 	- icmp types router-advertisement and router-solicitation already supported in nft.
> v5:
> 	- Update commit message with the correct not supported codes.
> v6:
> 	- No type to translate with 'any'.
> 
>  extensions/libipt_icmp.c | 41 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> index 666e7da..2238b19 100644
> --- a/extensions/libipt_icmp.c
> +++ b/extensions/libipt_icmp.c
> @@ -249,6 +249,46 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>  	}
>  }
>  
> +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +				     unsigned int code_min,
> +				     unsigned int code_max)
> +{
> +	unsigned int i;
> +
> +	if (code_min != code_max) {
> +		for (i = 0; i < ARRAY_SIZE(icmp_codes); ++i)
> +			if (icmp_codes[i].type == icmptype &&
> +			    icmp_codes[i].code_min == code_min &&
> +			    icmp_codes[i].code_max == code_max) {
> +				xt_xlate_add(xl, icmp_codes[i].name);
> +				return 1;
> +			}
> +	}
> +
> +	return 0;
> +}
> +
> +static int icmp_xlate(const void *ip, const struct xt_entry_match *match,
> +		      struct xt_xlate *xl, int numeric)
> +{
> +	const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
> +
> +	if (info->type == 0xFF) {
> +		xt_xlate_add(xl, "icmp");
> +	} else {

I reworked the lines above to:

        if (info->type != 0xff) {

> +		xt_xlate_add(xl, "icmp type%s ",
> +			     (info->invflags & IPT_ICMP_INV) ? " !=" : "");
> +
> +		if (!type_xlate_print(xl, info->type, info->code[0],
> +				      info->code[1]))
> +			return 0;
> +	}
> +
> +	xt_xlate_add(xl, " ");
> +
> +	return 1;
> +}

Note that:

# nft add rule ip filter INPUT icmp counter accept
<cmdline>:1:31-37: Error: syntax error, unexpected counter
add rule ip filter INPUT icmp counter accept
                              ^^^^^^^

is not a valid syntax.

