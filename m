X-GM-THRID: 8060695216128
X-Received: by 10.236.61.197 with SMTP id w45mr46723683yhc.54.1426248031669;
        Fri, 13 Mar 2015 05:00:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.228 with SMTP id 91ls1641684qgh.14.gmail; Fri, 13 Mar
 2015 05:00:31 -0700 (PDT)
X-Received: by 10.140.147.130 with SMTP id 124mr48024842qht.8.1426248031494;
        Fri, 13 Mar 2015 05:00:31 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ni4si302285pdb.2.2015.03.13.05.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 05:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rd3so29035418pab.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 05:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=HVysEAPogRjTDAZ3hJ+0M/nce2wbHDyH30Fgst2P/rg=;
        b=AyAemcI9A2fLn5H4FGb0hV9qXpXVXCbLy7kEVJqoD7BN43xEVtOrDixl4j3jkWJjvk
         IAdOY2uKlepNeWjvKw07+Av96+wWAdZUedzJZWyc0xZTw0JeeDsq7NqiRL/BrsQKwDPx
         +Dx5aUBWIpQXd1Bp0xFz66En9QWdo054P/nPvmE3tScWMSjVyr7wJQfFEl81hjZwtaI0
         Zfn8Dq5nzXWGhA8iPZKlNH/fm4LPNhvtyp1y/aAMK1mZ5vZ23KBPcwH0KSblsULAmK0y
         e3AjieW/8Akqf3SPGpsNgq1YiG/ICnfVB3NfxPYmKXj/wMHIylfC6rKeozeSv+c+TvZI
         xucg==
X-Received: by 10.66.218.10 with SMTP id pc10mr101331717pac.116.1426248030981;
        Fri, 13 Mar 2015 05:00:30 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id fl4sm3261401pab.8.2015.03.13.05.00.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 05:00:30 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: remove break after return
Date: Fri, 13 Mar 2015 21:00:20 +0900
Message-Id: <1426248020-18956-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

Remove "break" statement after a "return" statement as
it does not get executed.

Deadcode found by coccinelle --debug option

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 42fdedd..850f7e6 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -3811,8 +3811,6 @@ static int ni_serial_insn_config(struct comedi_device *dev,
 			      Clock_and_FOUT_Register);
 		return 1;
 
-		break;
-
 	case INSN_CONFIG_BIDIRECTIONAL_DATA:
 
 		if (devpriv->serial_interval_ns == 0)
-- 
2.1.0


