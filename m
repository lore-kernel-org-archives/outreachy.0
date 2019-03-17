X-GM-THRID: 6669330275448651776
X-Received: by 2002:ac8:2ce8:: with SMTP id 37mr7372455qtx.59.1552825769252;
        Sun, 17 Mar 2019 05:29:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3fed:: with SMTP id w42ls6395473qth.2.gmail; Sun, 17 Mar
 2019 05:29:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCLm4dHX/YkTU5RoY2+i+SlFk26TFw3eXNiXXvcbe82vo4HHKdpnPtEiQu639NyX7D85he
X-Received: by 2002:ac8:73d8:: with SMTP id v24mr4306784qtp.5.1552825768728;
        Sun, 17 Mar 2019 05:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552825768; cv=none;
        d=google.com; s=arc-20160816;
        b=mLrE5X1LSUZA3VZF+JvGs28hDLdTojIjv300Vt7Q1YGmPqGzdaU+vCpBChOqIGxbvg
         wQghL7xdWYiyTq5XjbeB6roQuz6sbSmPHjK/ZrDYBsPg1UEnbkPNtBpQ7+odSC+NVpUY
         KOALUzC7LDW1KWmMXN2Uhhak6x71IizmPlSSfG4yHkk1pHZJltTX+9aq7X43Z6Ut5QU/
         B1A4gPLHJ9K4y2PYnHNswZW43w3TiOIQqs0au6N2BEmH8SkqyCjm+hhIgJS/l9PNGuYT
         XA1SprKPANCqZGkE+lzizpPr1c4Z9DCkp1GqE6asg7JPBqBBlBV7BFxiEkJXs8Lov7X1
         6UoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hACM+SxN+jbmeUh6SIfC1RnxsPODZ9NvXUELawKR+b0=;
        b=1I4+O/dK5fTel18Comcxi3arNJdQ+GNsK9SN/6Usm/NEUCaISUzQm2oUTz7ov4F30Q
         7qdz20lHIpNy661narNeKyyl4PXmsCo1M3+eFIZ/2TXw5FmtepzRshVar44hOa/LTXOD
         4qF9GxdlJ/WK5v/TYXu0kN8qhOVtVD7gRZMqzVdAEHQuh6h+tW3mZ04KtxtAoOyfV5Ep
         hGgJ/z2lSXy/77Pz1+fXt8RmOyNA7m8A3sBOMcjnQXHJcDYY/z10030TNdUQcxAIxocS
         rLCb263+BoFIsvxWlH9viz+9O2mzd/6Gc6ufAzpYs2NL7r6J/4bSF4ZyFc69jYZCcRgG
         +cSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFcohtUJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id u65si322685qkc.5.2019.03.17.05.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFcohtUJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id l11so9471922pgq.10
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 05:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hACM+SxN+jbmeUh6SIfC1RnxsPODZ9NvXUELawKR+b0=;
        b=KFcohtUJTl1Vdp62utzwUf+dkJIR054BUr2XP+/jw5ovoFu6v0155K8pjhSHRtLh+f
         LIf+Px05+G9AwlogVJ4GpUX5GREpNhIQEG0Cj+g7f/CJBe66sNvTewAK+M5GyCAQ1ZsB
         1JXzGx8uo3MGBjt5RZ3s9FXYZNBBcMs5923afkdNm0Dp7HBSEVuhovRttB/nnjSrRwbO
         jUCtIOESHeFjcCan4pnl4Z+EmGZM42y3ueUhW0jtP3mwAXkH+D+8zOZwf73djeAYdCRi
         7R+qiYbxuOf/EMTm5kdT3hm0GqEgi5Qs1GkyN+OrJ4TKbaNZtlzYllGrlqUu7VNTf7tM
         9Y6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hACM+SxN+jbmeUh6SIfC1RnxsPODZ9NvXUELawKR+b0=;
        b=SuaS98orr98owVXatc4XFNiN57P7pRULa/bkw7x4jR7TpF3oYTmvk3jSNBKXEwc8lX
         sNpqDbbf9aIpeSODo4wg947juwyrx57jYGCII3lzhhYuRPvu+uJXY94jeruxkCiiQScw
         UoP/2FgPOwpeGg5PituHz16hsdbQOas1czjE0OKQVffzw9qXSBktJAMTv3Tpdj01hYC6
         UZyLVqM6MHEqRyy9IQ+WZkWaamVVcpFYJ6XnveZTC6Q1sDv9FeFsf16uinqxGrz8OHec
         q+i1OKyMB7HFBsoqwvT8GcSbucPj4Susm2mi4E1AN3n0BXlzOKaevuTfyYISirh2RVpu
         +viA==
X-Gm-Message-State: APjAAAXHhtH+YriaoU7QLePi1YeBvfBx6bS2njz9agUKEL6D4GM/B96a
	bLvInGFMgpy8pXBFmb1LFAVWCohy
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr14557864plf.210.1552825768462;
        Sun, 17 Mar 2019 05:29:28 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:aca5:5100:dbc9:51a6])
        by smtp.googlemail.com with ESMTPSA id j12sm2199323pfa.33.2019.03.17.05.29.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:29:27 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_ap.c: Fix multiple blank lines
Date: Sun, 17 Mar 2019 17:59:15 +0530
Message-Id: <20190317122915.6302-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
References: <20190317120729.4811-1-sanjana99reddy99@gmail.com>

Remove multiple blank lines.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

CHECK: Please dont use multiple blank lines.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Remove only one blank line.
 drivers/staging/rtl8188eu/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index fc500da2d71f..c360856a86ec 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -368,7 +368,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	else
 		sta_band |= WIRELESS_11B;
 
-
 	psta->wireless_mode = sta_band;
 
 	raid = networktype_to_raid(sta_band);
-- 
2.17.1


