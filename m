X-GM-THRID: 6395378707824902144
X-Received: by 10.99.62.136 with SMTP id l130mr4668899pga.34.1489040316796;
        Wed, 08 Mar 2017 22:18:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls4718491itc.15.canary-gmail; Wed, 08
 Mar 2017 22:18:35 -0800 (PST)
X-Received: by 10.99.170.76 with SMTP id x12mr5348020pgo.93.1489040315875;
        Wed, 08 Mar 2017 22:18:35 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si685715pfb.0.2017.03.08.22.18.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:18:35 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so1267646pge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 22:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NuDQTGahU1Nf7tHDFluxw3uRz6riHK6iTrcXiH9aC0M=;
        b=Jh0wmL9iR2/qh33m8sphqckCBLzzCeHJ/19eDb3V4sDw5ZDRunXKUJ3C/Y9yGKz/wP
         WWsj/9fYbzOdR3WBBEsi07xN9GW95d7X5M74J+eL42/nzEKkmQsvsBz+K96M5FrujvK5
         P7+74J7sqaEmpFgyrLUJWrtJSV4oBPV8tYtPd5B9+pLXvaSpwVBv/rBGbxBnDONZSjOs
         nKMC5M0GFB4QGeNtK+vZBWKIpaBUdqyEfPxGhyltyu3Mt3XoCviCUKaSLR0oR6cxv1we
         7HGBcGMB17CP4vX6dvcbaEO7F0rUzoHCo2AYSlb0D+HW1nnia5gqyVNOglJ5Qkhdlar1
         8nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NuDQTGahU1Nf7tHDFluxw3uRz6riHK6iTrcXiH9aC0M=;
        b=B+rxApJt270ZVq4nnyUWGxV2K7aMc4KzYtOh4ByWo/vMRavmNmGqB2wsi9QgFyO4X0
         Y5FZjQLyuSbp9SngLR70Dz4WYdaSpzR1IYTUK38pdUH8/fWN3nYGYql5rsFr+eRGz/nX
         NK/knJPloo6hd/WSb02XWMKhVPityN7/M5W8LiC3ORSAq9tvc3RgL8ns5XncRD2iQ+CR
         p81ZDzE9MawtBLosekWAWz2tiWZebQ5w5yStkiNhPdYqYovajuyXEXJeQatvPIl6qfrU
         vav3qn9VWky+SY1GtPjjw4e8S/LOvWIGgyB64GTe+sZkblqs8Knybv2RZIr0fGBD7c3+
         xUcw==
X-Gm-Message-State: AMke39kfXsTVkhFvuQU6pf3pv5pixrwO3KpF9+WTwzGBbw0oR5E2eM9fiNe75FJoE/DUZQ==
X-Received: by 10.84.217.199 with SMTP id d7mr14623449plj.80.1489040315456;
        Wed, 08 Mar 2017 22:18:35 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.174])
        by smtp.gmail.com with ESMTPSA id x21sm9676611pfa.71.2017.03.08.22.18.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:18:35 -0800 (PST)
Date: Thu, 9 Mar 2017 11:48:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 3/3] Documentation: cpu-freq: cpu-drivers: Fix repetition of
 word 'to'
Message-ID: <b186de21b6f8c7a373f577b9597d3217652c374c.1489039271.git.karniksayli1995@gmail.com>
References: <cover.1489039271.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489039271.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch replaces 'to to' with 'to' in the documentation.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/cpu-freq/cpu-drivers.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/cpu-freq/cpu-drivers.txt b/Documentation/cpu-freq/cpu-drivers.txt
index f71e6be..434c49c 100644
--- a/Documentation/cpu-freq/cpu-drivers.txt
+++ b/Documentation/cpu-freq/cpu-drivers.txt
@@ -231,7 +231,7 @@ the reference implementation in drivers/cpufreq/longrun.c
 Only for drivers with target_index() and CPUFREQ_ASYNC_NOTIFICATION unset.
 
 get_intermediate should return a stable intermediate frequency platform wants to
-switch to, and target_intermediate() should set CPU to to that frequency, before
+switch to, and target_intermediate() should set CPU to that frequency, before
 jumping to the frequency corresponding to 'index'. Core will take care of
 sending notifications and driver doesn't have to handle them in
 target_intermediate() or target_index().
-- 
2.7.4


