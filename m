X-GM-THRID: 6670815133562830848
X-Received: by 2002:a5e:8a07:: with SMTP id d7mr1205526iok.7.1553170200877;
        Thu, 21 Mar 2019 05:10:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:188:: with SMTP id 130ls366771itk.0.gmail; Thu, 21 Mar
 2019 05:10:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxbefdSBGctt1g3CWOedkYDpd2o3W8qRuBMqhIP3q5GwqYNsp6ZHO+Y5SNSXG0GMOUqO5Y1
X-Received: by 2002:a24:6947:: with SMTP id e68mr990991itc.6.1553170200241;
        Thu, 21 Mar 2019 05:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170200; cv=none;
        d=google.com; s=arc-20160816;
        b=OnQpezz6O6MZ/29/I4Rh8JSV9lSt0vW5nOfH7Ae+j6jTN7ttOULjmV6oxxJB+fRJJP
         u9gJjwf4VxfqbsuLbNgIk7SAB5Mjf3gaNgfGiMKCGSf/lq4KIahSG+al7kh9wTjtHA3y
         sDTFP+BefdZ5TdcEHYApN+oI0Q930SviGgD1N6tDDLiIRS9B6E8J8w7Zcz3mDAeEnc90
         0bX1fVoUy+pa5BPtqETKrSD5kFc7HisyqTFemLvQxn9nnXFNv/3jBsOfuPKNP8D3vGJ5
         3GyAsf7bNoVC2HVG3D7nmQDIxzhqjMheNAYcNvjOVTa+DY6n8GKWLXBU4mt3ydM6OMrq
         d8MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EcY/I7Hi/CYyUZQuqltEX1e1NOZQeDW3yn88/C6+w8w=;
        b=DzDvqWdtQP0B1MC4iZSx7A/QqrP1E6bh2XVGVJrZ3ZuUUN268vIBEjdayHrOAA3m14
         gjEi8HQZV8OzJvNJ0V99uBcm7h9Mmbxq2mDmbzS9JQXTiBqScDJ/Rn3772O07oo4VMNU
         lgEASaw29PMgevkj9hsjc4xRBZQORmFb0bk+Of3Qs+QAnHFB+DZdsfuVnDqRfxzyBMSq
         YiZtM6Ucs5oJvq/F4ggw9sI67u5VPNPmCUtE8ce0uZlm2jPw4cN8wTraa8vKmMXxlucc
         hzeSZ/uNkxD1kdQ6k8NrQrx9Z0SPMfHoAXFj8UBRZlmvUeYpiyQECuwzAGEGD2I0pk7o
         Hxxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r8uJZtmu;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f13si258029iok.3.2019.03.21.05.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r8uJZtmu;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c8so4155494pfd.10
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EcY/I7Hi/CYyUZQuqltEX1e1NOZQeDW3yn88/C6+w8w=;
        b=r8uJZtmuWetPxN3v63d1TeCfzJvBShxIE6hvxWbMFID+dCv21hCoxVQIDwNaNi3/Rk
         8cZok01vH9bGJnd9TgU++di8V/jWFxaCoEZO4S+N4pVxgN+7+xxfoPTBmYh4zf4TMwSh
         4a/5YlHWC96EavXSPawmO8uAn5kOM9Q4X2PCFoMSIvadIpQdjyg8wKkz3zTxqwzfZV+F
         lODXmjROrL/REzzTQL1guAS3u9CN8t9fK9CYxRQFndppgUmNzSLG5PDxjH11g1m1Wi1p
         r/nG7y/mqICgrH6ZcVnX4ILoYucvhN51R+wuHyCfaMK1DvaWjt8Pya92H2uwskGmtU0j
         UyJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EcY/I7Hi/CYyUZQuqltEX1e1NOZQeDW3yn88/C6+w8w=;
        b=uPEP64XEEaYZth5NBAPZKfqe9488qLHn8zy5QsVPehSru/zPCFDgzE4DKPZ7DsUnVl
         1BoiY3OYez5UqanTTIpmWWKCbDa0sXSXRJ9LSfjNg7sAo1W32R6U0Qy6qsjjGMoIsBy3
         YOV7AVVZZiR/+PogAXYeiTICvivcGclcFRAroD8w5MuhZP+qBzXzvRD8pU30GBa8YeQy
         dshHE7vxt6KSwbyrO/XmyRfvaRucofwoSMN2zuaqygJeU46k1+XMHjLBmvkSL33Inre0
         TbGEVtSypIWn7MRcGmlb+/5aYhXZTkTDFh5st92l0jRApvCMM/DRyYOUO1fRZEUv/NwC
         Eqog==
X-Gm-Message-State: APjAAAWVKO08xRFygStq6jd2hSGTxeHykGDHaEx6vp3LVZKRrHPEZjzu
	89xQ9ZVOxXW18hrphcAKQbI=
X-Received: by 2002:a63:d015:: with SMTP id z21mr2898240pgf.215.1553170199588;
        Thu, 21 Mar 2019 05:09:59 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:55 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 5/5] staging: rtl8723bs: include: remove typedef for struct pno_scan_info
Date: Thu, 21 Mar 2019 17:39:08 +0530
Message-Id: <20190321120908.43680-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321120908.43680-1-himadri18.07@gmail.com>
References: <20190321120908.43680-1-himadri18.07@gmail.com>

Remove typedef for struct pno_scan_info as The Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 5aeaf98f459d..a0abd5ddb4f5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -187,7 +187,7 @@ struct pno_scan_channel_info
 	u8 active;				/* set 1 means active scan, or pasivite scan. */
 };
 
-typedef struct pno_scan_info
+struct pno_scan_info
 {
 	u8 enableRFE;			/* Enable RFE */
 	u8 period_scan_time;		/* exclusive with fast_scan_period and slow_scan_period */
@@ -199,7 +199,7 @@ typedef struct pno_scan_info
 	u8 channel_num;			/* number of channel */
 	u64	rfe_type;			/* rfe_type && 0x00000000000000ff */
 	struct pno_scan_channel_info ssid_channel_info[MAX_SCAN_LIST_COUNT];
-}pno_scan_info_t;
+};
 #endif /* CONFIG_PNO_SUPPORT */
 
 struct pwrctrl_priv
@@ -280,7 +280,7 @@ struct pwrctrl_priv
 	u8 pno_in_resume;
 	u8 pno_inited;
 	struct pno_nlo_info	*pnlo_info;
-	pno_scan_info_t	*pscan_info;
+	struct pno_scan_info	*pscan_info;
 	struct pno_ssid_list	*pno_ssid_list;
 #endif
 	u32 	wowlan_pattern_context[8][5];
-- 
2.17.1


