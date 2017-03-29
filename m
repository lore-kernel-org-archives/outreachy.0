X-GM-THRID: 6403001709178650624
X-Received: by 10.36.14.22 with SMTP id 22mr121174ite.1.1490820627381;
        Wed, 29 Mar 2017 13:50:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls3439566ith.16.canary-gmail; Wed,
 29 Mar 2017 13:50:26 -0700 (PDT)
X-Received: by 10.98.102.90 with SMTP id a87mr784535pfc.38.1490820626687;
        Wed, 29 Mar 2017 13:50:26 -0700 (PDT)
Received: by 10.202.94.136 with SMTP id s130msoib;
        Wed, 29 Mar 2017 13:16:51 -0700 (PDT)
X-Received: by 10.99.9.129 with SMTP id 123mr872584pgj.120.1490818611171;
        Wed, 29 Mar 2017 13:16:51 -0700 (PDT)
Return-Path: <eric.dumazet@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si1331101pfz.1.2017.03.29.13.16.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 13:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so4468139pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 13:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ax8Z8y0RHyFxjH7a9VWogZm7FZdmNICMQINBw1+kyDM=;
        b=WaJkZSOvs2vSMBVNx/MEAad982UbXxG2qgioKdzdiCaoQX5SRf2BvHGU8Auevqq/td
         GKRd1EmoQOHA3qG8mGWRv8yUnsiSXSg+8MWrqV7BVfMjjjJvPbBAGdnWEdGVuzc5EJH+
         dJ+ycN1Jm8gbOxIKFIaHCH+USHMWpVqs+Y2mYJwc9IuuE82suCxtP1XLKXy6V7WGApbP
         iV6X9HlkrQVfRYuBL5DyzqVT8BnCAFiMQd8X5OPEVYCe5FtRvFiu07JEMo2pxK/rxoNi
         DyKDiB0QxlVN1BygxnlZh9/dfEBdKO4Z5ohetBcQLDGvcOsux49N9veeU1O173x6BNZV
         NAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ax8Z8y0RHyFxjH7a9VWogZm7FZdmNICMQINBw1+kyDM=;
        b=Tb9flGCdw5QCOTkqhMTWSzGeDiaZbSK7auXhFh0IUeypRjpdynPBqb8je65k8R3Kwz
         gfdmaYSZHMNWiz57DzhTflFKOX61UZ4HLxi2Rjl6iaOoC+TsvRaZX8YBU3l1Ooj6SGHe
         zIiCcZOkjU9UTydQpjp3ehI/5bWacypfjMiyV8zQSeFw9Zcebn5JN660f4UlPp3Z117L
         Cy1/xrzcV2FV1Wk2L4N4Eb553NihdpOK+OR7KV6Ty+Kq1OQvImKGLgwr2fk5k7X51gsl
         FG5V+WJyXi4QSw2uUxgt7Snb3zix7JjUBKyt5aqJ4B3uWg5DWN7Ugdm7qQwd74/UOVmh
         2ygQ==
X-Gm-Message-State: AFeK/H0orBZZteuQo3LmcDFDz6juZuuH/bq/FbXJl12amgabPlg2jLGJKWDI+CNCrK6oBQ==
X-Received: by 10.99.123.20 with SMTP id w20mr2318275pgc.223.1490818610989;
        Wed, 29 Mar 2017 13:16:50 -0700 (PDT)
Return-Path: <eric.dumazet@gmail.com>
Received: from [192.168.86.171] (c-73-231-122-98.hsd1.ca.comcast.net. [73.231.122.98])
        by smtp.googlemail.com with ESMTPSA id a62sm15025278pgc.60.2017.03.29.13.16.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 13:16:50 -0700 (PDT)
Message-ID: <1490818609.24891.49.camel@edumazet-glaptop3.roam.corp.google.com>
Subject: Re: [PATCH 2/2] net: ipv4: Use BIT macro.
From: Eric Dumazet <eric.dumazet@gmail.com>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, Alexey Kuznetsov
 <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, Hideaki YOSHIFUJI
 <yoshfuji@linux-ipv6.org>, Patrick McHardy <kaber@trash.net>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>, netdev@vger.kernel.org
Date: Wed, 29 Mar 2017 13:16:49 -0700
In-Reply-To: <58dc0820.8943620a.67760.546e@mx.google.com>
References: <cover.1490813977.git.rvarsha016@gmail.com>
	 <58dc0820.8943620a.67760.546e@mx.google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-30 at 00:46 +0530, Varsha Rao wrote:
> Replace bitwise left shift by one operations with BIT() macro. This patch
> fixes the checkpatch issue.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  net/ipv4/tcp_bbr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/ipv4/tcp_bbr.c b/net/ipv4/tcp_bbr.c
> index 4da4bc1..9f2c869 100644
> --- a/net/ipv4/tcp_bbr.c
> +++ b/net/ipv4/tcp_bbr.c
> @@ -71,10 +71,10 @@
>   * an issue. The upper bound isn't an issue with existing technologies.
>   */
>  #define BW_SCALE 24
> -#define BW_UNIT (1 << BW_SCALE)
> +#define BW_UNIT BIT(BW_SCALE)
>  
>  #define BBR_SCALE 8	/* scaling factor for fractions in BBR (e.g. gains) */
> -#define BBR_UNIT (1 << BBR_SCALE)
> +#define BBR_UNIT BIT(BBR_SCALE)
>  
>  /* BBR has the following modes for deciding how fast to send: */
>  enum bbr_mode {

Well, no.  BIT() is using unsigned long.

#define BIT(nr)    (1UL << (nr))


This change might have unintended effects.

Maybe checkpatch should be fixed.




