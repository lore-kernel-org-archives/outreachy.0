X-GM-THRID: 6812856909283983360
X-Received: by 2002:a05:6402:2057:: with SMTP id bc23mr2938894edb.5.1586278997449;
        Tue, 07 Apr 2020 10:03:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:d098:: with SMTP id v24ls3192939edd.2.gmail; Tue, 07 Apr
 2020 10:03:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypL+TzXLwagZqOiWKT4Oat5LsxIWiARkX3hdH1kROQIjbIIxnKeWaY6tAQ43AfDKIotCP5yV
X-Received: by 2002:a05:600c:210c:: with SMTP id u12mr234627wml.135.1586278996092;
        Tue, 07 Apr 2020 10:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586278996; cv=none;
        d=google.com; s=arc-20160816;
        b=sSS60c2FWmuU1t6FG3+dCWGPNdlRF2FHcUlvJo1kES+WmrDo6g4wwS7Rjwj/MKLjTA
         2kvgMc5YcP26KNqmcp0Dv9tzF4ndi3d/fvzCQnYEOHyRBfv4Iq6+If9tcbRpPKhmF2/t
         QJdc1GY7s/C3c4bsxL2ri3hAXptiWRWd75Urdd8Ku5HxH0ogJk5R3ezhsnMCRiP9XqXf
         yVLZqst38VGuMYcgnBUgbBGqXmcYObS4DZNCm+z5D8JCGOBrhOQmMwz89aGNg4vHMMFs
         FPOPO0FWMNoP3Cjb503RqqyBLukmqX5ikJ7Rj49fMu4qDChLGEKyo6/7wBRKo5vrSyEu
         V4aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vqvSMyTDJbJDZsEWvT5q9BLLkB9hgNkjrpsd6uzlDIE=;
        b=FcdWiQSRhAfjcDDq3npjy38z60eo/6QK3OZy5oZoQrg0YBNWBjd+BjZM+H0WzZSAvS
         tvzPYP3a64YVZ/RdFgPYYkBPOtLsv7H5XkOJMHMkkxnax/+bnLDHzqEnca5cW/mo/GQm
         wfW6MhpfzWwCzc82LaJNjraRiIqIYSugez5ZTJ/yQw6WAlRq5eqtcftjWiLw3hjR58rS
         B81uix5JR6z/1sc6+ZQyH1craMyvoe8FEejTP6rtm6zGHNQYYZSR6yNMYogWpPmTfWsH
         1TubQrF3O6MzgkbQlpjzZDjBUSzT/+dj/TM49F3ZVsIQGJ8leatAZvZ3IvC/DYDC2r7V
         DCIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u16si221790wmd.2.2020.04.07.10.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,355,1580770800"; 
   d="scan'208";a="444268866"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 19:02:57 +0200
Date: Tue, 7 Apr 2020 19:02:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: sbrivio@redhat.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [NOMERGE] net: selftests: Add xfrm
 encryption for vxlan
In-Reply-To: <06a59883fde977deb7fbc056a5381832e9356754.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2004071902410.2982@hadrien>
References: <20200407064413.15480-1-briana.oursler@gmail.com> <06a59883fde977deb7fbc056a5381832e9356754.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Apr 2020, Briana Oursler wrote:

> On Mon, 2020-04-06 at 23:44 -0700, Briana Oursler wrote:
> > Extend existing test by adding xfrm encryption on vxlan tunnel in
> > namespaces a and b.
> >
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
>
> I additionally wanted to give credit that this change was made based on
> starter code provided by Stefano Brivio but not sure if that goes in
> the patch description or not. I will resend if recommended.

Maybe Suggested-by?

julia

>
> Thanks,
>
> Briana
>
> >  tools/testing/selftests/net/pmtu.sh | 31
> > ++++++++++++++++++++++++++++-
> >  1 file changed, 30 insertions(+), 1 deletion(-)
> >  mode change 100755 => 100644 tools/testing/selftests/net/pmtu.sh
> >
> > diff --git a/tools/testing/selftests/net/pmtu.sh
> > b/tools/testing/selftests/net/pmtu.sh
> > old mode 100755
> > new mode 100644
> > index 71a62e7e35b1..824823470bc2
> > --- a/tools/testing/selftests/net/pmtu.sh
> > +++ b/tools/testing/selftests/net/pmtu.sh
> > @@ -122,6 +122,7 @@
> >
> >
> >  # Kselftest framework requirement - SKIP code is 4.
> > +
> >  ksft_skip=4
> >
> >  PAUSE_ON_FAIL=no
> > @@ -161,7 +162,8 @@ tests="
> >  	cleanup_ipv4_exception		ipv4: cleanup of cached
> > exceptions	1
> >  	cleanup_ipv6_exception		ipv6: cleanup of cached
> > exceptions	1
> >  	list_flush_ipv4_exception	ipv4: list and flush cached
> > exceptions	1
> > -	list_flush_ipv6_exception	ipv6: list and flush cached
> > exceptions	1"
> > +	list_flush_ipv6_exception	ipv6: list and flush cached
> > exceptions	1
> > +	xfrm_vxlan			ipv6: xfrm policy on vxlan
> > 	0"
> >
> >  NS_A="ns-A"
> >  NS_B="ns-B"
> > @@ -451,6 +453,26 @@ setup_vxlan4() {
> >  	setup_vxlan_or_geneve
> > vxlan  ${prefix4}.${a_r1}.1  ${prefix4}.${b_r1}.1  "df set"
> >  }
> >
> > +setup_xfrm_sec() {
> > +	a_addr="${1}"
> > +	b_addr="${2}"
> > +	spi1='0x100'
> > +	spi2='0x101'
> > +	proto="proto esp"
> > +	alg="aead rfc4106(gcm(aes))
> > 0x8a60673197134fca0959564327a61f943accde0a 128"
> > +	ipsec_mode="tunnel"
> > +
> > +	run_cmd ${ns_a} ip xfrm state add src ${a_addr} dst ${b_addr}
> > spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst
> > ${b_addr}
> > +	run_cmd ${ns_a} ip xfrm state add src ${b_addr} dst ${a_addr}
> > spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst
> > ${a_addr}
> > +	run_cmd ${ns_a} ip xfrm policy add dir out src ${a_addr} dst
> > ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode
> > ${ipsec_mode}
> > +	run_cmd ${ns_a} ip xfrm policy add dir in  src ${b_addr} dst
> > ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode
> > ${ipsec_mode} level use
> > +
> > +	run_cmd ${ns_b} ip xfrm state add src ${b_addr} dst ${a_addr}
> > spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst
> > ${a_addr}
> > +	run_cmd ${ns_b} ip xfrm state add src ${a_addr} dst ${b_addr}
> > spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst
> > ${b_addr}
> > +	run_cmd ${ns_b} ip xfrm policy add dir out src ${b_addr} dst
> > ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode
> > ${ipsec_mode}
> > +	run_cmd ${ns_b} ip xfrm policy add dir in  src ${a_addr} dst
> > ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode
> > ${ipsec_mode} level use
> > +}
> > +
> >  setup_geneve6() {
> >  	setup_vxlan_or_geneve geneve ${prefix6}:${a_r1}::1
> > ${prefix6}:${b_r1}::1
> >  }
> > @@ -659,6 +681,13 @@ check_pmtu_value() {
> >  	return 1
> >  }
> >
> > +test_xfrm_vxlan() {
> > +	setup namespaces routing vxlan6 || return 2
> > +	setup_xfrm_sec ${tunnel6_a_addr} ${tunnel6_b_addr} || return 1
> > +	sleep 1
> > +	run_cmd ${ns_a} ping -6 -c 5 ${tunnel6_b_addr} || return 1
> > +}
> > +
> >  test_pmtu_ipvX() {
> >  	family=${1}
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/06a59883fde977deb7fbc056a5381832e9356754.camel%40gmail.com.
>

