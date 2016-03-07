X-GM-THRID: 6258648860254535680
X-Received: by 10.28.158.2 with SMTP id h2mr1480769wme.0.1457374135059;
        Mon, 07 Mar 2016 10:08:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.14 with SMTP id 14ls693448wmk.34.canary; Mon, 07 Mar
 2016 10:08:54 -0800 (PST)
X-Received: by 10.194.62.69 with SMTP id w5mr2960774wjr.5.1457374134634;
        Mon, 07 Mar 2016 10:08:54 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id 185si448959wml.0.2016.03.07.10.08.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id l68so97683143wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 10:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b1fkl6MedCWCBxrN5ydAgp8lisNf+UA1qCyT2gcNeWI=;
        b=Y/Ab/Ax541y0CubQuaFmA33GiVnMzzab2a5cDc7Ka3HN8rmFzbuiuwh0B+SkAyNNOW
         l2m+hwZIwqYC/8XN/ht/5arFW2eqQFAQO+CVkSugg+n1B9y6sfllkSgLT2v9Rm4h3LyG
         gPn7uYtiYnkRRbGfG8rsrcAKrGlpFyJrXBXM0D6y6cEzOlWJrHB5yBlZ/vro4F3Sjn8q
         fNoTPf885MPSJhhFxK954i2EMusqs96niJYfU7LULuNMKvEFPTV5TGKDN7TjSw74IfJY
         FWsMV4TPh8EKz56MYLeROpNGCyAwQq7uIVHWcYCVgk0AQAqgXYsfeAgXtgO1y0b0uWSD
         b5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b1fkl6MedCWCBxrN5ydAgp8lisNf+UA1qCyT2gcNeWI=;
        b=B95KtEQFheYJmfIVXA7o7Cas3INZTJNMx6P2GakTXxPx9jNTMBYAPRL6YNku2o8ANJ
         AZ5pna4EtminhjxSvzJQZsASvhOHk6GW4MRcngHA+/0PtLuZtntm8+UjpQxhxkCUUhgl
         Se0wrIasgfjEXIGkRCp8aqcgBq9EHAJRWf+RYB6gQgdsR6bmiPPKLdcGgwpt+9SumIzI
         Nidb3dNhWtJfjuaS2k1xPAu8MF5V12PRVjY/ga5kwN+JnDZp6ErMBPUJpw8hiXVKNZUK
         NuMJZ5x3La049LyMTu9U1ndOpDWp+kQ3k3nYS36ugjZNTaHw0ZzftlMx+6f7xZ8NFxUS
         dJzQ==
X-Gm-Message-State: AD7BkJI4feTlCNp4fWrngF6FMhMATMQWq6hI7MTosRqkW4B4smzxYf70rodCSJaV3xRrxw==
X-Received: by 10.28.91.142 with SMTP id p136mr15016101wmb.76.1457374134442;
        Mon, 07 Mar 2016 10:08:54 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.163])
        by smtp.gmail.com with ESMTPSA id m63sm14965657wmc.3.2016.03.07.10.08.53
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 10:08:53 -0800 (PST)
Date: Mon, 7 Mar 2016 19:08:51 +0100
From: Laura Garcia <nevola@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160307180850.GB22851@sonyv>
References: <20160306222308.GA20846@sonyv>
 <20160307171119.GA29573@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307171119.GA29573@salvia>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 07, 2016 at 06:11:19PM +0100, Pablo Neira Ayuso wrote:
> On Sun, Mar 06, 2016 at 11:23:10PM +0100, Laura Garcia Liebana wrote:
> > Add translation for icmpv6 to nftables. Not supported types in nftables
> > are: no-route, communication-prohibited, beyond-scope,
> > address-unreachable, port-unreachable, failed-policy, reject-route,
> > ttl-zero-during-transit, ttl-zero-during-reassembly, bad-header,
> > unknown-header-type and unknown-option.
> > 
> > Examples:
> > 
> > $ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type 1 -j LOG
> > nft add rule ip6 filter INPUT icmpv6 type destination-unreachable counter log level warn
> > 
> > $ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type neighbour-advertisement -j LOG
> > nft add rule ip6 filter INPUT icmpv6 type nd-neighbor-advert counter log level warn
> > 
> > $ ip6tables-translate -t filter -A INPUT -m icmp6 ! --icmpv6-type packet-too-big -j LOG
> > nft add rule ip6 filter INPUT icmpv6 type != packet-too-big counter log level warn
> > 
> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> > v2:
> > 	- Detection of not supported types in nftables, as Shivani suggested.
> > 
> >  extensions/libip6t_icmp6.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> > 
> > diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
> > index e183ce6..70f9c21 100644
> > --- a/extensions/libip6t_icmp6.c
> > +++ b/extensions/libip6t_icmp6.c
> > @@ -222,6 +222,58 @@ static void icmp6_save(const void *ip, const struct xt_entry_match *match)
> >  		printf("/%u", icmpv6->code[0]);
> >  }
> >  
> > +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> > +			     unsigned int code_min, unsigned int code_max)
> > +{
> > +	unsigned int i;
> > +
> > +	if (code_min == code_max)
> > +		return 0;
> > +
> > +	switch (icmptype) {
> > +	case 133:
> > +		xt_xlate_add(xl, "nd-router-solicit");
> > +		break;
> > +	case 134:
> > +		xt_xlate_add(xl, "nd-router-advert");
> > +		break;
> > +	case 135:
> > +		xt_xlate_add(xl, "nd-neighbor-solicit");
> > +		break;
> > +	case 136:
> > +		xt_xlate_add(xl, "nd-neighbor-advert");
> > +		break;
> > +	case 137:
> > +		xt_xlate_add(xl, "nd-redirect");
> > +		break;
> 
> Could you generalize this code a bit?
> 
> #define XT_ICMPV6_TYPE(type)    (ND_ROUTER_SOLICIT - type)
> 
> static const char *icmp6_type_xlate_array[] = {
>         [XT_ICMPV6_TYPE(ND_ROUTER_SOLICIT))]    = "nd-router-solicit",
>         [XT_ICMPV6_TYPE(ND_ROUTER_ADVERT)]      = "nd-router-advert",
>         ...
>         [XT_ICMPV6_TYPE(ND_REDIRECT)]           = "nd-redirect",
> };
> 
> static const char *icmp6_type_xlate(unsigned int type)
> {
>         unsigned type
> 
>         if (type < ND_ROUTER_SOLICIT || type > ND_REDIRECT))
>                 return NULL;
> 
>         return icmp6_type_xlate_array[XT_ICMPV6_TYPE(type)];
> }
> 
> Then, from type_xlate_print() use this icmp6_type_xlate().
> 

Ok

> > +	default:
> > +		for (i = 0; ARRAY_SIZE(icmpv6_codes); ++i)
>                                                            ^
> BTW, missing opening bracket here
> 
> > +			if (icmpv6_codes[i].type == icmptype &&
> > +			    icmpv6_codes[i].code_min == code_min &&
> > +			    icmpv6_codes[i].code_max == code_max)
> > +				break;
> > +			xt_xlate_add(xl, icmpv6_codes[i].name);
> 
> and closing bracket here '}'
> 
> BTW, do you really need this code now that we just skip when we get an
> icmp code?
> 

Same thing here, the brackets are not needed. It's only a indentation
problem in the function xt_xlate_add.

This piece is not for icmp codes, but icmp types. We're ensuring that
at the begining of the function:

+   if (code_min == code_max)
+           return 0;


> > +	}
> > +
> > +	return 1;
> > +}
> > +
> > +static int icmp6_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
> > +		       int numeric)
> > +{
> > +	const struct ip6t_icmp *info = (struct ip6t_icmp *)match->data;
> > +
> > +	xt_xlate_add(xl, "icmpv6 type%s ",
> > +		     (info->invflags & IP6T_ICMP_INV) ? " !=" : "");
> > +
> > +	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
> > +		return 0;
> > +
> > +	xt_xlate_add(xl, " ");
> > +
> > +	return 1;
> > +}
> > +
> >  static struct xtables_match icmp6_mt6_reg = {
> >  	.name 		= "icmp6",
> >  	.version 	= XTABLES_VERSION,
> > @@ -234,6 +286,7 @@ static struct xtables_match icmp6_mt6_reg = {
> >  	.save		= icmp6_save,
> >  	.x6_parse	= icmp6_parse,
> >  	.x6_options	= icmp6_opts,
> > +	.xlate		= icmp6_xlate,
> >  };
> >  
> >  void _init(void)
> > -- 
> > 2.7.0
> > 

