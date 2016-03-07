X-GM-THRID: 6258660898055913472
X-Received: by 10.28.194.212 with SMTP id s203mr1031515wmf.3.1457361278030;
        Mon, 07 Mar 2016 06:34:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.178.133 with SMTP id b127ls450030wmf.42.gmail; Mon, 07 Mar
 2016 06:34:37 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr1443773wmg.6.1457361277451;
        Mon, 07 Mar 2016 06:34:37 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id w10si369745wmw.3.2016.03.07.06.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 06:34:37 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id CDAE3C124F
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 15:34:36 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B40C8DA8FA
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 15:34:36 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id A9633DA8F7; Mon,  7 Mar 2016 15:34:36 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id AAFD5DA8FA
	for <outreachy-kernel@googlegroups.com>; Mon,  7 Mar 2016 15:34:33 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Mon, 07 Mar 2016 15:34:33 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 14779 invoked from network); 7 Mar 2016 15:34:33 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Mar 2016 15:34:33 +0100
Date: Mon, 7 Mar 2016 15:34:32 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307143432.GA28000@salvia>
References: <20160305200039.GA14269@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160305200039.GA14269@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Mar 05, 2016 at 09:00:41PM +0100, Laura Garcia Liebana wrote:
> Add translation for icmp to nftables.
> 
> Examples:
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type any -j LOG
> nft add rule ip filter INPUT icmp type any counter log level warn
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3/1 -j LOG
> nft add rule ip filter INPUT icmp type host-unreachable counter log level warn
> 
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
> nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  extensions/libipt_icmp.c | 33 ++++++++++++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> index 666e7da..795172f 100644
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
> @@ -249,6 +249,36 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>  	}
>  }
>  
> +static void type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +			     unsigned int code_min, unsigned int code_max)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; ARRAY_SIZE(icmp_codes); i++)
> +		if (icmp_codes[i].type == icmptype &&
> +		    icmp_codes[i].code_min == code_min &&
> +		    icmp_codes[i].code_max == code_max)
> +			break;
> +
> +	xt_xlate_add(xl, icmp_codes[i].name);
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
> +	type_xlate_print(xl, info->type, info->code[0], info->code[1]);
> +
> +	xt_xlate_add(xl, " ");
> +
> +	return 1;
> +}

icmpv6 codes matching can be translated to:

        icmpv6 code VALUE

I know this is still broken in nft when listing, but I have initial
a couple of patches to fix this here almost done.

So please provide the translation for this too, this will work soon.

