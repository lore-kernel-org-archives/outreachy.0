X-GM-THRID: 6403001065070919680
X-Received: by 10.107.53.91 with SMTP id c88mr799038ioa.73.1490814859101;
        Wed, 29 Mar 2017 12:14:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls19329735otd.8.gmail; Wed, 29 Mar
 2017 12:14:18 -0700 (PDT)
X-Received: by 10.157.25.236 with SMTP id k99mr740702otk.76.1490814858148;
        Wed, 29 Mar 2017 12:14:18 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si1312014pfb.7.2017.03.29.12.14.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so4052130pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rj6dFPz2aVmm3qsz/5eNAOaR8lEmMxT0yh4s/Zd2ojU=;
        b=mo/yx1/0jkkcD3f/xp7qDxrrRtpuiTsNaaui1ECY2WMkFHu66IuI+KBN0R6KQfXBoK
         a9zWtoIJAFWZopWp5v9wxRwFWWOvFncyimHdOFt5RBlQwY9PcXSbYKihatCQ2tZMpfPC
         HrKnIJjbTDOSUtJAHbSp9WFamzvF+Ig3DrZA5FOIFnaCjhG9ZBFjU2P9eEntiix8VVce
         b2aB8C5qJIg7XFXTmuW8Q+TgcQRSOdQUw+NFTnhGchnerzuG0zkAerQnfwEwyLuGX8ft
         w0Y1CEIHndHZBBOkH8hSOy8t3pjoPaNeS0l89vjhnlSXygisoq2vaOL5QNG/DANgOJjE
         9lCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rj6dFPz2aVmm3qsz/5eNAOaR8lEmMxT0yh4s/Zd2ojU=;
        b=U2mw9FArwfJOFSgRikjo74iOStgSAcnX4wDvHOpZZpjfoMnh7Q2w3fLGsGnyvySUso
         9I6lZEs73/E8DAfYwJfIXeAPBnDHwXsCsr6jnG0C70nf9hqaOjBynV91JM0FJkkhQtAJ
         mPOKXrjYyrAfLXRT+RC22g5GOQtJtR+sN0Pv1WSgncrSxH5T0MQ3kERVkyj/NkTlcTyq
         ZFfO6Rb5bllUlyish8a5Ri2ei1199/YrDxdYUEMoX8ij35kSq1Rs4Eu4Ma1nhNhAZJIX
         s4JWUb5JqRne5K8Wzn3JAulfyUV96TX5VQAV2BXIuMTZMfwLbrEsr/3KTRskLff20DNZ
         fG5A==
X-Gm-Message-State: AFeK/H1ICiWTF9AxRFLT+0L9kf9laGdGUFYafzCoWBefAehvHt8JPdiUNipqvRg4kBD88A==
X-Received: by 10.99.54.69 with SMTP id d66mr2120602pga.116.1490814857911;
        Wed, 29 Mar 2017 12:14:17 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id s12sm15068278pfj.9.2017.03.29.12.14.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:14:17 -0700 (PDT)
Message-ID: <58dc0789.8c66620a.93997.55b6@mx.google.com>
X-Google-Original-Message-ID: <20170329191414.GA19966@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:44:14 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] net: ipv4: Use DIV_ROUND_UP macro.
References: <cover.1490813977.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490813977.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It simplifies the divisor calculations. This was done using the following
coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 net/ipv4/tcp_bbr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ipv4/tcp_bbr.c b/net/ipv4/tcp_bbr.c
index b89bce4..4da4bc1 100644
--- a/net/ipv4/tcp_bbr.c
+++ b/net/ipv4/tcp_bbr.c
@@ -314,7 +314,7 @@ static u32 bbr_target_cwnd(struct sock *sk, u32 bw, int gain)
 	w = (u64)bw * bbr->min_rtt_us;
 
 	/* Apply a gain to the given value, then remove the BW_SCALE shift. */
-	cwnd = (((w * gain) >> BBR_SCALE) + BW_UNIT - 1) / BW_UNIT;
+	cwnd = DIV_ROUND_UP((w * gain) >> BBR_SCALE, BW_UNIT);
 
 	/* Allow enough full-sized skbs in flight to utilize end systems. */
 	cwnd += 3 * bbr->tso_segs_goal;
-- 
2.9.3


