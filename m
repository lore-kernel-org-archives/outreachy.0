X-GM-THRID: 7019965111499489280
X-Received: by 2002:a05:6602:1591:: with SMTP id e17mr10008942iow.146.1634462995738;
        Sun, 17 Oct 2021 02:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:216a:: with SMTP id s10ls885866ilv.10.gmail; Sun,
 17 Oct 2021 02:29:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwysnKrzP9K64qnzJ6PfDVjNPbOunO6ZQyIsnm+3/OTjg646EQ9d3AlNKmHPVSRKcOcBY8m
X-Received: by 2002:a92:d0d1:: with SMTP id y17mr9959992ila.40.1634462994866;
        Sun, 17 Oct 2021 02:29:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634462994; cv=none;
        d=google.com; s=arc-20160816;
        b=hWkW4AWhqmkKvYkhYrwYbnEW3Vp8j4MLuFE0kHyCiPRoJ3O8YTI3O1713bx0tG4zKu
         XzXp8+OwfdZfSwmJFykzfn3hhrx0M4wgk6cijJjV9EMzcHFeSD52JKvTniLGF+/f73oV
         a2LdYtdiMFrNnQNDjY3kNgJHpZ/d/XjavkOCHiJ0bTUlYUOp6Zn8RmOcnKqmr2q6Xl5W
         oWDavAcFp70l9O3lK30RHMU3Uj7XXvT9w4YIEwbd0n4wU6ORi4qGYyQ2gDRtL+34Wfpw
         8zb7GUysqrbVRsQKL/OpMM7pf9VPNDSg/T9ZuhWNHGXgG/NWAqRMCoH2kiPSTObLAjB0
         qC8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=sAZwpsvpNd8mq9nsqgEh8qKdU0GjNG67jmNpaREej14=;
        b=Fx0LCwurwOsW51Z4+4MS1JzjO78R2Y3zj91V6qrOrAnalH7n6a8XWsPh2iPqDObxz0
         IThzJyHi8ylNJCgH8VJE1a8qAW77NQ/28gKcERzZydLRP90tCiYO5FWqqF3TW1HbjH8/
         MBxPd4t5JWsvig0MGcauMOJCvN2k2PHx2jjpJ0gK+O+Uun8Y6NTHVzq1Q/ckoiws/f0K
         /XzndUscscI2jVkTjgp+S2g4Oj/GQed3l0Qa8zYNhaOITBLFPJrVnMDK+g37xT6X0xdo
         WLfqkDUIH785CMC8jW1Zjj4kPmfIj3SKzhxnoYdpzibAiL0cNx7lwyklTT8cnezfLsEU
         Y8HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OwJUXdJu;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id h10si890880ilq.2.2021.10.17.02.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 02:29:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OwJUXdJu;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id r2so12959346pgl.10
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Oct 2021 02:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sAZwpsvpNd8mq9nsqgEh8qKdU0GjNG67jmNpaREej14=;
        b=OwJUXdJuxPyFxact+I7KRrvsh/grOzI6pnzmnzmE7s4eHCVFtty5Yye66fPHObgSF2
         OVxindJ4JDioKriRZA/oXot57wIoXjqs5pPRuM6vrudUUwfjdI46z9m/ymK/Oor4nmJw
         wWVSt2WgVzyc0DnDX6enAFsrM2SYnoZJRqqSOCa2sfRWMCA81Ne1kDorZOlzKXgHm7jy
         RV9psQgZuUMsOapgGOkzUGJl+Zi/oBViEKw4zh3kbPSqBUmqustqZKe7wejlbjB0FP3R
         Jv9kcsCxga5LXyH52qn0a5Vzs8iJYspD/p5YFjKZIN8z73coj3r9lWDyHW6xt5MPcM9A
         REiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sAZwpsvpNd8mq9nsqgEh8qKdU0GjNG67jmNpaREej14=;
        b=AHvZzXb/GXPe5e0joW8mZRfNmouvAP+DQp9aiitwRBOkICEFoxKkxwbro1JR0uhNxv
         BvEMJPb1FXIHSJ1dwRBc/ADgFmd0tvo3Ui4MtHzWGcx4WT9fgMCHNGL/aNXVTLOFiUHx
         VxrHtIQQzp3h0IDFlyyINHIu1zodX58xjTDMSfRJi73btPcYDXnXr81FNUwiFY5jh0H4
         aTwEQS28IpE9OdyZZN8hHNULvvaOhMED13zC26955Msm8pFtxdCv8Qv5B/MopdVFUSg1
         5VvNk4P38pmqnVG/sQS2ybfqWFGD1dqoEtv29vCqm/mQDsAlkOjcHXg6LPdo9JS0FFtn
         a7uQ==
X-Gm-Message-State: AOAM533biK4oVqI0nDOTpkP8p7z+v1JqCTA4Wj0VC+ltZXuKghw7MqdJ
	2lYKcq0kpsutAb2nNsLjIGc=
X-Received: by 2002:a05:6a00:8d0:b0:44c:26e6:1c13 with SMTP id s16-20020a056a0008d000b0044c26e61c13mr22359382pfu.28.1634462994046;
        Sun, 17 Oct 2021 02:29:54 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id gf23sm10198222pjb.26.2021.10.17.02.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 02:29:53 -0700 (PDT)
From: Kushal-kothari <kushalkothari285@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com,
	kushalkothari285@gmail.com,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	nsaenz@kernel.org,
	bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2] staging: vc04_services: replace msleep() by usleep_range()
Date: Sun, 17 Oct 2021 14:59:00 +0530
Message-Id: <20211017092900.134752-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)
in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.

Signed-off-by: Kushal-kothari <kushalkothari285@gmail.com>
---

Changes from v1: Reword both the subject and the log message.

 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6fbafdfe340f..80a7898c5331 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -857,7 +857,7 @@ vchiq_bulk_transmit(unsigned int handle, const void *data, unsigned int size,
 		if (status != VCHIQ_RETRY)
 			break;
 
-		msleep(1);
+		usleep_range(1000, 2000);
 	}
 
 	return status;
@@ -894,7 +894,7 @@ enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
 		if (status != VCHIQ_RETRY)
 			break;
 
-		msleep(1);
+		usleep_range(1000, 2000);
 	}
 
 	return status;
-- 
2.25.1


