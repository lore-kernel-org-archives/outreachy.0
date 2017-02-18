X-GM-THRID: 6388438478115307520
X-Received: by 10.200.46.241 with SMTP id i46mr3830397qta.70.1487425209935;
        Sat, 18 Feb 2017 05:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.230 with SMTP id r35ls6543570otr.25.gmail; Sat, 18 Feb
 2017 05:40:09 -0800 (PST)
X-Received: by 10.157.18.196 with SMTP id g62mr144688otg.9.1487425209632;
        Sat, 18 Feb 2017 05:40:09 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si1380384pfd.3.2017.02.18.05.40.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:40:09 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e4so6198365pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 05:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CM+y6kZaU3Tol6ujQdf8YpDqaJkzg67bQE8AWQ5UyWM=;
        b=RPPOkx+mTqAAqmZtWf/3DBXIrvlZyEOMrVYINVvkyaeo8uCzgvJJIyzDU8XSPkZDMq
         o9pA5r3FyiVuBLkUWk9k1I3eayIAYr4TAvTLif6tZA1J/JiaTp29HL6erVnZXibBI23u
         xP8nBfRvARzSvdAUWDf636vrlIcnvKW94V+bi01ImCa0rIOwfK3GzBCFAss1EmEASkXy
         fWg4Jq/Bb3vuGWUAzyiAni12FpNcUyH/h/QceE8Cmiy62VTMUkiJVMJUXoIIde6ydHus
         N0l2OvgJvDzYYhDyEkZTSpwEQRqwqKRxerqNgZHpf5lbUHNVrtt6xqX2zKEtxXCSdv18
         52og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CM+y6kZaU3Tol6ujQdf8YpDqaJkzg67bQE8AWQ5UyWM=;
        b=JZYfWapo/itUb5hAXrZBMCm/ouHDPLl54L8wk7dDrRIlcDL+zHdgAQropDx0r8anaY
         +L4M2TvLQreGswwWXWRaKI82SzEAnYpH1JAA3+zGbZfsKNsGO9pI2ycFfNnp/65jLx3U
         gpP7xecXJCeTx7axKvo8TqyEw5SfvhlXOkM9ZvePGhCxdk0ybSgkdHVN5dDcWZvU+Z6Q
         6LRiDgP6SxETiQb+2mBPNwnrhvg3C0ttG5Fp7h+FZ7pk1fVOqJrDm2YJBnxVBbKIs8DH
         1thRwKq/GFKBhgsbviobpvLq3n9r6zrLnX9imRMu00Zbp6SpdgSST+JbNnp2zssipNaC
         812A==
X-Gm-Message-State: AMke39kDkr/JMnV+Zu98c7wpzLN7MDqSds2V8SumhQT0kc4HQVlUK3D7ln0CuRY3owpzZg==
X-Received: by 10.98.43.4 with SMTP id r4mr7141232pfr.96.1487425209394;
        Sat, 18 Feb 2017 05:40:09 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm25677830pga.0.2017.02.18.05.40.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 05:40:07 -0800 (PST)
Date: Sat, 18 Feb 2017 19:10:04 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: xgifb: function definition argument should also
 have an identifier name'
Message-ID: <20170218134004.GA5075@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function definition argument 'struct vb_device_info *' and 'unsigned
long' should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/xgifb/vb_init.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
index 500cabe41a3c..e835054b87bf 100644
--- a/drivers/staging/xgifb/vb_init.h
+++ b/drivers/staging/xgifb/vb_init.h
@@ -1,6 +1,5 @@
 #ifndef _VBINIT_
 #define _VBINIT_
 unsigned char XGIInitNew(struct pci_dev *pdev);
-void XGIRegInit(struct vb_device_info *, unsigned long);
+void XGIRegInit(struct vb_device_info *XGI_Pr, unsigned long BaseAddr);
 #endif
-
-- 
2.11.0


