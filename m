X-GM-THRID: 2371778248704
X-Received: by 10.140.196.209 with SMTP id r200mr6712572qha.0.1424601753285;
        Sun, 22 Feb 2015 02:42:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.227 with SMTP id i3ls565070igt.38.canary; Sun, 22 Feb
 2015 02:42:33 -0800 (PST)
X-Received: by 10.66.119.174 with SMTP id kv14mr6850233pab.21.1424601753027;
        Sun, 22 Feb 2015 02:42:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id bx1si2770144pdb.2.2015.02.22.02.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 02:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so18421010pdj.13
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 02:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ET0vsHeb2dPg0j+vePOSGXENPKdXij/+7WTRlhhU+Ew=;
        b=MNfUwionHHAQgLSr/+47vM05gQx7Gwr+Uz3bFTcXxVhcTAs1P+WFrE1xS1hsIZxH6O
         FO0AIaKSL+hA/sW7y9bzuzQDe3KNTdr09C+dV+XTd/ERptJDcr2LtX/k7wr3cqxshLRf
         NQJaAeC26XLTaW14Y1qhm9QMugLf+R6nZZqY+2sGxKhjxHomsv6bBgW2XCiafJP78jQx
         z9tXz5FHuHufUA7PtsW+mtoyEBII0XTTz7UWYJx/1aGx18kWuPei0B8FF/b+W0Wxky0V
         50jZ5OpYGGEj4WwBpqxW5MkRqx3fx/15d3jGYwGarmTRn48CMOwDmHTbL7WJGfDZ0tOc
         uT+w==
X-Received: by 10.66.249.39 with SMTP id yr7mr10502989pac.43.1424601752952;
        Sun, 22 Feb 2015 02:42:32 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id zd14sm17734662pab.20.2015.02.22.02.42.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 02:42:31 -0800 (PST)
Date: Sun, 22 Feb 2015 16:12:13 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Remove braces from single statement block
Message-ID: <20150222104213.GA1215@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove braces from single statement if condition
to follow kernel coding convention.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index 3b28754..a71c542 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -154,9 +154,8 @@ static int _rtl88e_fw_free_to_go(struct adapter *adapt)
 			break;
 	} while (counter++ < POLLING_READY_TIMEOUT_COUNT);
 
-	if (counter >= POLLING_READY_TIMEOUT_COUNT) {
+	if (counter >= POLLING_READY_TIMEOUT_COUNT)
 		goto exit;
-	}
 
 	value32 = usb_read32(adapt, REG_MCUFWDL);
 	value32 |= MCUFWDL_RDY;
-- 
1.9.1


