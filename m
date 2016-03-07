X-GM-THRID: 6258660898055913472
X-Received: by 10.107.165.213 with SMTP id o204mr18127610ioe.10.1457374248394;
        Mon, 07 Mar 2016 10:10:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls998386ioo.92.gmail; Mon, 07 Mar
 2016 10:10:47 -0800 (PST)
X-Received: by 10.107.41.79 with SMTP id p76mr18446864iop.21.1457374247935;
        Mon, 07 Mar 2016 10:10:47 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id a12si662318ign.0.2016.03.07.10.10.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:10:47 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id rt7so112124692obb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 10:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fwpJ2NPualRm4cizKbPDCjyaBVqrOuSEd2I/MpRKJ7s=;
        b=KLQsviFv8KyGwWXgUbzU9XOjRDqNFw+giFvvW0vuAq6pMuSRArJysmaemoYHgCKeIX
         Sl6gSiyq8hYRRo/MRnmQwgGLXu4BAaRKfKexa0e2ZANFgqq2Q+/xf4Pt4SctE5CLXKAC
         sOs209yV9koB3p9xy4cLaouU4HGqSPfI2kucr0OU0X7Wou34AmCdjt8rpSWEpriuAklX
         okojqnq8+Ro975YHlq1QW8WeJNLiMl8p8zNqHSOGIZ+kWnAQ4mwrspSyacPJdGvq+WlO
         KeMi3Wk3ZzfsbhqpBk48GUY9fAG/azhc4TL60LjqzGETD8k+G45bj/5VbUsb7YbBiZBp
         2sxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fwpJ2NPualRm4cizKbPDCjyaBVqrOuSEd2I/MpRKJ7s=;
        b=lCauC0ud4We2B/yzJ1Qt3eG/rqQTMlUS/ilEcEI5H6dmGQ78qV9RzGpoy6m6DKZPwU
         UNUBQd+7eVOJ7OFhEonuII41OQNnmbM+fhZyhXvvNtuYuWq+EBuxrbIiUNrJAYuHl2z2
         d+F9JhoKnTNb436NoH+pIPXRXRfeLQobOfxUK2wSniOapbakg4rjAix0/+bAqu7D9e2p
         zFxaSX9aqhnNHJMB8G4AeS33l5kkK1wcDfMHF6hLyFJmeQ40sBCZUlYDOHnXNu4zJb+g
         n9Fd9lcLNdwdLHYva9duxNmZAWkhv9TUgUIYEOp62fosRw7p6Oeo33vTfDDNAA8Y0bmt
         VUSQ==
X-Gm-Message-State: AD7BkJK8CeoLm8ORseHVb9znJ7mQj+DTGaXqoDgU0AX1VKKcS/qUqx7PsyS1Ez/DoKX/RtgZTSe9aXma4MJZFg==
X-Received: by 10.60.96.164 with SMTP id dt4mr14296475oeb.74.1457374247734;
 Mon, 07 Mar 2016 10:10:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.60.159.200 with HTTP; Mon, 7 Mar 2016 10:10:08 -0800 (PST)
In-Reply-To: <20160307180445.GA22851@sonyv>
References: <20160306222442.GA20945@sonyv> <20160307171408.GB29573@salvia> <20160307180445.GA22851@sonyv>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Mon, 7 Mar 2016 23:40:08 +0530
Message-ID: <CAKHNQQFQvt1j_+HW659VsD3TVJkaBV4q29MyrN_HHkz-NYmDGw@mail.gmail.com>
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
To: Laura Garcia <nevola@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, 
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 7, 2016 at 11:34 PM, Laura Garcia <nevola@gmail.com> wrote:
> On Mon, Mar 07, 2016 at 06:14:08PM +0100, Pablo Neira Ayuso wrote:
>> On Sun, Mar 06, 2016 at 11:24:44PM +0100, Laura Garcia Liebana wrote:
>> > Add translation for icmp to nftables. Not supported types in nftables
>> > are: any, network-unreachable, host-unreachable, protocol-unreachable,
>> > port-unreachable, fragmentation-needed, source-route-failed,
>> > network-unknown, host-unknown, network-prohibited, host-prohibited,
>> > TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
>> > host-precedence-violation, precedence-cutoff, network-redirect,
>> > host-redirect, TOS-network-redirect, TOS-host-redirect,
>> > router-advertisement, router-solicitation, ttl-zero-during-transit,
>> > ttl-zero-during-reassembly, ip-header-bad and required-option-missing.
>> >
>> > Examples:
>> >
>> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j LOG
>> > nft add rule ip filter INPUT icmp type echo-reply counter log level warn
>> >
>> > $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
>> > nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
>> >
>> > $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
>> > nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn
>> >
>> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
>> > ---
>> > v2:
>> >     - Detection of not supported types in nftables, as Shivani suggested.
>> >
>> >  extensions/libipt_icmp.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
>> >  1 file changed, 45 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
>> > index 666e7da..89eb36e 100644
>> > --- a/extensions/libipt_icmp.c
>> > +++ b/extensions/libipt_icmp.c
>> > @@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
>> >  }
>> >
>> >  static void icmp_print(const void *ip, const struct xt_entry_match *match,
>> > -                       int numeric)
>> > +                  int numeric)
>> >  {
>> >     const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
>> >
>> > @@ -249,6 +249,49 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>> >     }
>> >  }
>> >
>> > +static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
>> > +                        unsigned int code_min, unsigned int code_max)
>> > +{
>> > +   unsigned int i;
>> > +
>> > +   if (code_min == code_max)
>> > +           return 0;
>> > +
>> > +   switch (icmptype) {
>> > +   case 0xFF:
>> > +   case 9:
>> > +   case 10:
>>
>> Why are we skipping these here?
>>
>
> These are types which doesn't seem to be supported by nftables: any,
> router-advertisement and router-solicitation, so in this case we would
> return a 0 in order to indicate that the translation is not supported.
>
>> > +           return 0;
>> > +   default:
>> > +           for (i = 0; ARRAY_SIZE(icmp_codes); ++i)
>>
>> Missing bracket here.
>>
>> > +                   if (icmp_codes[i].type == icmptype &&
>> > +                       icmp_codes[i].code_min == code_min &&
>> > +                       icmp_codes[i].code_max == code_max)
>> > +                           break;
>> > +
>> > +                   xt_xlate_add(xl, icmp_codes[i].name);
>>
>> Same thing. But as I said in the previous patch, are you sure you need
>> this code snippet above at this stage?
>>
>
> The brackets are not missing here, sorry for the confusion. Inside the for
> statement we only have the condition. Just the xt_late_add function indentation is not correct.
>
> This code it's needed in order to translate from types numbers to type
> names, but we're ensuring after that which types names are similar in
> iptables and nftables. For example, with this code we get:
>
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn
>
> Without this code:
>
> $ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
> nft add rule ip filter INPUT icmp type 3 counter log level warn
>
This looks good too. nftables is anyway going to convert it to its
name type (if available). See how this above rule shows up in the
chain:

table ip filter {
    chain INPUT {
        type filter hook input priority 0; policy accept;
        icmp type destination-unreachable counter packets 0 bytes 0 log
    }
}

But, anyway, wait for Pablo's comments about this.

>
>> > +   }
>> > +
>> > +   return 1;
>> > +}
>> > +
>> > +static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
>> > +                  int numeric)
>> > +{
>> > +   const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
>> > +
>> > +   xt_xlate_add(xl, "icmp type%s ",
>> > +                (info->invflags & IPT_ICMP_INV) ? " !=" : "");
>> > +
>> > +   if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
>> > +           return 0;
>> > +
>> > +   xt_xlate_add(xl, " ");
>> > +
>> > +   return 1;
>> > +}
>> > +
>> > +
>> >  static struct xtables_match icmp_mt_reg = {
>> >     .name           = "icmp",
>> >     .version        = XTABLES_VERSION,
>> > @@ -261,6 +304,7 @@ static struct xtables_match icmp_mt_reg = {
>> >     .save           = icmp_save,
>> >     .x6_parse       = icmp_parse,
>> >     .x6_options     = icmp_opts,
>> > +   .xlate          = icmp_xlate,
>> >  };
>> >
>> >  void _init(void)
>> > --
>> > 2.7.0
>> >

