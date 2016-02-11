X-GM-THRID: 6249902768504438784
X-Received: by 10.129.80.3 with SMTP id e3mr40824116ywb.23.1455168884128;
        Wed, 10 Feb 2016 21:34:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls434035iod.50.gmail; Wed, 10 Feb
 2016 21:34:43 -0800 (PST)
X-Received: by 10.50.50.138 with SMTP id c10mr13244498igo.3.1455168883469;
        Wed, 10 Feb 2016 21:34:43 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ff2si732677pad.2.2016.02.10.21.34.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 21:34:43 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id x65so23915412pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 21:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NIbzfQSJVbri4KG/pYakflC8eux4/+cEPMy0tcY4HoI=;
        b=kfSLzEZEqIBrVRUP/6pmlP92x1bj61xLXoaoIs1C4wfZ38BRmEme8Dh/VtrfXUN2TB
         KCv6r7GFAVdqYJLInVb1C+Oy4B7yKSH86wzto+Rl4gWIuiMkZDic8pJHoNWqYCUK5spN
         etK7wR6RReOaf5WGMOAdc6knGer6jvlFfT1h6Z1Nj0ecMQ7LTSN6djOyx58o4c01TOA8
         /Be8exPLC/MX7Tvq0CKCzAy68wnasLMihW8JCRP1B4qhLodXHyoP+iyQ9YRLpJZ0K4QN
         gchc6xo6RGTrBySnc+JtT9DsYVDeaa8m7s9GZuJnEB2HgTpUofrGSGU5TteegmKIarGM
         hPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=NIbzfQSJVbri4KG/pYakflC8eux4/+cEPMy0tcY4HoI=;
        b=e+64ifg5NJLJ8pY6uFLrpRu5Enwfp0UHp06gsD2XV+Yv/gz7ED6TmiHmyXauH+HCMs
         gEsmJrtE3KFw0lkACPE1oSwZz+OSTzNiwA7Y63MbVFbLgjhubsHgCG6bdVjncyeTihS2
         HVACeFsq/Dw/o6u0GlmRg7tPu4a/Gqldp67pr2NOzX97pq/A2RV3MjKX2LyKUAUTfe7n
         ksac350N64hMEKxlSxaSMqSBe1NJJCA0JwICFm9339IdYMiaKRgrM3dKIobkEIshmuAq
         iFntu7Q6KbfHSOvwXtm8Blhkty1IE+IJfe80As3Hat4AqAqKdspBMP0ia5mfONfQSIRz
         Ss0w==
X-Gm-Message-State: AG10YOSbuPpX7IS/WH8Mbjwkt5GjN+6q5BIetYfOM5ln2zgRt907VNcBYPTxENRGefuJoA==
X-Received: by 10.98.80.76 with SMTP id e73mr64511431pfb.24.1455168883331;
        Wed, 10 Feb 2016 21:34:43 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id y86sm8953994pfa.26.2016.02.10.21.34.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 21:34:42 -0800 (PST)
Date: Wed, 10 Feb 2016 21:34:41 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: remove parentheses on right hand side of
 assignment
Message-ID: <20160211053430.GA8222@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the unnecessary parens on right hand side of assignment.

Found using Coccinelle:
@@
identifier x;
expression e1, e2;
@@
- x = (e1 << e2)
+ x = e1 << e2

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 98b21d4..c1da8f0 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -921,11 +921,11 @@ static void wilc_wlan_handle_isr_ext(struct wilc *wilc, u32 int_status)
 	int ret = 0;
 	struct rxq_entry_t *rqe;
 
-	size = ((int_status & 0x7fff) << 2);
+	size = (int_status & 0x7fff) << 2;
 
 	while (!size && retries < 10) {
 		wilc->hif_func->hif_read_size(wilc, &size);
-		size = ((size & 0x7fff) << 2);
+		size = (size & 0x7fff) << 2;
 		retries++;
 	}
 
-- 
2.1.4


