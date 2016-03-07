X-GM-THRID: 6258660898055913472
X-Received: by 10.112.168.201 with SMTP id zy9mr1812303lbb.23.1457373890826;
        Mon, 07 Mar 2016 10:04:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.209 with SMTP id s200ls321837lfs.98.gmail; Mon, 07 Mar
 2016 10:04:50 -0800 (PST)
X-Received: by 10.112.158.138 with SMTP id wu10mr1814858lbb.11.1457373890268;
        Mon, 07 Mar 2016 10:04:50 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id v68si407855wmd.1.2016.03.07.10.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:04:50 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id p65so118982227wmp.1
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 10:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6k/+9p8KydRdYo6h4hJJ6rgvBiLtkdAWLe4ICeFk834=;
        b=WjHuy919OLc1gOOkwD5t2se8UbP97wkKA+UrTodn+/mWcnE8qCqnTH6N5/1K2edv5q
         BMVpnQ/HAaUCwbAtlQo28WlWQKbOAom8LcI/i20zQMRqCnII6OAkIm0+i6SY8ouLWLBq
         mNX289JOvlZ/jhDbcwIZjTagmd16lJ35yxaWNMI1EcDmefk2TuVJAxvlacuSac4vMbZm
         a9rf8fm279+AHj7TeaX1+CXyZzxxy147ariaGaXGi04224OqP39caZR3R+Ls1IBMq5s3
         8xgHN0SijYiJVft2EZDfusboYiQ995MXkQrQbin7wmf1iC5ZqCt215PcNv9QEL1xOrKp
         AYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6k/+9p8KydRdYo6h4hJJ6rgvBiLtkdAWLe4ICeFk834=;
        b=hVDYwt2eOpHlirbVMy/boRo+RR/QD5nG16qK/4i34OnffZSyydGnrhIhUxw7eK3DMM
         Fn+QK6XjVG8ENkLw5bivt0mfinyy8NcdmoBhvPweEZQn7Ce7VnbG4tIIhsrq0Jhfz5vx
         0+R7bJd88IG/3AFDB1RnmJrvY6xoLnNXnXT1zWV5Q+iZk9QpGLnYbZWFyqvarbe5TVf6
         ifPWKoelj2xuhgWzplUtMd0Q9m2ZYrl8A5768CzylQnmT0VqnFoGx7qjkBLJ7+ZnFilN
         f0VBbrj7PJLSF6l2fjuLxp/bGsmETfp/3QKOF1Uie64WSHXfj72S2L1RCXzzNtKmg76b
         zkOA==
X-Gm-Message-State: AD7BkJLmsA0CbQ+ckhvByCnZKKy5dx+7pz21hrGus8zhJeW1AGdDd6r4+QnJLMzXt3qYUA==
X-Received: by 10.194.185.237 with SMTP id ff13mr26692195wjc.129.1457373890075;
        Mon, 07 Mar 2016 10:04:50 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.163])
        by smtp.gmail.com with ESMTPSA id gg7sm19125636wjd.10.2016.03.07.10.04.48
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 10:04:49 -0800 (PST)
Date: Mon, 7 Mar 2016 19:04:46 +0100
From: Laura Garcia <nevola@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307180445.GA22851@sonyv>
References: <20160306222442.GA20945@sonyv>
 <20160307171408.GB29573@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307171408.GB29573@salvia>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 07, 2016 at 06:14:08PM +0100, Pablo Neira Ayuso wrote:
> On Sun, Mar 06, 2016 at 11:24:44PM +0100, Laura Garcia Liebana wrote:
> > Add translation for icmp to nftables. Not supported types in nftables
> > are: any, network-unreachable, host-unreachable, protocol-unreachable,
> > port-unreachable, fragmentation-needed, source-route-failed,
> > network-unknown, host-unknown, network-prohibited, host-prohibited,
> > TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
> > host-precedence-violation, precedence-cutoff, network-redirect,
> > host-redirect, TOS-network-redirect, TOS-host-redirect,
> > router-advertisement, router-solicitation, ttl-zero-during-transit,
> > ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
> > 
> > Examples:
> > 
> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j LOG
> > nft add rule ip filter INPUT icmp type echo-reply counter log level warn
> > 
> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> > nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
> > 
> > $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
> > nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn
> > 
> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> > v2:
> > 	- Detection of not supported types in nftables, as Shivani suggested.
> > 
> >  extensions/libipt_icmp.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 45 insertions(+), 1 deletion(-)
> > 
> > diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
> > index 666e7da..89eb36e 100644
> > --- a/extensions/libipt_icmp.c
> > +++ b/extensions/libipt_icmp.c
> > @@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
> >  }
> >  
> >  static void icmp_print(const void *ip, const struct xt_entry_match *match,
> > -                       int numeric)
> > +		       int numeric)
> >  {
> >  	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
> >  
> > @@ -249,6 +249,49 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
> >  	}
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
> > +	case 0xFF:
> > +	case 9:
> > +	case 10:
> 
> Why are we skipping these here?
> 

These are types which doesn't seem to be supported by nftables: any,
router-advertisement and router-solicitation, so in this case we would
return a 0 in order to indicate that the translation is not supported.

> > +		return 0;
> > +	default:
> > +		for (i = 0; ARRAY_SIZE(icmp_codes); ++i)
> 
> Missing bracket here.
> 
> > +			if (icmp_codes[i].type == icmptype &&
> > +			    icmp_codes[i].code_min == code_min &&
> > +			    icmp_codes[i].code_max == code_max)
> > +				break;
> > +
> > +			xt_xlate_add(xl, icmp_codes[i].name);
> 
> Same thing. But as I said in the previous patch, are you sure you need
> this code snippet above at this stage?
> 

The brackets are not missing here, sorry for the confusion. Inside the for
statement we only have the condition. Just the xt_late_add function indentation is not correct.

This code it's needed in order to translate from types numbers to type
names, but we're ensuring after that which types names are similar in
iptables and nftables. For example, with this code we get:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn

Without this code:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
nft add rule ip filter INPUT icmp type 3 counter log level warn


> > +	}
> > +
> > +	return 1;
> > +}
> > +
> > +static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
> > +		       int numeric)
> > +{
> > +	const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
> > +
> > +	xt_xlate_add(xl, "icmp type%s ",
> > +		     (info->invflags & IPT_ICMP_INV) ? " !=" : "");
> > +
> > +	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
> > +		return 0;
> > +
> > +	xt_xlate_add(xl, " ");
> > +
> > +	return 1;
> > +}
> > +
> > +
> >  static struct xtables_match icmp_mt_reg = {
> >  	.name		= "icmp",
> >  	.version	= XTABLES_VERSION,
> > @@ -261,6 +304,7 @@ static struct xtables_match icmp_mt_reg = {
> >  	.save		= icmp_save,
> >  	.x6_parse	= icmp_parse,
> >  	.x6_options	= icmp_opts,
> > +	.xlate		= icmp_xlate,
> >  };
> >  
> >  void _init(void)
> > -- 
> > 2.7.0
> > 

