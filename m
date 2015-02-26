X-GM-THRID: 3599576858624
X-Received: by 10.112.25.7 with SMTP id y7mr1042265lbf.21.1424937180079;
        Wed, 25 Feb 2015 23:53:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.167 with SMTP id c7ls1152358wix.33.canary; Wed, 25 Feb
 2015 23:52:59 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr3463065wia.7.1424937179818;
        Wed, 25 Feb 2015 23:52:59 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id r6si65639wix.0.2015.02.25.23.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 23:52:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so10451639wid.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 23:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SpXGQAwEAYFjOqwP8fbuFt5WPDYn9kEYcMeVX8XDR6c=;
        b=b8FTT7mVCW4ecVEueXPA3sm63xr0/Ai+rq/fFXsEtNT17MCa+f1Cq2YevyZs/XuNEt
         mqluzada3s5mgzbf8UU2griVNXgSpgv3pFmWnVQ16A9R1aAKegdYgw9hABhLFnQBpfLm
         LVEtlVtXj3U/5IjvAcRq+l7+828UhpyJHJ7v1rkLmslnf1xiHvtcjV9L4ejvjWH3/W44
         ZOULw1ZX44Jc6Z9g+UONMGjFuzRpsse+sLgDCR7qGWzqPxwQuKRTQJSPgqrMhRsPrMta
         S0z5eEhSCJ25ZgRoJeIAsKhCz+c2XSqsKHo97olbUgXI8iCILV8GAYiADK1Bq0L/08fp
         AaCg==
X-Received: by 10.194.122.233 with SMTP id lv9mr13485885wjb.95.1424937179705;
        Wed, 25 Feb 2015 23:52:59 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id vq9sm156118wjc.6.2015.02.25.23.52.57
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 23:52:58 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8723au: Add blank line after declarations
Date: Thu, 26 Feb 2015 09:52:08 +0200
Message-Id: <1424937128-16981-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: "Missing a blank line after declarations"
Add blank line after declarations. That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/usb_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723au/os_dep/usb_intf.c b/drivers/staging/rtl8723au/os_dep/usb_intf.c
index 07ab571..146a830 100644
--- a/drivers/staging/rtl8723au/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8723au/os_dep/usb_intf.c
@@ -237,6 +237,7 @@ void rtl8723a_usb_intf_stop(struct rtw_adapter *padapter)
 static void rtw_dev_unload(struct rtw_adapter *padapter)
 {
 	struct submit_ctx *pack_tx_ops = &padapter->xmitpriv.ack_tx_ops;
+
 	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));
 
 	if (padapter->bup) {
-- 
1.8.3.2


