X-GM-THRID: 6463670591377375232
X-Received: by 10.202.82.150 with SMTP id g144mr2852320oib.1.1504940584964;
        Sat, 09 Sep 2017 00:03:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.10 with SMTP id g10ls1333796iob.18.gmail; Sat, 09 Sep
 2017 00:03:04 -0700 (PDT)
X-Received: by 10.31.47.198 with SMTP id v189mr1835614vkv.107.1504940584041;
        Sat, 09 Sep 2017 00:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504940583; cv=none;
        d=google.com; s=arc-20160816;
        b=gb5xDtRxRol7nVgf3ayQhJnU73UZLi7qJKR7NTX/Itiyj2AcfJflAq7cMFZdHQKNzR
         r3GJiC+IDHBjRoZsMd9PPXEakOes6aL1xtXioD31VD97qQdxUHcYS7aqZpjbFARBnduN
         jPhG29EJC2ZzMoJ9XPV2fu3u2LiWsNY02MGWW7l130Wbf1029DZN5D0V4vchRlAibdUj
         gTweCP52It+dwn2Xe2uuuO5twElka/wpgVHJh4dC+XK3wJ+wOVmXGze3G9Yis5l2hM7d
         +vjoihS177e0h/3tTx0dm4qwNjzko3LpBe3k2ueTJhirJUaepzZEiSuomZmM2QKda8Jr
         l4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Nc0d/gNAeJ+5LxbbknNm4MbL/ZFkF8GIj8g7aXjNpMM=;
        b=lW2ItrkSK5joh+38ber4ZVtRdW0vR7Dy+FZ/8d51K11EKUULtcTfR/iR4LCL8Uq2ed
         jqtp1CYbOpkm3QPazYjNYLwrs5NouX2Bb7S2tyFzsXRw+aJCM7GSWEQJ5sZDF5gPURs9
         671DeiGojpbxID1iZY5SXyeDTsS4l6lvn4N1qyAOT2tgYZxQe/nFHtq29mQ5wwBlNbwR
         YBGzK6p5FMOCpY39ptJGHxbWv3IfLGvcOfPe4q/Tk7y/hnLM+Dwc5nJWOwYRXBenaIMN
         /45mQEkdSto8IQRrK22bCykTO9wRekK5ePf8OdBxVgNyunuUuNbFQ9kBERn/6wt4CpC7
         ltng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtYEhGhy;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id j20si433755pfa.18.2017.09.09.00.03.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtYEhGhy;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so2461776pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 00:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Nc0d/gNAeJ+5LxbbknNm4MbL/ZFkF8GIj8g7aXjNpMM=;
        b=LtYEhGhyN1DwcnTuazacadpSMwCOk/K7j/tiBfvA1//+7jgd2xcsjqx/uAMvLfDVf4
         LrE9JNcuG9S8DsO7A41cBqSEGrA+CnFbh5Y6bQRm0Qr43NcBlSHMBOfqFskT0an4PtKI
         s7Q5Ug8a9JZZeUVon3Sicqn5VM9wN6YhJ41r439QD0SmQDNVy4BdeUCQtxmb0H3Ms0OR
         51ZgNgjW0mAd8DlWbi7UQ3buT1+MPBCIp71+sf/wDe6j1oXXqTcGdks1LBqHNUy3SEGR
         tutAIEpiXRoCwEkSBySE0jHO0X5SFcR06Mlzqi2eb5XAfaDzM+OvIwomDXmPk3UPOPWk
         xGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Nc0d/gNAeJ+5LxbbknNm4MbL/ZFkF8GIj8g7aXjNpMM=;
        b=arr5OQTHdV7yD0IOc6eezWn5jxMvOEwY9yooy9vrFDpX43v+w0yxbevNwm/E0w3gxl
         Mq8tSPfDb/C7IdEZt3WxnMixlb3lc4QoeCHJE4I5DZIoX0ICG2Z+q0Zuuccdob1EGeaA
         I3cTc2JbBXYUuM7Q7Ptc6Y/4g9gYXk3YTJ1pm97Q9z7T689z4wqlUN9aENrB/naDlMSV
         M8A6H0vuMBZQTuN3IPGrc0gvX33AJJc76Ec+eTpKgOoniaXGnccNEnTAfoSQhf9ilNVp
         ADVcDpkthaAnLmtA08vwuDB0RNeEIPLI4FhRev8YGrLbqN1pW8qcImvHkEF46uvFaKKh
         ARaw==
X-Gm-Message-State: AHPjjUg1HF94Oiz9n1e3d0sFY8AdNAf59U5peT+WHPVFu3uLS1y8tYle
	zZtH4qSvHYkIYA==
X-Google-Smtp-Source: ADKCNb6tVHnI0NSckED0FOCCQ4WK321wuQUPuc/PM/dnLkmEmX/6qaz7LrdKsMt/3Pahd9HE9QGRoA==
X-Received: by 10.98.79.23 with SMTP id d23mr5621908pfb.105.1504940583798;
        Sat, 09 Sep 2017 00:03:03 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id f70sm6976663pfd.74.2017.09.09.00.03.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 00:03:03 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: unisys: visorbus: Declared char * array as static const
Date: Sat,  9 Sep 2017 12:30:42 +0530
Message-Id: <1504940442-27511-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

State explicitly that individual entries in array will not change.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
index 6d4498f..6f2a010 100644
--- a/drivers/staging/unisys/visorbus/visorchipset.c
+++ b/drivers/staging/unisys/visorbus/visorchipset.c
@@ -1162,7 +1162,7 @@ static ssize_t deviceenabled_store(struct device *dev,
 	struct controlvm_message_packet *cmd = &req->msg.cmd;
 	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
 	    env_func[40];
-	char *envp[] = {
+	static const char * const envp[] = {
 		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
 	};
 
@@ -1263,7 +1263,7 @@ static ssize_t deviceenabled_store(struct device *dev,
 chipset_selftest_uevent(struct controlvm_message_header *msg_hdr)
 {
 	char env_selftest[20];
-	char *envp[] = { env_selftest, NULL };
+	static const char * const envp[] = { env_selftest, NULL };
 	int res;
 
 	sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
-- 
1.9.1


