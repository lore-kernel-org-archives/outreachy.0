X-GM-THRID: 6207450266150633472
X-Received: by 10.182.91.9 with SMTP id ca9mr4031866obb.36.1445407712897;
        Tue, 20 Oct 2015 23:08:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.107.2 with SMTP id gy2ls426730igb.44.gmail; Tue, 20 Oct
 2015 23:08:32 -0700 (PDT)
X-Received: by 10.66.102.101 with SMTP id fn5mr6281953pab.38.1445407712520;
        Tue, 20 Oct 2015 23:08:32 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si836635pac.2.2015.10.20.23.08.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 23:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hk11so44809101pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 23:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2NbNHOLKV8YQtT9kexFt7iVMAtUdbSXzcFg/sBgd8EA=;
        b=zUlneuw28HAiiiV8w3FrPmEjW6vqo8cL9b33zKeYxwC0VmcRB/OR+yAcCDmXSoTVGy
         qHV16QpqqgeEORj+iKM8pdTyhhmxqCUfwcjGQbh6q0AzSkJlkw1R1AVeDk0tPGO2pXM5
         UT5n3I4N6ECxUa5NHkaL1Ozx0LYcemsfZIuVCGhZ8lLzMzd+jeOJmCEFmhKoOTbXShT6
         Hd4HoFgPmmPQPR5+lbME4ABaIG0Q3rnWq7wCtQoMPdDaUOiEt5I517kTmbQwYQs4UuLe
         8PnRjJ/9c29qrqGxcfxAras9W3W4Z4sd1DnGEDGtdl/Izexdwq9v/I0ARU26nADiUWcv
         s35g==
X-Received: by 10.68.244.34 with SMTP id xd2mr8750469pbc.0.1445407712410;
        Tue, 20 Oct 2015 23:08:32 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ro3sm7018700pbc.69.2015.10.20.23.08.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 23:08:31 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: r8723au: move constant to right of comparison test
Date: Tue, 20 Oct 2015 23:08:27 -0700
Message-Id: <b6d268212d39c99015d659a65dd39d049eaf7cb2.1445402009.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445402009.git.amsfield22@gmail.com>
References: <cover.1445402009.git.amsfield22@gmail.com>

Move constant to right of comparison test to improve readability.

Addresses checkpatch.pl:
	WARNING: Comparisons should place the constant on the
	right side of the test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 389ad03..334cc5b 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -633,7 +633,7 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
 	} else {
 		/* no need to enqueue, do the cmd hdl directly and
 		   free cmd parameter */
-		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
+		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
 			res = _FAIL;
 		kfree(param);
 	}
-- 
2.1.4


