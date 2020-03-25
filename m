X-GM-THRID: 6808044843867045888
X-Received: by 2002:ac8:6918:: with SMTP id e24mr1622409qtr.141.1585121478129;
        Wed, 25 Mar 2020 00:31:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d44d:: with SMTP id r13ls308330qvh.7.gmail; Wed, 25 Mar
 2020 00:31:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vttEMB1e5QVeIzp/5GKqSD/nRn2qKXdZ+WGm400KM5/sNx6x7srq79Mkids8bDMtoSWgf1u
X-Received: by 2002:ad4:4ba7:: with SMTP id i7mr1854413qvw.39.1585121477205;
        Wed, 25 Mar 2020 00:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121477; cv=none;
        d=google.com; s=arc-20160816;
        b=JMdMfK4OSCPmeMwYtRIHE5tgWU9hkwdph5HW5owRfXKcsvZeYRFvowzLUSZJVQGeSw
         oOAhSr0dv/LE9biHh4CX/lo4d+DKQwHg+986MP/NeyywitUjVs6mF1DbM+z186KtS+Ae
         AqiSrYjiW+UDoVlt+9l/uUvmNxeWl+2Fc2HCCZHocPC7o93gJeSpTcco98eTyk2zWQuW
         TrSKHHDVPdS4gqsEwX0DYi5NHjtX7cuMxKekm+1lSiu+0aZHFyAT1lTq7wnqsaR2dZXo
         x5dJTzPTEy4bPt1Z+KNoZnTpZpf/KXUBzDdNYTOnebnSIc2JNSgZg4xo0YOIhxu/W8UQ
         ieRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=JHYvf6u32OgnYrDQlbQxop8CMMKGVW7s2fKr53JKKBA=;
        b=OMF2ET2ADN6jfZDAxrQD0gb0XTLuZoMH/CFsgdA7v3OQ9w7iXJTWaAvT29jZVu79ZJ
         JFAV+bYXfFiRtFFzcuYtNGOsyQAkl9NBMSCmNopv0g2Gw4DlWAutsVGOG//EMwF2YC1p
         HfqZcqhq9CLVY2qbKj9BjuDaTj4GUXkwiQva3cUxAZDks+aNl/LQIKq/cqCDo8zZbWDN
         A7cGqnDRy1QGb2NkkbamxvcbchBwAnTvEJmoGHgfrkn5nW/qB5PhDagrM4S+q/oOSv9l
         RRZ95RWJYm4/imoojVJ+PQeHilmw87XLLyJGtSU8DgueypeYBFkoe9YSAcvQsf75oDNZ
         o/Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mrgIvW/3";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t24si1436534qtt.1.2020.03.25.00.31.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mrgIvW/3";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id s23so462369plq.13
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JHYvf6u32OgnYrDQlbQxop8CMMKGVW7s2fKr53JKKBA=;
        b=mrgIvW/3Q6t1ObLuYTMupETJzDvOwEHG+G3SVBaJ+3CMec6fqs6+bhxIAmE3xclkbo
         Z64X/QcK499AgXZoklxzJQs6dD68Izz8hXb37XFdC7ZBOxd0nncnxcwjEMd4VVQE44ML
         QuOpgo6MHCTOsl2wnzkKLa64lqCBNdxOOT8iRYekGpzQhdEo07P6JFP/v+eBEmW0yhBZ
         cgz0sQ+sELNWtIxHgq/hkWl7aJGpt4dg+O8cvv/XmZ/F/mkaBREf1gvlN1p1Eefyz9BH
         V87GSuJ/W+ZLu+g8ZtzBm70DRc0O1H4qxKnevCwAI1uihv4P84fPyrO/4GNn05gNVR6t
         RAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=JHYvf6u32OgnYrDQlbQxop8CMMKGVW7s2fKr53JKKBA=;
        b=YRVk67U/W4ecvUM9W34XvlZw5XW/vNdGj9bU+5LJBonDbQQCA3MTWp5LZTpQONsDjD
         hAp3SOJoxPbEkhirMh8TKMhyf8L05aRMzADrfriXRJVyvdbuQ3GU5O7cIDhXmty9NVLo
         kfMhLvLVR2c5YjGfPyTcaRgho5QCg8zv7fCX6wnV3YNt8qDgXv3w/a/VpZlvH0cJj70N
         oO5/stp325NlYtJoj8Aog2Lu3Qns8keqQfewlf5Tn4EMaVPZo4V5tz/2V3GLgSJK3enX
         EYCj3FFrzdtoaInUDMiOYcDMg1/vu1f7TA60GxjH6CSd52KjmEpfQVfz1HyRWTaOp/CZ
         2OsQ==
X-Gm-Message-State: ANhLgQ1HchEJRTCGo4UNm/y27c9eU6Nb/TP0w+EFbSIDuWHhI1y3gOru
	4fDfYrbipkeSQ522aDA85Radipmc1o827A==
X-Received: by 2002:a17:90a:3783:: with SMTP id v3mr2265486pjb.31.1585121475874;
        Wed, 25 Mar 2020 00:31:15 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:15 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 3/6] staging: hp100: Correct typo in the comment
Date: Wed, 25 Mar 2020 12:59:02 +0530
Message-Id: <20200325072905.29066-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Correct typo in the comment by changing "overriden" to "overridden".
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 0614366ef914..3ff037430f3c 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2443,7 +2443,7 @@ static int hp100_sense_lan(struct net_device *dev)
 
 	if (val_10 & HP100_AUI_ST) {	/* have we BNC or AUI onboard? */
 		/*
-		 * This can be overriden by dos utility, so if this has no effect,
+		 * This can be overridden by dos utility, so if this has no effect,
 		 * perhaps you need to download that utility from HP and set card
 		 * back to "auto detect".
 		 */
-- 
2.17.1


