X-GM-THRID: 6666346191524986880
X-Received: by 2002:a5d:819a:: with SMTP id u26mr13709947ion.20.1552129681016;
        Sat, 09 Mar 2019 03:08:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls3608986itb.1.canary-gmail; Sat,
 09 Mar 2019 03:08:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2nrzz/eNEV6XscT6N/33UhE66fL9fZDSSO4IdcAlSmppWe726GSmpWqccZHQ+fR1/KxAW
X-Received: by 2002:a24:6f15:: with SMTP id x21mr15338974itb.2.1552129680519;
        Sat, 09 Mar 2019 03:08:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552129680; cv=none;
        d=google.com; s=arc-20160816;
        b=TtgWVn2j8wCrh1DyA4zBNJyP+G6Ijcr/z7d0vN/9lTAriN5+BvEBF+QE92VkkzJ+mb
         Xtye+G/FuQoftNjf5M8bLnf478fRRIKoe+gye725Hc2ewQqU918qHB6lxVfzBcZ8wEs6
         QhcPNQQE/ONHZBpEOPsWI31XBBAdW0hqFKzTMjH+HNQ5lMxaqfwyZYQWeVvxOMY7FwOw
         J5Thl8QWMiI0X5BDU4e6N6UMnBd9+DFyjtg7EWGukrNGDwfSs2zsODroN9rp+FAUtXOD
         4UvvV3uXiFwvolNb6eDBtwYqujU9doLU0agIWjBPb4fMLT9LoIF7cR+KWCodC0k5SyeP
         rDEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=i8L5WL4QqUB+oD9b7rpvlpxWtKHLhtW6ohEECFBlEqM=;
        b=rVhzQh1A45fNiw/JK4l0Wif/Rb4HbQis5a/tVTzrHkF0ksiwz1P7R44spma+wXQlAb
         O0Ez9QpVk0qgXEyEW9EcRbjUB1HPStTdU1sG845f66AdMM2Ym0cdF0/hLdeSPyJPl9P4
         ELA3vz+ZhGDsDnX6ehC6U0s9zPCkkYCQAhHrAfJvb/w6Fh9vQYevgqtVm1FshnDwJPML
         RBRl7nj+NY8/q67dbA1GeaJj6V+HxWXfCq3E8ttu+k0ZJ9x+bBh9xPgO6mPqRtsaeCw6
         2j7AVpc4AWzFMbxC7mFdnJaL1CgNWnAsEaLeWmeB3COCRUKS4PLS6RykszBWHVkHSUVu
         C2Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hwA5/O3W";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v63si8896iof.0.2019.03.09.03.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:08:00 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hwA5/O3W";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 125so201623pgc.12
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 03:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=i8L5WL4QqUB+oD9b7rpvlpxWtKHLhtW6ohEECFBlEqM=;
        b=hwA5/O3WbQ6ChiyQxEfmYuHNcoaNV3itGCIbkZNWmF46Y2/JnJbC8/9js/CadU7k1Z
         Jz/QtSTY8hxdjLCp/J+MmmJII8cWZWPPyFsJrVJgKQKk2vGRV1q6LC7Qjf7Lbf7i1Kng
         lATSyqQOB8Uq/KDDUvwgrq3PRz11NbATkNSnnWtXe86mi5oP4POReHKbPOCpnfoZxSAB
         q1yZELJA+PbVNkHIvfcGGXnZtOI2N8DffRvHqGpkRLCmYudLp2dtVTxDNLMKpZ7S8Yr+
         ghEHXTBmVLpHuKhwUAiOvg7StGaEuNfdTkTp67pwSa/FBYOMyoqPpWnN51i+p3qJcJQy
         YTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=i8L5WL4QqUB+oD9b7rpvlpxWtKHLhtW6ohEECFBlEqM=;
        b=WGUiHk9irRGFOOS6VwBSvtT8CrVAqrvj1giHT/q5WB85f2o0vZewDPYZccSlAnN4mC
         VzqEqt8OFzBKoaK7qboYOHz8PwOJtGiqthibIJuDADt6EuVIU8yX8UmTKn7QgeZSqHBP
         HaCQNbxWDXsAbHkfI2p/7a5GadZ1tdnnqbw6miiBhpgvzX9zZPGTOOK1ukjooD9GnbTa
         4blutbu3PSNMUvftSiDFLGamGWzEO0DZksopir01JFl9ScmdwMX+9QoZnlRH9ve0WIc2
         ciZW+5GejPq1GdyQ1GcVGEhLwyxQktnTOCKAMMqZogPcwx2B/LN0qmwTlO+2NZLDdFPt
         9G9g==
X-Gm-Message-State: APjAAAXLti0d2G9MG+6rAVV0S/m+WzXpU4SeiULg+Yu0bLz6IRaPSV+x
	1E9fZtDPHPU41GSe7xWj9G4=
X-Received: by 2002:a63:fd03:: with SMTP id d3mr20706520pgh.359.1552129679786;
        Sat, 09 Mar 2019 03:07:59 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id y37sm1860732pgk.78.2019.03.09.03.07.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:07:58 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 2/2] staging: wilc1000: remove unnecessary local variable
Date: Sat,  9 Mar 2019 16:37:43 +0530
Message-Id: <20190309110743.41443-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309110743.41443-1-himadri18.07@gmail.com>
References: <20190309110743.41443-1-himadri18.07@gmail.com>

Remove unnecessary local variable "ret" and its assignments from
function wilc_get_tx_power. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4a5f83ae06d2..0a309a35c63e 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2133,7 +2133,6 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2141,8 +2140,7 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	wid.val = tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
+				     wilc_get_vif_idx(vif));
 
-	return ret;
 }
-- 
2.17.1


