X-GM-THRID: 5524303118336
X-Received: by 10.180.87.166 with SMTP id az6mr1728242wib.1.1425234120696;
        Sun, 01 Mar 2015 10:22:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls360622laa.80.gmail; Sun, 01 Mar
 2015 10:21:59 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr3224652lbf.21.1425234119243;
        Sun, 01 Mar 2015 10:21:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id ew5si527714wid.1.2015.03.01.10.21.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:21:59 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id u56so29311543wes.10
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uV+iCewJlFNXPY74Dj3j/m5rCpyGgmgt8EWTxR6LHGE=;
        b=yS5EwgnJAh+8WhLBrNG9rB2r4SuMwDV5rgGDlYlRdsvoMvfsSIjxit33nN46kM4rY+
         wYb+udk/xtiU8dwB+9bg3ZttyKHNyvB13fj6FOn6Bbz9lFDSASxAoDck2DeoWX+wP/dm
         chcSfpdUETJqBkMLYZP0rFGmsvQBNavaryXxue6pVFM0tVNtoNFDFDZdsPV/xD5B7yVX
         0Fq87UTAG5DzrjIVv6LUEmGiVpOtnIjeg+hAQR60JrF5fJqAkT+sakI3YWBLM3mowrjc
         UVpQ1vcI5wBOd7qcacqa16Epd2pJz5XHV/oIPp8SOmOuN8MiqyMqLgrpjAOIMD2CthDI
         +W2g==
X-Received: by 10.180.207.6 with SMTP id ls6mr28676176wic.13.1425234119142;
        Sun, 01 Mar 2015 10:21:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id bf8sm15714082wjb.37.2015.03.01.10.21.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 10:21:58 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH v2] Staging: lustre: Remove space after function name
Date: Sun,  1 Mar 2015 20:21:52 +0200
Message-Id: <1425234112-8267-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in lporc_echo.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---

Changes in v2:
   Changed commit message

 drivers/staging/lustre/lustre/obdecho/lproc_echo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/lproc_echo.c b/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
index 1d3bf6c..0beb97d 100644
--- a/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
+++ b/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
@@ -36,7 +36,7 @@
 #include "../include/lprocfs_status.h"
 #include "../include/obd_class.h"
 
-#if defined (CONFIG_PROC_FS)
+#if defined(CONFIG_PROC_FS)
 LPROC_SEQ_FOPS_RO_TYPE(echo, uuid);
 static struct lprocfs_vars lprocfs_echo_obd_vars[] = {
 	{ "uuid",	 &echo_uuid_fops,	NULL, 0 },
-- 
1.9.1


