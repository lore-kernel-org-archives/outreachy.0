X-GM-THRID: 6402653408704069632
X-Received: by 10.99.115.92 with SMTP id d28mr10705300pgn.124.1490733924264;
        Tue, 28 Mar 2017 13:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.40 with SMTP id j40ls2176320iod.26.gmail; Tue, 28 Mar
 2017 13:45:23 -0700 (PDT)
X-Received: by 10.107.46.135 with SMTP id u7mr9982540iou.37.1490733923517;
        Tue, 28 Mar 2017 13:45:23 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id i189si409970pfg.3.2017.03.28.13.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so23905342pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wWub9r02MiDRlT8euFuy4yo1GWgXYrGRP0+B8CnPnSA=;
        b=WnEtgB+kBeuuzQe6hp+tMrjG3X7ajVW2IePs2J16asJdh6HK3vGXQCj6Tr0Uec8mB4
         WTXYI4bbdnnUUkk6zKff61aO0ie0mPc9CdW4NlKGWTYS3Z7v9Kpu2mfDy6Q/sG1JNwuv
         46eQk4jPgB+B6TvFSGZZ+ZZmcRXZBo7Dy55NIqQJgsfQr9BL2cXZs7KfLvtawOG/U3Yy
         7pldkBg2zue3JezTYs6oNYMsN+4tsj9pmURedXbfgRDioezYspbVlPnwmydDJGvZyqSZ
         X0cn8I7hj8QRRNi7UQ7cpy0Vp7MgUditfCcQRQbo3BlPM0r2NQYT6BY80Lkq9JOR2KbO
         vKqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wWub9r02MiDRlT8euFuy4yo1GWgXYrGRP0+B8CnPnSA=;
        b=G6i7PPJ1DwchBeN3Df4dT/E5WKsCmx/a4ldbYPW85pu8v9SC3euhGnoZqb/SuQLvgA
         MomC0mVpNy1HcxRHFJlIivVgo/6uLYx73+sPGzRiSKF1UoUYkB3GPmKv2FGC0rtFrVYo
         ru7txrjG58MfmBKi922UvZEecRSBd+Mbg9b0SSrBs0Z8RB3sc6Op6SPmJw/3NpYoVBfG
         zFo5coZLGLL2ei2rCJ0b068aZVB2RPN2EEeag3jd9WEFF1dsdqwbDFfPCCbyLXoI6rj7
         YMVQmzxaEG+T6Na2UqFSrBMFvATSLSLE2NQmsG+4eOZzMSlRO/eBU4N5hxMd6IFm4d26
         ic9Q==
X-Gm-Message-State: AFeK/H3MnY/XJsPkrP68xNGbcw9SuJGSxp4kg8UqBJcwRUGY6C6K12sVtwc6Z1aSkDwKug==
X-Received: by 10.84.241.14 with SMTP id a14mr2086612pll.117.1490733923333;
        Tue, 28 Mar 2017 13:45:23 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q4sm9053070pfk.129.2017.03.28.13.45.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:45:22 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/5] kernel: pid: remove space after open square bracket
Date: Wed, 29 Mar 2017 02:15:02 +0530
Message-Id: <20170328204506.16316-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170328204506.16316-1-arushisinghal19971997@gmail.com>
References: <20170328204506.16316-1-arushisinghal19971997@gmail.com>

Remove the space after open square bracket as reported by checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 0143ac0ddceb..59ec7a671e06 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -71,7 +71,7 @@ static inline int mk_pid(struct pid_namespace *pid_ns,
 struct pid_namespace init_pid_ns = {
 	.kref = KREF_INIT(2),
 	.pidmap = {
-		[ 0 ... PIDMAP_ENTRIES-1] = { ATOMIC_INIT(BITS_PER_PAGE), NULL }
+		[0 ... PIDMAP_ENTRIES-1] = { ATOMIC_INIT(BITS_PER_PAGE), NULL }
 	},
 	.last_pid = 0,
 	.nr_hashed = PIDNS_HASH_ADDING,
-- 
2.11.0


