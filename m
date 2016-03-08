X-GM-THRID: 6258648860254535680
X-Received: by 10.28.7.133 with SMTP id 127mr1917849wmh.2.1457434293214;
        Tue, 08 Mar 2016 02:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.206 with SMTP id p197ls51865lfd.44.gmail; Tue, 08 Mar
 2016 02:51:32 -0800 (PST)
X-Received: by 10.112.142.42 with SMTP id rt10mr278120lbb.13.1457434292129;
        Tue, 08 Mar 2016 02:51:32 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id v68si91152wmd.1.2016.03.08.02.51.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 02:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 8D0038432
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:51:31 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7C5F8DA8FB
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:51:31 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 712B1DA384; Tue,  8 Mar 2016 11:51:31 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 02DD2DA38A
	for <outreachy-kernel@googlegroups.com>; Tue,  8 Mar 2016 11:51:29 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 08 Mar 2016 11:51:29 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 18679 invoked from network); 8 Mar 2016 11:51:28 +0100
Received: from barqueta.lsi.us.es (HELO us.es) (1984lsi@150.214.188.150)
  by mail.us.es with AES128-SHA encrypted SMTP; 8 Mar 2016 11:51:28 +0100
Date: Tue, 8 Mar 2016 11:51:29 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv3] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160308105129.GA4008@salvia>
References: <20160307212252.GA10639@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307212252.GA10639@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Laura,

On Mon, Mar 07, 2016 at 10:22:55PM +0100, Laura Garcia Liebana wrote:
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

Not related to your patches, I just noticed this:

        log level warn

Could you send a patch to remove the "level warn" thing? The default
logging level is already warning in nft so better if we don't display
this.

BTW, applied with one minor glitch below.

> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> v2:
> 	- Detection of not supported types in nftables, as Shivani suggested.
> v3:
> 	- Generalize the source code, as Pablo suggested.
> 
>  extensions/libip6t_icmp6.c | 65 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
> index e183ce6..08eca99 100644
> --- a/extensions/libip6t_icmp6.c
> +++ b/extensions/libip6t_icmp6.c
> @@ -4,6 +4,9 @@
>  #include <xtables.h>
>  #include <limits.h> /* INT_MAX in ip6_tables.h */
>  #include <linux/netfilter_ipv6/ip6_tables.h>
> +#include <netinet/icmp6.h>
> +
> +#define XT_ICMPV6_TYPE(type)	(type - ND_ROUTER_SOLICIT)
>  
>  enum {
>  	O_ICMPV6_TYPE = 0,
> @@ -15,6 +18,14 @@ struct icmpv6_names {
>  	uint8_t code_min, code_max;
>  };
>  
> +static const char *icmp6_type_xlate_array[] = {
> +	[XT_ICMPV6_TYPE(ND_ROUTER_SOLICIT)]	= "nd-router-solicit",
> +	[XT_ICMPV6_TYPE(ND_ROUTER_ADVERT)]	= "nd-router-advert",
> +	[XT_ICMPV6_TYPE(ND_NEIGHBOR_SOLICIT)]	= "nd-neighbor-solicit",
> +	[XT_ICMPV6_TYPE(ND_NEIGHBOR_ADVERT)]	= "nd-neighbor-advert",
> +	[XT_ICMPV6_TYPE(ND_REDIRECT)]		= "nd-redirect",
> +};

Next time move these definitions to where they are used. I prefer to
get these where we use them, the closer we have the context to read
the code, the less you have to scroll up and down (thus change visual
context). This time, I made this manual change myself here.

Thanks.

