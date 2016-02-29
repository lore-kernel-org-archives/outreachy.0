X-GM-THRID: 6256792083376373760
X-Received: by 10.50.57.17 with SMTP id e17mr11308554igq.11.1456773818894;
        Mon, 29 Feb 2016 11:23:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.169 with SMTP id x9ls635263igl.25.canary; Mon, 29 Feb
 2016 11:23:38 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr14113848pfj.11.1456773818193;
        Mon, 29 Feb 2016 11:23:38 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si3852430pab.0.2016.02.29.11.23.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so9438144pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=k5B5cXrwn5QMTQmAAXCG1yLQC48HnfnRVSQMI+suHrM=;
        b=Ey0AR5Vd2GeKnqh0Bzvl6ivD12n+HsOKX5EgVKWs4nMXMM2b7ntJQ8IKhCs1fuWN5o
         Le7V6NK1cLyWh3w4ClQ4hjbw4tseDBN9C+hfYBLoqHZofFeMLhkEKFzZPf0MAxPGPEgP
         oNgr4z+2toMBC95CM1khUBMkZ2BSnsvaP4LPbmGVDh546CIloJCY2xm52hhvnDGRfJ60
         e3Tdc+qn/zCl5auW2x++ROF7hES0ucYgKg3ZshgdxEElw9eEvsofjfTsRUGsILvz5olW
         yypRHiTMYnCdJiVcIFDjSLrAecwmrbx6jaU0oMNRhhgKeG+xC1oKo60kEK7KLTWhoCr6
         C0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k5B5cXrwn5QMTQmAAXCG1yLQC48HnfnRVSQMI+suHrM=;
        b=c9vdaTzMZGj0DyLoemIYJRtW7zCUmkCMBa9VLaFsUU89Xzr1q+4L+VZQdnhSAXHqdr
         IhnynjIbYJ6zHWrfhKcjOtqXYB63RbiuwhAdnhbpunvppM5yHSxFbl9HL81QMfgntXvY
         AfQHqHUUausX46NgCJZbUkOpbJ5/0MAPAMsgKnL72vSwk63fn8L9WnumUxkyee/mqa3q
         XxvV7AIvelV27CgeZfIbXKXgqIUIp0MUT2se1cwASyKBldD/Xpv6ryLyf/9Zk7x88rKb
         pG0lMgEDt3/UGiNfbpxaoIyHLIgaNx/Wh+pIWV/hlM5W9tEjGn5npk/pyXor2wzHitOr
         QXKg==
X-Gm-Message-State: AD7BkJJ55xBkYMlpje8uIE6Yfdnz7mpbvcu2cPhOGclNQEMi/n8Ru0XcXbBNyvreU3Kv4Q==
X-Received: by 10.98.66.157 with SMTP id h29mr24557300pfd.91.1456773818063;
        Mon, 29 Feb 2016 11:23:38 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id cq9sm39955885pac.26.2016.02.29.11.23.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:23:37 -0800 (PST)
Date: Mon, 29 Feb 2016 16:53:40 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] Staging: iio: ade7758_core: Remove unnecessary goto.
Message-ID: <e6834a1d697b021ff535558e0f20d3518b15bc26.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Used below semantic patch to detect the unnecessary goto:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 0db23e4..32792d0 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(16);
 
 	ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);
-	if (ret)
-		goto error_ret;
 
 error_ret:
 	return ret;
-- 
1.8.3.4


