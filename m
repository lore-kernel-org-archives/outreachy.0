X-GM-THRID: 6258660898055913472
X-Received: by 10.28.63.201 with SMTP id m192mr735114wma.5.1457635435583;
        Thu, 10 Mar 2016 10:43:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.20 with SMTP id r20ls377716lfr.93.gmail; Thu, 10 Mar
 2016 10:43:55 -0800 (PST)
X-Received: by 10.112.17.37 with SMTP id l5mr714800lbd.21.1457635435000;
        Thu, 10 Mar 2016 10:43:55 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id f75si131332wme.3.2016.03.10.10.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 7583CC9EDE
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:43:54 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4579BDA8F8
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:43:54 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 37605DA384; Thu, 10 Mar 2016 19:43:54 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 4B541DA8FB
	for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 19:43:52 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Thu, 10 Mar 2016 19:43:52 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 12618 invoked from network); 10 Mar 2016 19:43:52 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 10 Mar 2016 19:43:52 +0100
Date: Thu, 10 Mar 2016 19:43:44 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv5] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160310184344.GA10448@salvia>
References: <20160310161743.GA9997@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160310161743.GA9997@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 10, 2016 at 05:17:46PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables. Not supported types in nftables

Please, this should be "Not supported icmp codes in nftables" instead.

> are: any, network-unreachable, host-unreachable, protocol-unreachable,

'any' is equivalent to void translation.

From what I can see in iptables, this built-in match comes with this
wildcard 'any' icmp type just to check that the icmp header is
actually in place.

In nft, we can rely on the connection tracking for such a check.

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
> 
>  extensions/libipt_icmp.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> index 666e7da..cc8e732 100644
> --- a/extensions/libipt_icmp.c
> +++ b/extensions/libipt_icmp.c
> @@ -249,6 +249,41 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>  	}
>  }
>  
> +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +				     unsigned int code_min,
> +				     unsigned int code_max)
> +{
> +	unsigned int i;
> +
> +	if (code_min != code_max && icmptype != 0xFF) {

So, if icmptype == 0xff, just return 1 with no printing I'd suggest.

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

