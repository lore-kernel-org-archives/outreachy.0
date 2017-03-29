X-GM-THRID: 6403001304999788544
X-Received: by 10.99.61.132 with SMTP id k126mr752737pga.3.1490814915879;
        Wed, 29 Mar 2017 12:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.3 with SMTP id q3ls5919022iof.29.gmail; Wed, 29 Mar
 2017 12:15:15 -0700 (PDT)
X-Received: by 10.99.188.2 with SMTP id q2mr798026pge.36.1490814915070;
        Wed, 29 Mar 2017 12:15:15 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s67si1231950pfs.4.2017.03.29.12.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so4087786pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rj6dFPz2aVmm3qsz/5eNAOaR8lEmMxT0yh4s/Zd2ojU=;
        b=REQElnCfHRMJd5i7d5NNQiP7GpvI3YWAzZXiLFmWE7XPuKzM1v7ddggobo295gj+bF
         Wt3MacZ1r1yjx0Hwtl9UpyLlAo0RQ/r/FCS2fXlbybi5loVUBPj1Jzv/WXfXzf5nDXLw
         9bPird7WbX+4hP0rU7IVpd+d2rk2WAsJnyIKtrRZL9sC3xyM7EOfBfuieulhMe6Ijljq
         MZPIqZJDMLVCSwvHORBfL31ayrQSrPMch1ifvhhF2IP0sT02TkgABmf8JaJcVtPJbTe9
         Ioi8p83WNkngkJs0BrTSAy0iZMNXxfdJRgHCREqu3OoCAcyVhDyW8GF/PEZrdFEK/VXR
         3+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rj6dFPz2aVmm3qsz/5eNAOaR8lEmMxT0yh4s/Zd2ojU=;
        b=k8eSTvfetfpCxcKWRjeZvZ4uj3E4J1IeAmIeuArQfPTqD9flSG4ofGYmeiFJ7Sj/72
         SORQuu2hYIVY9vDylWqW2jcmhD6OVb4O2ph6PZ9p0eB60vfnKy6seAsnr3U4TrMV3Zof
         51imXXq94KHx/aObYSosdoElLT0kY75g3lB7nid8NbnG7sc7HjI/OtW5AVcJ/rKiexmp
         u9RPazQ+ixF25sIeEgfRTNYvV+wofU6FbZyaup3tbaMuTilp4fSPTyLQRjOkjB2LPnqJ
         PXgKWfT+Jv7uqWpy11BVg6a2E7xDUT4QHmCl4MqJ44ToTW2805F+OlPRfjXlDNzobi1S
         a/gw==
X-Gm-Message-State: AFeK/H1W5Q7Wogid5vvXpT+GjccRqVIpkIaCmckXskR/ZeHOrNvG4qgJSHIJMY+uzl/dvw==
X-Received: by 10.84.195.1 with SMTP id i1mr2361642pld.175.1490814914741;
        Wed, 29 Mar 2017 12:15:14 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id s87sm15046098pfa.29.2017.03.29.12.15.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:15:14 -0700 (PDT)
Message-ID: <58dc07c2.5a45620a.73bc6.598a@mx.google.com>
X-Google-Original-Message-ID: <20170329191511.GA20010@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:45:11 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] net: ipv4: Use macro DIV_ROUND_UP.
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


