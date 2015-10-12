X-GM-THRID: 6203527091850313728
X-Received: by 10.66.221.7 with SMTP id qa7mr25729151pac.33.1444683211788;
        Mon, 12 Oct 2015 13:53:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.109 with SMTP id j100ls1153413qge.57.gmail; Mon, 12 Oct
 2015 13:53:31 -0700 (PDT)
X-Received: by 10.140.238.83 with SMTP id j80mr25840982qhc.2.1444683211239;
        Mon, 12 Oct 2015 13:53:31 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si1902875pbb.2.2015.10.12.13.53.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 13:53:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id rc13so28012958pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 13:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mp2SSkSFl+rVb33kaIwyUZR3ZPupHmK2LCwjW1Qp/ws=;
        b=gJ4WA+BFTugik5kr47fj8wDDnrC6fYeb5yWR3y521PkZf7KTa9ro0kxn1iFgPBeFbt
         1OZEHE7W9hH2JUKnTx8TtvY5D+hpb+ZdkrDuDCnZ9Ac6Fm9XuO4EleN+pKQXYbtsTaaV
         vaa2ontuXZxlXurBB6KfEKSppf4i0bEwp4WY5ONyluGzL9+Rz23tYNpY33Eio7dcesyc
         M+FdIiEBqXIt0j5DudkRgtXuyqsAlDSpte/K2xs3N4zXijLPbKyq4/hX/fJz+3mcI5Ye
         eH2vYeHd07jZCpiietk3MXc+V9qjA3oC3HxHgmqn/XpbnfRDBdzC4oO8hevSyTc2RcAQ
         +jjQ==
X-Received: by 10.68.219.169 with SMTP id pp9mr37343498pbc.115.1444683211084;
        Mon, 12 Oct 2015 13:53:31 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id a17sm19976072pbu.55.2015.10.12.13.53.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 13:53:30 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: gdmwm: move variables to right side of comparison test
Date: Mon, 12 Oct 2015 13:53:22 -0700
Message-Id: <1444683202-10946-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151009061314.GA31693@Ubuntu-D830>
References: <20151009061314.GA31693@Ubuntu-D830>

Move variables to right side of comparison test to improve readability.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Changes in v2: clarified commit message and description

 drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 6e8dbaf..69f00cc 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
 		}
 
 		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
-		if (T == TLV_T(T_MAC_ADDRESS)) {
-			if (L != dev->addr_len) {
+		if (TLV_T(T_MAC_ADDRESS) == T) {
+			if (dev->addr_len != L) {
 				netdev_err(dev,
 					   "%s Invalid information result T/L [%x/%d]\n",
 					   __func__, T, L);
-- 
2.1.4


