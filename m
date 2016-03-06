X-GM-THRID: 6258660898055913472
X-Received: by 10.129.58.16 with SMTP id h16mr12176562ywa.56.1457258516173;
        Sun, 06 Mar 2016 02:01:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.8 with SMTP id 8ls1245042qgg.12.gmail; Sun, 06 Mar 2016
 02:01:55 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr12686264ywd.43.1457258515745;
        Sun, 06 Mar 2016 02:01:55 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by gmr-mx.google.com with ESMTPS id k15si443221igt.3.2016.03.06.02.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 02:01:55 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id r187so63325041oih.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 02:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sb6XRVMrJkM/jbbyN5vUCPG2P23FOsd//BIfI1ReJJM=;
        b=uJkyAwJCiosz90rZGb2bVWD0+SmQ4b0JRoeDKBGH7CRc9HoSpZs37jpNVUryRNXX0I
         +yOJCF1kiOxfADIHqfFso1DhFeMv/3CwtWZeazHkZfPgJAmcyJ8yDzgwc7jqEoWKF+l2
         bksKBcP1EU1LSt1qR9phOCVIBIRlRmCD5drad2elZgeRU0Tqbgj0UAU6pBONUtR7gKc/
         5IOPqkg3vjUEedNOwnmTB8Mci09BchQ3hM/KGJFIF2ek1bZBPa1NXHgtBXgAMY9PWY4x
         j3IetW2o7Gl6jPP9SN2ZKSriK1U4fMPrKLbbGL6T5N0oH71EzJeeyKzieDmr2h/Y/Ved
         3ufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sb6XRVMrJkM/jbbyN5vUCPG2P23FOsd//BIfI1ReJJM=;
        b=SZjGOQ2GACEcNrFWFX2nriqBwnme8MNdiuPtFDm0EtfSk1Q2YWosmlyabJ0QlCHYFZ
         UMCYdfU1H1RtiVl5UN/n18zX8NBBkZEKaAU5ccW8gan3Xf9x2H4T8V62VnWZEAPngqJj
         FsAjVCUtLAukW9Jx0MfS6kA4Su2SgMVD4A8UnRiNOJFUT0lk1kyF/PS6PaTwYL+/tjwA
         JBC/DN8Zlhn//1IDLhSrS4dGaCjT0QVE4+2vaRoBE/nO0BG8O2f8ZNGT/Bt/Ihm/3g/j
         ruYD9cnl06QJdzi2YlSVcUz1Xtlv2xxNJQ9aELpnPjc5Y7zWLK0XZngAdVsf6GqxtxgO
         R+DA==
X-Gm-Message-State: AD7BkJJk0EOuIs0cor4h6Z5GwNwJjX9Eu0YvoCHyj2Hd2UwJgEZS362kBEz6X+2mwLyyZLk7TH7j6KTQCuPopw==
X-Received: by 10.202.69.134 with SMTP id s128mr8999489oia.97.1457258515376;
 Sun, 06 Mar 2016 02:01:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.60.159.200 with HTTP; Sun, 6 Mar 2016 02:01:15 -0800 (PST)
In-Reply-To: <20160305200039.GA14269@sonyv>
References: <20160305200039.GA14269@sonyv>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Sun, 6 Mar 2016 15:31:15 +0530
Message-ID: <CAKHNQQE7S-x63bez0qdhwujESbwqPHSftc_aMXHkHh=Y5amrZA@mail.gmail.com>
Subject: Re: [PATCH] extensions: libipt_icmp: Add translation to nft
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 6, 2016 at 1:30 AM, Laura Garcia Liebana <nevola@gmail.com> wrote:
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

Hi Laura,

There are some icmp types that nftables does not support, have you
tried adding up rules corresponding to all the packet types?

$ sudo nft add table filter
$ sudo nft add chain filter INPUT { type filter hook input priority 0\;}
$ sudo <your generated rule goes here>

Please consider finding out such packet types and mention about them
in commit message.
Same for icmpv6.

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
> +                      int numeric)
>  {
>         const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
>
> @@ -249,6 +249,36 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
>         }
>  }
>
> +static void type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
> +                            unsigned int code_min, unsigned int code_max)
> +{
> +       unsigned int i;
> +
> +       for (i = 0; ARRAY_SIZE(icmp_codes); i++)

Also, here you are using the array icmp_codes, this will give out the
same packet names as iptables. But, some packet names are different in
nftables. May be not in case of icmp but in case of icmp6. Please have
a look at this.

Thanks.

> +               if (icmp_codes[i].type == icmptype &&
> +                   icmp_codes[i].code_min == code_min &&
> +                   icmp_codes[i].code_max == code_max)
> +                       break;
> +
> +       xt_xlate_add(xl, icmp_codes[i].name);
> +}
> +
> +static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
> +                      int numeric)
> +{
> +       const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
> +
> +       xt_xlate_add(xl, "icmp type%s ",
> +                    (info->invflags & IPT_ICMP_INV) ? " !=" : "");
> +
> +       type_xlate_print(xl, info->type, info->code[0], info->code[1]);
> +
> +       xt_xlate_add(xl, " ");
> +
> +       return 1;
> +}
> +
> +
>  static struct xtables_match icmp_mt_reg = {
>         .name           = "icmp",
>         .version        = XTABLES_VERSION,
> @@ -261,6 +291,7 @@ static struct xtables_match icmp_mt_reg = {
>         .save           = icmp_save,
>         .x6_parse       = icmp_parse,
>         .x6_options     = icmp_opts,
> +       .xlate          = icmp_xlate,
>  };
>
>  void _init(void)
> --
> 2.7.0
>

