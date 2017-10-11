X-GM-THRID: 6472949369841647616
X-Received: by 10.176.4.98 with SMTP id 89mr431338uav.69.1507740644485;
        Wed, 11 Oct 2017 09:50:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.91.4 with SMTP id u4ls540964uae.4.gmail; Wed, 11 Oct 2017
 09:50:43 -0700 (PDT)
X-Received: by 10.176.80.213 with SMTP id d21mr5655442uaa.75.1507740643590;
        Wed, 11 Oct 2017 09:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507740643; cv=none;
        d=google.com; s=arc-20160816;
        b=jCIeSJxKf4s9wYztstZ+RHkny/+bbgYByz327kZHAojjZCcTOmQRInKQXnVXvsphFW
         Bi78IPIirrzSrKkQJ0MpWZNmh46MWDa8InflIpX5VTb8TfUwILUKdROGWWFzQw4K4aDf
         mlCxk3N7eRevdVnsCne4K+Fxuc/0RrKzHxJBsntyDnf5+cxsWzxKafkzmRjYA0eXeGnV
         b2xsqMH8VV5M6mE/qqAmBdvrkmHNt41VEKD0lX0KCKgHl5idqUGnj21xOvvM9eQue/xW
         3Zh7Fn5jskz5aPGQnntIbDgpdGo/Gb5ZR2jSZjgTb1oPaIwCzussjFtAbbPwXt4J2tEq
         +XKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=trZ0FiXjknRjOaVjZxzHIJpitwknBfyCF7ULnVtRdlo=;
        b=jaulSFQo9H55FlvXANaxi18Lf0SxG/fD7uxxdBuQrooFNp2C75zmoWcg+RODTEG7qw
         KxzryG6DYzygnelZID/+I2RuTX1kxb5GCYhdOII4+p9sEvCaiQx7hHopY3cQpOAovXwk
         l3r7s8wDFwDwzMWHFS1JURVWO+zZ4Rg0iLZVzL+vhh0rflT03+nY0wF6ge5GMidgOkDU
         S5p3euJ/+7VKZ3I387D4ERmlWKrEgO610HWzISt0fpD1goiYrQouukz6YX9C51bOTw+O
         23AJ4TN+34zThGnsm1kP0zQP4odu/a0klKbNvPdWsp9FOuEJeABf26wJwvfgjXlktzOl
         1ohQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvTpUhMw;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id g83si841069vki.9.2017.10.11.09.50.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 09:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvTpUhMw;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id b5so678559vkf.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 09:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=trZ0FiXjknRjOaVjZxzHIJpitwknBfyCF7ULnVtRdlo=;
        b=HvTpUhMwNxrQmbBYvznTXOqWTjyALMUSLf+7IBegiGFahTlyWQ8bDEb+15YSs1iAOO
         UpzXpOQBPeyskP+L9Aoqbneb63ZanTlG3QrsJRHiDrfRX/vsJ2Uqstk7OWWCIbLXo/Wt
         /tL4ilq5AMpmiL5asLZFxXAgZynFSC2GlQpt4ShFSUcR0JAnhLiULXuGPNyYBINVsBy3
         AhKuFPtXjhkX5sbqMt0VsbpK4DaRiWj05H1E7lo8t8ksIfgbCU27QPX18wIeIqGeUjXS
         Tcxut3kezNDavq/w6TXmmizjZhb9bpZmx+mZxDilEVT6D8vJCUpZTGhyVHSPGp0c9zh1
         SrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=trZ0FiXjknRjOaVjZxzHIJpitwknBfyCF7ULnVtRdlo=;
        b=KUICi0Ftm/2QBX01KOEZe9iOTCchW6ZFXcZGNuhYDyrWx9r7ihQxmUfl+fgt2h6DM1
         z/NV3+70lprqYZZ8QtP805m2t0QtBfCyQNK9KY/SqCZR8hOeaLYlyRVcvYjmTsVutvFx
         a+AcslG+8Cwr/E2hfn/C+gZWiR1B+tH3dlwHhTUa+OLxxFO5uy2NSNbxdPFq/CRtLajt
         I3dDgkwwqMvcF8NAzUrafGYaFCSt9LqpVmcH7CN9DAIsiU+wC4Pa9m83ZKLXo5An73pb
         3otWPKKCv9AC/R4iKYwTn/baAO49B88KZI+jPD/9xVqitl7R5GFMJiZNjXTVGiLd15ZG
         54rg==
X-Gm-Message-State: AMCzsaXhHcOs7eqqSdGtlAyPvE6UX9AYoMxzshW6OPJYC/yLCOl1eJP5
	oBFZqJzOdumigWvv909vw0KLtCs6Cl5RoPlBWZY=
X-Google-Smtp-Source: AOwi7QAylJ2LYdWUkvzgPgVpIfmZSyyBA9mlvQ+P9HBgKj+OG+k6cRXzHu12vbSGwn8Yhlx0SuWJSO7RBbtA4GJTHHk=
X-Received: by 10.31.165.11 with SMTP id o11mr198938vke.103.1507740643173;
 Wed, 11 Oct 2017 09:50:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Wed, 11 Oct 2017 09:50:42 -0700 (PDT)
In-Reply-To: <20171006073659.10302-1-harshasharmaiitr@gmail.com>
References: <20171006073659.10302-1-harshasharmaiitr@gmail.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Wed, 11 Oct 2017 22:20:42 +0530
Message-ID: <CANMOCy1XzJsgYxYyE-RyOEQ8HGmh5F+PW2=FLeauzdgZd+Kb_g@mail.gmail.com>
Subject: Re: [PATCH v2] nftables: Add support for reserved header and addrs
 for routing header type 0
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Harsha Sharma <harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 6, 2017 at 1:06 PM, Harsha Sharma
<harshasharmaiitr@gmail.com> wrote:
> Add support for IPV6 routing header type 0 reserved field and addresses
> with corresponding tests
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> For struct exthdr_rt0, I have specified type to be IPPROTO_ROUTING
> due to which when exthdr_init_raw is called in exthdr_find_template
> which initialises expr->exthdr.desc to exthdr_protocols[type] and
> that will be $exthdr_rt and not &exthdr_rt0, when testing the
> testcases this warning comes 'rt0 rserved 2' mismatches 'rt unknown
> 0x2' and same for the addrs. Fot this one possible way is to define
> IPPROTO_ROUTING0 in header file in /usr/include/. Can anyone please
> suggest what will be the best way to fix these warnings ?
> I'll add more testcases once these warnings are fixed.
> Thanks.
>
> Changes in v2:
>  -Changed log message
>  -Added tests and removed errors but warning is still there
>
>  include/exthdr.h           |  2 ++
>  src/exthdr.c               |  4 ++--
>  src/parser_bison.y         |  6 ++----
>  tests/py/ip6/rt0.t         |  4 ++++
>  tests/py/ip6/rt0.t.payload | 14 ++++++++++++++
>  5 files changed, 24 insertions(+), 6 deletions(-)
>
> diff --git a/include/exthdr.h b/include/exthdr.h
> index 97ccc38..3930108 100644
> --- a/include/exthdr.h
> +++ b/include/exthdr.h
> @@ -14,6 +14,8 @@
>  struct exthdr_desc {
>         const char                      *name;
>         uint8_t                         type;
> +       unsigned int                    protocol_key;
> +       const struct exthdr_desc        *protocols[3];
>         struct proto_hdr_template       templates[10];
>  };
>
> diff --git a/src/exthdr.c b/src/exthdr.c
> index ac3e163..ddd0018 100644
> --- a/src/exthdr.c
> +++ b/src/exthdr.c
> @@ -246,6 +246,8 @@ const struct exthdr_desc exthdr_rt2 = {
>         HDR_TEMPLATE(__name, __dtype, struct ip6_rthdr0, __member)
>
>  const struct exthdr_desc exthdr_rt0 = {
> +       .name           = "rt0",
> +       .type           = IPPROTO_ROUTING,
>         .templates      = {
>                 [RT0HDR_RESERVED]       = RT0_FIELD("reserved", ip6r0_reserved, &integer_type),
>                 [RT0HDR_ADDR_1]         = RT0_FIELD("addr[1]", ip6r0_addr[0], &ip6addr_type),
> @@ -260,13 +262,11 @@ const struct exthdr_desc exthdr_rt0 = {
>  const struct exthdr_desc exthdr_rt = {
>         .name           = "rt",
>         .type           = IPPROTO_ROUTING,
> -#if 0
>         .protocol_key   = RTHDR_TYPE,
>         .protocols      = {
>                 [0]     = &exthdr_rt0,
>                 [2]     = &exthdr_rt2,
>         },
> -#endif
>         .templates      = {
>                 [RTHDR_NEXTHDR]         = RT_FIELD("nexthdr", ip6r_nxt, &inet_protocol_type),
>                 [RTHDR_HDRLENGTH]       = RT_FIELD("hdrlength", ip6r_len, &integer_type),
> diff --git a/src/parser_bison.y b/src/parser_bison.y
> index 7016f5b..7c4e775 100644
> --- a/src/parser_bison.y
> +++ b/src/parser_bison.y
> @@ -3697,10 +3697,8 @@ rt0_hdr_expr             :       RT0     rt0_hdr_field
>                         }
>                         ;
>
> -rt0_hdr_field          :       ADDR    '['     NUM     ']'
> -                       {
> -                               $$ = RT0HDR_ADDR_1 + $3 - 1;
> -                       }
> +rt0_hdr_field          :       ADDR'['NUM']'   { $$ = RT0HDR_ADDR_1 + $3 - 1;}
> +                       |       RESERVED        { $$ = RT0HDR_RESERVED; }
>                         ;
>
>  rt2_hdr_expr           :       RT2     rt2_hdr_field
> diff --git a/tests/py/ip6/rt0.t b/tests/py/ip6/rt0.t
> index 1d50a89..ebbae75 100644
> --- a/tests/py/ip6/rt0.t
> +++ b/tests/py/ip6/rt0.t
> @@ -4,3 +4,7 @@
>
>  rt nexthop 192.168.0.1;fail
>  rt nexthop fd00::1;ok;rt ip6 nexthop fd00::1
> +
> +rt0 reserved 2;ok
> +rt0 addr [1] 2001:db8:0:1:1:1:1:1;ok
> +rt0 addr [2] 2001:db8:0:0:0:0:1:1;ok
> diff --git a/tests/py/ip6/rt0.t.payload b/tests/py/ip6/rt0.t.payload
> index 464b7f2..69577e7 100644
> --- a/tests/py/ip6/rt0.t.payload
> +++ b/tests/py/ip6/rt0.t.payload
> @@ -3,3 +3,17 @@ ip6 test-ip6 output
>    [ rt load nexthop6 => reg 1 ]
>    [ cmp eq reg 1 0x000000fd 0x00000000 0x00000000 0x01000000 ]
>
> +# rt0 reserved 2
> +ip6 test-ip6 output
> +  [ exthdr load 1b @ 43 + 4 => reg 1 ]
> +  [ cmp eq reg 1 0x00000002 ]
> +
> +# rt0 addr [1] 2001:db8:0:1:1:1:1:1
> +ip6 test-ip6 output
> +  [ exthdr load 16b @ 43 + 8 => reg 1 ]
> +  [ cmp eq reg 1 0xb80d0120 0x01000000 0x01000100 0x01000100 ]
> +
> +# rt0 addr [2] 2001:db8:0:0:0:0:1:1
> +ip6 test-ip6 output
> +  [ exthdr load 16b @ 43 + 8 => reg 1 ]
> +  [ cmp eq reg 1 0xb80d0120 0x00000000 0x00000000 0x01000100 ]

Hi,
Any updates on this ?
Thanks for your time.

Regards,
Harsha Sharma

> --
> 2.11.0
>

