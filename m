X-GM-THRID: 6207450266150633472
X-Received: by 10.66.62.195 with SMTP id a3mr6129935pas.22.1445407613668;
        Tue, 20 Oct 2015 23:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls1129982igt.38.canary; Tue, 20 Oct
 2015 23:06:52 -0700 (PDT)
X-Received: by 10.68.236.167 with SMTP id uv7mr6267117pbc.12.1445407612812;
        Tue, 20 Oct 2015 23:06:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ce6si916817pad.0.2015.10.20.23.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 23:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so44512126pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 23:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Km6lwwTCAQFlLpgeMJonzBYpny8Y76WbZ4BQqHQt09o=;
        b=K2i5/dmsoNowlxV4Tfuph2vCOeBrrttOqkVpsdpyVknGeXx+9NORZ2jGZSA6sdL6gv
         OmiEtNSqzLF6ch3DHs2sb4WwfREdgu2wBA/YzTduQHGgy6pirmfCqwifPx8Fd05Wy5mZ
         nDpNJd3aNKIAKPxE7XPb3m0eV6K63cKChv8HiDRUwcT6nhSKqyrYR+5KhnXbVdH+kBPV
         HAkc3W69PoQrPW8dRPFCEuPe7v+2sO6CD6d2gp9YyP8V8OejNrGdZrBTJZjWl4ajNe1o
         4ztoOwIaCCv5ofFz6mFiNrqZkRRalUDn8+QS+1pqkc9JcGvT9xBgywMGPfEP8n40IOd4
         e1HA==
X-Received: by 10.66.101.39 with SMTP id fd7mr8372777pab.3.1445407612674;
        Tue, 20 Oct 2015 23:06:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ze3sm7051636pac.5.2015.10.20.23.06.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 23:06:52 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] staging: r8723au: replace printk() with netdev_err()
Date: Tue, 20 Oct 2015 23:06:45 -0700
Message-Id: <683d3ed58863aa3a1117db5873daab184ee7a657.1445402009.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445402009.git.amsfield22@gmail.com>
References: <cover.1445402009.git.amsfield22@gmail.com>

Replace printk() with netdev_err() for uniform error reporting.
Issue found by checkpatch.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index c3579ac..389ad03 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -248,7 +248,8 @@ int rtw_enqueue_cmd23a(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	res = queue_work(pcmdpriv->wq, &cmd_obj->work);
 
 	if (!res) {
-		printk(KERN_ERR "%s: Call to queue_work() failed\n", __func__);
+		netdev_err(pcmdpriv->padapter->pnetdev,
+			   "%s: Call to queue_work() failed\n", __func__);
 		res = _FAIL;
 	} else
 		res = _SUCCESS;
-- 
2.1.4


