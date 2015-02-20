X-GM-THRID: 1550436007936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9eec88c8272265f5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr1527986lae.7.1424464954431;
        Fri, 20 Feb 2015 12:42:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls176258wib.31.gmail; Fri, 20 Feb
 2015 12:42:34 -0800 (PST)
X-Received: by 10.180.80.7 with SMTP id n7mr91183wix.0.1424464954175;
        Fri, 20 Feb 2015 12:42:34 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id el6si184518wib.2.2015.02.20.12.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:42:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so7776961wes.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FpMiWO8GmuRx5RWdZfmEd6Y0tzIB4v32FrkPEfN2EyQ=;
        b=s/4Lby3mKlW1B61ShZvgCY1K90UDQ208Av+2lynmFKvTzmkNkpTNS46tClXDHgmwJG
         So6G5w5tu2nJFa0eQ1Mqt/WdO6aOCuw+MPL/NnVyW79qD9Iw0qhxKSMI4JTlxbC8+NfS
         WiGkdZ1Y35iyYtVPf0qadHDjWGOQ2o1yYGl7I8eyRpYkgoOlvehVMYqI4Zu/Vh2T6tmK
         ApUoxeAaFCVPXKzETA4mqj7mmv5+oCroBXOkqB9u0k6BAYQPIx9T4W8PQ9seOMobGKty
         Ld2sy8NSP5Pk2JS9lQhSFN4lab8ZwQfjFYHcROu0I4hWGXO/oqCsWPfAtdKIuqtMgxRL
         hstA==
X-Received: by 10.180.12.233 with SMTP id b9mr391711wic.49.1424464954101;
        Fri, 20 Feb 2015 12:42:34 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([81.214.238.226])
        by mx.google.com with ESMTPSA id fo17sm43632912wjc.19.2015.02.20.12.42.32
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:42:33 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH 2/2] staing: rtl8712: else after return or break warning
Date: Fri, 20 Feb 2015 22:42:17 +0200
Message-Id: <1424464937-8767-2-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1424464937-8767-1-git-send-email-gamzepolat94@gmail.com>
References: <1424464937-8767-1-git-send-email-gamzepolat94@gmail.com>

This patch fixes checkpatch.pl warning.
WARNING: else is not generally useful after a break or return

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 243c8d8..f3eff94 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -517,8 +517,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 		return _FAIL;
 	if (psta == NULL)
 		return _FAIL;
-	else
-		precv_frame->u.hdr.psta = psta;
+	precv_frame->u.hdr.psta = psta;
 	pattrib->amsdu = 0;
 	/* parsing QC field */
 	if (pattrib->qos == 1) {
-- 
2.1.0


