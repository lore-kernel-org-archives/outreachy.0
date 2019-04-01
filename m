X-GM-THRID: 6674807123699826688
X-Received: by 2002:a9f:35c4:: with SMTP id u4mr7113880uad.23.1554099638513;
        Sun, 31 Mar 2019 23:20:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254b:: with SMTP id l11ls1373291uan.1.gmail; Sun, 31 Mar
 2019 23:20:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhORUkq6sm2c+zQjSIcpJmGFl7/vJO9ap0D6K5Bmg0nyJvgWydEJWU/I9iakMZj2HqQdIj
X-Received: by 2002:ab0:21c5:: with SMTP id u5mr7139043uan.22.1554099637949;
        Sun, 31 Mar 2019 23:20:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554099637; cv=none;
        d=google.com; s=arc-20160816;
        b=YVqQegFeP3ytLTf+8t6ghZo+hHQOwzJzqf4ZQvGhaO34iH0vX5zuVUqc4xu0Ld2pkq
         fLxcAKdBZXbioIotffp0Ov7QhTjLSPbvDZ6jxd06xgyht/yxwF8dQzXuZKHwJOe3+s+d
         8ypLCyTj6HKH+qYhuDzxCaDRS4GKPJmniYBIvUn1YQEO9Qt40H1S5OWPSdUqa9ACr3Ef
         +8sOuSeckCdIljumTpR2aAdSGTdbY3DLsUJL3wZ9Sc8MYldMSJExLMPOmVxjDWuuiOGJ
         rNqTv78ttjFNhJiBfGq/G1SJg5zEIxwi853V5n5iSJ6VguNiGRZ2fRwnj771QgKNuCHF
         GMBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JBFXanOhgXFzP1b7C9Y9i6+bGq8W9/Fqzuc4h6HhPP0=;
        b=im+BCMeMREnh4AiavNOFq/FPf9gyvIdaCgkXPctwhwtJMUscKdhAEhwRnOmjwo1bq3
         /gJhzwV+hwEwh1VWCHB/FLJcc6/wqMWnr4mJhRCziPt7Lbau/Bbif5G5yBPc4uwfKn34
         E7v09Y/LlAAy8M/jKCsIptm2kOdXC/89dJHjHtBH0WTmTiMEGxUPABEhq9cUGo957f0V
         TW8TrUpCB+RnZQbC6qyp2wHm/nQx1GayoOCo9+2Is6gyYpnc4ot8YBxAb6wnOWiId09Q
         H8x6xAHWFpWo/MHMX3FzdpG5cUYCilNpn/twbFTvM1bSEMkOFgSNr+eByD8JsSWm4N+v
         2Gtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8DmCOMu;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v131si326837vsc.1.2019.03.31.23.20.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 23:20:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d8DmCOMu;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i17so4016355pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 23:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JBFXanOhgXFzP1b7C9Y9i6+bGq8W9/Fqzuc4h6HhPP0=;
        b=d8DmCOMuEHdNjKb9PWxNui08mO4yEllHzvmK7wXF18z3XyfkS4n0EriauExQ/a+H17
         Og6ynRny9b9ny+Qjhle8+H7w+tF62cofxCxzxZQL5NFVUqXxIfezs6Kz1Zj36BddrG1u
         uQueHxhSZFwZF82uqp+dVruGQIhHIvQbH48P6NKUrJYm6aHzuOamRoIKWt5dn5hkhUwv
         ggb37SPPnRr40ElLavj7qO3EJrw4Ik+tJJTsk3N7jMIqCeIbUq/UwB2PtHhovkbxOgGy
         H41D3JlAsNNw6RUHc3hCHbZVYy+8D0zFGOM0pUViYmDO9zgmLu6j8ASvGLHCfZFs1AHp
         09OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JBFXanOhgXFzP1b7C9Y9i6+bGq8W9/Fqzuc4h6HhPP0=;
        b=YsndiyKRs//z/6F81VHFXwqk9EWZ7+pUVWTXUFFePkysPjWwr4kxSPZwUQknezxiwu
         U9RPlryanj5z3Fe2TXyt1RhM6VSn+1OWzTgBGCTRyq6Ig0HjCGXFk0UYBV9ft8uk43C0
         Vj+iGJs7OMWWt0ed8cawulWrQI3GsqZBfmgYctj9IK/vbaLDKibpIlxJ6gxp8m58DqMq
         fg0KuufvloX/V3UtXk3c1EOViKdkL4S5f7jqBBMRUm8uyuxLUBHAb/rnFg3iCQc5OgnX
         +3PG9yF5q8mTyTZwsHmMwEdf4A/ovBR/M41j6uLBgb2HOGFnI9WA/dXZSVlqMO1LfM3P
         8puQ==
X-Gm-Message-State: APjAAAVA2vxoUOUGypM6LMcw040y67EIJzc0rp+cDuaGJLDDPbbF9g4E
	BZbTebsrPmNUb31wQoGngvq68Zzl
X-Received: by 2002:a63:1410:: with SMTP id u16mr57552497pgl.420.1554099636574;
        Sun, 31 Mar 2019 23:20:36 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.110.45])
        by smtp.gmail.com with ESMTPSA id h23sm11672366pfn.68.2019.03.31.23.20.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 23:20:35 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8712: rtl871x_mp.c: Compress two lines into one line
Date: Mon,  1 Apr 2019 11:50:21 +0530
Message-Id: <1554099621-6360-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Compresse two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 1d5364f..ba37950 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -697,15 +697,14 @@ void r8712_ResetPhyRxPktCount(struct _adapter *pAdapter)
 static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
 {
 	/*selection*/
-	u32 phyrx_set = 0, count = 0;
+	u32 phyrx_set = 0;
 	u32 SelectBit;
 
 	SelectBit = selbit << 28;
 	phyrx_set |= (SelectBit & 0xF0000000);
 	r8712_write32(pAdapter, RXERR_RPT, phyrx_set);
 	/*Read packet count*/
-	count = r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
-	return count;
+	return r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
 }
 
 u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
-- 
2.7.4


