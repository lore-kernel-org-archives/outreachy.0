X-GM-THRID: 6812856909283983360
X-Received: by 2002:a1f:45d8:: with SMTP id s207mr1971017vka.33.1586274844492;
        Tue, 07 Apr 2020 08:54:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:24c2:: with SMTP id k185ls219705vkk.1.gmail; Tue, 07 Apr
 2020 08:54:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ357xjxBv46+Nq8I76NOzAWzO1luoQi0tj6cnkL9mEsb0hEwN76caFOjaCNfcgBJqTQE9f
X-Received: by 2002:a1f:96d3:: with SMTP id y202mr1834246vkd.98.1586274843235;
        Tue, 07 Apr 2020 08:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586274843; cv=none;
        d=google.com; s=arc-20160816;
        b=xj6CybSo+Zoa+OzMPbmMjah9x397K0AMG8KVtsKVtUDxlB3wGUXjMBORko729t6Qu2
         zg9KKz9JJJUweVJhVOXpPvKjnOreniJHJmkWvy2OGcZAUQWQgIKsi4rB32Th7Mv3+5HW
         mJWy6xsseMYPrl3/jMwtXbAV2vUb0OZr8PGRL1v/TUmvUspVcMCB3SQBRAJ7U3bEFFQ9
         Vb8DqzwMG3ecdvq40L2+AOujm7BDdkToD10ZeNu9YTlK00DmbU4VcJJVru/jqXnIKhyj
         7GNZiIx3qniP6+OQQVITQloFrvIVZ+3fBrRPb6ByEe5KvtkinyMdet1t/sozJcUzJFZ2
         TO9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=H/nZu86yl1UiOChrx0HhMmKKAcFkMLgtDLrixVZ3VhE=;
        b=uhzVzF8A1sX1YIYU+wFdSKI0BVtSzHPTETmCdfZfyG5CUoKel+Ul75ISSTEdKakOJZ
         pB1oEJhluCIj0dF++VpOyXokV9ACR3B3XaZN+F9mGLJ9O5TrtBWHGZXuqcVSowJ1gBQJ
         pHuKUgTgckt60soqD3Y2PKs81DjDJ0c5RYN1FOiNn1p9sk77gKjWLQexLhP7oPqqtdid
         aY0ET3B8UlEwvZhujL63GdLgowkstSmjk/OIoewJMrcAIJvO7f9O1siaZ25qx1X+vEEC
         mf6aHMdRpE/whb9gyp9fLUJx38CMq5zcs6UhNkLlRsOFympznAIwP3t7IBLih6twaNVF
         sIxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rfEb4Kv3;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y12si267659vsg.0.2020.04.07.08.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 08:54:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rfEb4Kv3;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id a13so997965pfa.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Apr 2020 08:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=H/nZu86yl1UiOChrx0HhMmKKAcFkMLgtDLrixVZ3VhE=;
        b=rfEb4Kv3xaeO3x5pvlRght+m07XuIObOYZs/36Vkg4d4R9wwLNmd/Rs6HeBrJtQsqm
         3apiwJe158e9cbUt+TDdE1XD63J0dQ7LQAuxgDeOU+xFqVggZB4qDxxwhExnoNpCkq9B
         8aiRpgm/lqouHOwy8mgaekjQCUr01SPQEQDT2Fga1bcgafDxI4PIx0+9HNI9dW/spqrk
         ollBeBhMHCXqq9wXFXBMMag15HTlve6plN1d+Z+DnH4yOUg0B84935RNgEUhLzO3qyaZ
         eFl/w5KgYev+WHiV+cJMvJMQuy6fcn1BGgozO09hz6NHwz5SY8pOw/8D+SlNndGbQNMf
         q/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=H/nZu86yl1UiOChrx0HhMmKKAcFkMLgtDLrixVZ3VhE=;
        b=q94rWdbWYULWaJTiuN7gmAoh0tjAPThpnVVkVPLQSGuX8IrIwVV3Vu1FGk2B+clk1A
         XpfV4fd5p8Zqpsdp2i22TFZ14520j+yBU19++zQORWk+VlObjQ+JuKXSt/53r6EHo1qR
         rhSuHuUB4K6+Ptnxnvud3RaAnvZ9sZMLYZWA1k8hQofUH61THgoTFqgNBlngD/hQE5gy
         B53W6xUp88YfWpGBJqOnwkmwtYMW2KVcIpOvX5gEUvNUObnJlOmfCEzI11rr3xibSSoB
         J1v17+apjg//XNJ22EVxdl3f3k7r2SDz0S4meMsjbfZuSLug06qdjChIPd0zMKrHQ/j7
         uB3Q==
X-Gm-Message-State: AGi0PubfEu5SlGUJ0jh73epsjJmHi/dTsgpxzsjPhtFrd/QsBAbl9SNi
	jQxE/4oU+33M0Eedbi9LAjup4jx3
X-Received: by 2002:a63:2143:: with SMTP id s3mr1729739pgm.20.1586274842484;
        Tue, 07 Apr 2020 08:54:02 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id u16sm12344367pgf.52.2020.04.07.08.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 08:54:01 -0700 (PDT)
Message-ID: <06a59883fde977deb7fbc056a5381832e9356754.camel@gmail.com>
Subject: Re: [NOMERGE] net: selftests: Add xfrm encryption for vxlan
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com, outreachy-kernel@googlegroups.com
Date: Tue, 07 Apr 2020 08:54:00 -0700
In-Reply-To: <20200407064413.15480-1-briana.oursler@gmail.com>
References: <20200407064413.15480-1-briana.oursler@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-04-06 at 23:44 -0700, Briana Oursler wrote:
> Extend existing test by adding xfrm encryption on vxlan tunnel in
> namespaces a and b.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---

I additionally wanted to give credit that this change was made based on
starter code provided by Stefano Brivio but not sure if that goes in
the patch description or not. I will resend if recommended.

Thanks,

Briana

>  tools/testing/selftests/net/pmtu.sh | 31
> ++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
>  mode change 100755 => 100644 tools/testing/selftests/net/pmtu.sh
> 
> diff --git a/tools/testing/selftests/net/pmtu.sh
> b/tools/testing/selftests/net/pmtu.sh
> old mode 100755
> new mode 100644
> index 71a62e7e35b1..824823470bc2
> --- a/tools/testing/selftests/net/pmtu.sh
> +++ b/tools/testing/selftests/net/pmtu.sh
> @@ -122,6 +122,7 @@
>  
>  
>  # Kselftest framework requirement - SKIP code is 4.
> +
>  ksft_skip=4
>  
>  PAUSE_ON_FAIL=no
> @@ -161,7 +162,8 @@ tests="
>  	cleanup_ipv4_exception		ipv4: cleanup of cached
> exceptions	1
>  	cleanup_ipv6_exception		ipv6: cleanup of cached
> exceptions	1
>  	list_flush_ipv4_exception	ipv4: list and flush cached
> exceptions	1
> -	list_flush_ipv6_exception	ipv6: list and flush cached
> exceptions	1"
> +	list_flush_ipv6_exception	ipv6: list and flush cached
> exceptions	1
> +	xfrm_vxlan			ipv6: xfrm policy on vxlan	
> 	0"
>  
>  NS_A="ns-A"
>  NS_B="ns-B"
> @@ -451,6 +453,26 @@ setup_vxlan4() {
>  	setup_vxlan_or_geneve
> vxlan  ${prefix4}.${a_r1}.1  ${prefix4}.${b_r1}.1  "df set"
>  }
>  
> +setup_xfrm_sec() {
> +	a_addr="${1}"
> +	b_addr="${2}"
> +	spi1='0x100'
> +	spi2='0x101'
> +	proto="proto esp"
> +	alg="aead rfc4106(gcm(aes))
> 0x8a60673197134fca0959564327a61f943accde0a 128"
> +	ipsec_mode="tunnel"
> +
> +	run_cmd ${ns_a} ip xfrm state add src ${a_addr} dst ${b_addr}
> spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst
> ${b_addr}
> +	run_cmd ${ns_a} ip xfrm state add src ${b_addr} dst ${a_addr}
> spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst
> ${a_addr}
> +	run_cmd ${ns_a} ip xfrm policy add dir out src ${a_addr} dst
> ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode
> ${ipsec_mode}
> +	run_cmd ${ns_a} ip xfrm policy add dir in  src ${b_addr} dst
> ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode
> ${ipsec_mode} level use
> +
> +	run_cmd ${ns_b} ip xfrm state add src ${b_addr} dst ${a_addr}
> spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst
> ${a_addr}
> +	run_cmd ${ns_b} ip xfrm state add src ${a_addr} dst ${b_addr}
> spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst
> ${b_addr}
> +	run_cmd ${ns_b} ip xfrm policy add dir out src ${b_addr} dst
> ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode
> ${ipsec_mode}
> +	run_cmd ${ns_b} ip xfrm policy add dir in  src ${a_addr} dst
> ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode
> ${ipsec_mode} level use
> +}
> +
>  setup_geneve6() {
>  	setup_vxlan_or_geneve geneve ${prefix6}:${a_r1}::1
> ${prefix6}:${b_r1}::1
>  }
> @@ -659,6 +681,13 @@ check_pmtu_value() {
>  	return 1
>  }
>  
> +test_xfrm_vxlan() {
> +	setup namespaces routing vxlan6 || return 2
> +	setup_xfrm_sec ${tunnel6_a_addr} ${tunnel6_b_addr} || return 1
> +	sleep 1
> +	run_cmd ${ns_a} ping -6 -c 5 ${tunnel6_b_addr} || return 1
> +}
> +
>  test_pmtu_ipvX() {
>  	family=${1}
>  


