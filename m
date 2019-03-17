X-GM-THRID: 6669413684549255168
X-Received: by 2002:a81:8a46:: with SMTP id a67mr7121123ywg.26.1552843880937;
        Sun, 17 Mar 2019 10:31:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:9b8a:: with SMTP id s132ls2896910ywg.2.gmail; Sun, 17
 Mar 2019 10:31:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTF2HKRWylHzkoSZ05GRxsIE36mLL+5D0S9xv0jH2+GeImOEYqIjk62g1TM4lUvz1HYEtS
X-Received: by 2002:a81:a60c:: with SMTP id d12mr2482538ywh.3.1552843879868;
        Sun, 17 Mar 2019 10:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552843879; cv=none;
        d=google.com; s=arc-20160816;
        b=ErSjFeRjqTpvYoSZ6xGnOgD5ShuBT7KP1KRa0db0P/zcXNKSw4inY5ZeMHJrzRgCvU
         SKLl/7B7AoVJ7VF+oKGU9DJ4EzG0ZBPE30uDP4i5dc5+6x4xILcylT4PEG2DuM4m1pQU
         CGce17KAQFhfMSWj4lbBK+diUC2pLivpXeAXoActQza7Opq/g/SLJXelUPA4pM+c4qgC
         fE+jumNs8M3Yha721dpJm5mX98RMJFOa1Pc/Jfd2TZdz1a+SNCt/eoYe0GjZ6e/Ti/nP
         XZFuELYe4a497Y3DfbhDX+fKpGpx6+5pUjTTjqdan3yACzu3LSGhPLroBMJqILM0coRV
         8VjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lQeC/+9Tn6FRjCg4OVCFVRVQNcqddtwIfJ7wBtbtddc=;
        b=GHkdVcbkWs7WBLFlaMDhEBOZgrmWwIbI0ajqyY96Wh8pH8c108EOD/s/X3/RW5PZ4R
         3ezvQDOwRRPVg1ovy9oTXIzD3qOUyioUe+lM4ln5KYHItxKhw5pKoerEexzJ4bzJxNWE
         WTWO/0mP+o9Q5guxZ8KF1bkIeveRJyz6g9nkc2w8IKcbzzB/TNiQaZuEkpkAy1D3ICn9
         ELEav7CEibaxoPm+ug+o53nDCowHsNiegzp90EnQnon0Tr+zGGJaNHabOU6akcyfMD/b
         SCG1jDRyjbgi+nel/pQktbiI/khwk05xa6dxgOepUOJJgmlpGV9nKajJy6ChbMVrVHhb
         iqmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CFwfNq0y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j16si313806ywa.2.2019.03.17.10.31.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CFwfNq0y;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id r124so9756326pgr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 10:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lQeC/+9Tn6FRjCg4OVCFVRVQNcqddtwIfJ7wBtbtddc=;
        b=CFwfNq0y5OpW+RJhEJcFOPg5fR2nVt75F5BjTqWo12e9/j/pwFUFkllpK7aWxNAYKy
         d+RTtK1gzhg6QXGH3hXFDHsNZZfbk1c0ZoDs3o4PxmolTTZRSWvD/hRyfm6Nqa11fge6
         zcu6suvyHgYhVmIKSDG5auS4HOuhubClgpA1MdgiT30gdBo4fTWT+kEnxTtfpkCMx1lx
         16iwdvFp1OlpgBEt4IWQ7unEkeWrpQ9fKAS1e3pWsyyiVjnAZ/fhfy9zDXVrPb3uD+C8
         u66cYpWhKxcxhqtGwhm1OM6V4xFtQDsl2fkx7gerT/UFlhppdWoF5crT4mlymHt6p45o
         7YGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lQeC/+9Tn6FRjCg4OVCFVRVQNcqddtwIfJ7wBtbtddc=;
        b=RXQpasABYDGq7sSiliaWUfmNRQH0z9UuoaoqHw4HSKHG3rCyPOvF3ZH4W7maVwykY+
         T32CJsX1d37kpTE55+rWw02AyY/isRe2pWhZ9l+9tN0+Rp4dVstmMrkW8uSvrjlwqaiy
         L1jILpfzRDew9Fnnhyh7b740dHAAekOz7uzHC++iYkDorm9gCcT+0iIQXWYWr5SZIDE7
         qxb9xd6dJX5WXb5HSJ0ogw9wxmxTpcy6mkDxpbVYpko4g/Bsbg1EpIyYPeaeWGR8AWvn
         H6qsAx6Qy2IRln6C0fnM3Wf0Ly6bM41UJoi7Q1ygioJ8EOrobViePOIFqNi6lDK/TwnC
         5EzQ==
X-Gm-Message-State: APjAAAUdp5410lU1OJYWfK+3hfCFclo5wuA5TrySwQ/JjzlKZgf/oow1
	QmmUQ58cbxgMbc89Xd0yM1U=
X-Received: by 2002:a62:5c4:: with SMTP id 187mr14853572pff.153.1552843879136;
        Sun, 17 Mar 2019 10:31:19 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.8])
        by smtp.googlemail.com with ESMTPSA id z12sm10370695pgv.0.2019.03.17.10.31.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:31:18 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gasket: gasket_interuppt.c: Fix string split issue.
Date: Sun, 17 Mar 2019 23:01:07 +0530
Message-Id: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove string " across the line.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/gasket/gasket_interrupt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index ff61b782df30..da517c2990ea 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -97,8 +97,8 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
 		 * modify-write and shift based on the packing index.
 		 */
 		dev_dbg(gasket_dev->dev,
-			"Setting up interrupt index %d with index 0x%llx and "
-			"packing %d\n",
+			"Setting up interrupt index %d with index 0x%llx and
+			packing %d\n",
 			interrupt_data->interrupts[i].index,
 			interrupt_data->interrupts[i].reg,
 			interrupt_data->interrupts[i].packing);
@@ -120,8 +120,8 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
 				break;
 			default:
 				dev_dbg(gasket_dev->dev,
-					"Found interrupt description with "
-					"unknown enum %d\n",
+					"Found interrupt description with
+					unknown enum %d\n",
 					interrupt_data->interrupts[i].packing);
 				return;
 			}
-- 
2.17.1


