X-GM-THRID: 6529514677099036672
X-Received: by 10.99.190.3 with SMTP id l3mr3198215pgf.74.1520275114019;
        Mon, 05 Mar 2018 10:38:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.82.199 with SMTP id z7ls3376402pgp.22.gmail; Mon, 05 Mar
 2018 10:38:32 -0800 (PST)
X-Google-Smtp-Source: AG47ELs438gLQJomxIPsVMxcBzHveIQE3FdVZVUQTzR8fttu4NAnquMbp05yS4vtcoxa8dKSuAeh
X-Received: by 10.99.177.12 with SMTP id r12mr3179369pgf.23.1520275112631;
        Mon, 05 Mar 2018 10:38:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520275112; cv=none;
        d=google.com; s=arc-20160816;
        b=VZtLdQZv/PdoWsxx6aDtrT6K3QRvHUP2f3WRuoInzk09fR9BjSxeQ+dfELWVv+5tZW
         qAhnUvCy0MWYPRTSEnAijOtECeoQxo2UneghSyPvC2e1g0mO/MmZ1M5bzySJqwKUjCS9
         /Dqk4iOuVtrlLZUncM9GyR4fLrZkeNN73FLAjXaufPozWI28jsa7eFgaNHcPFQsEfpFz
         a6J4dRyfZWqdxfTmsEEURsWXyUK88gmLb0MicD+tampX1Hsvws948OgRX3eA+J9mWJgo
         U9t9z/9bjG6VL8oZk4l37nrWZMbnyDXFrTnVjL1k1AaolFiDJTJ3ar062TxGnPT+mgEM
         HTYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=T8dLrhellOxARJM3BxqPd6c+snh15ChXydWvw4zkpt0=;
        b=eiM3MKIdHEZt84mGOSWdyRKNoydBlGDkkWFN65PxevwoXfgC7tqQmLPox/311gflDW
         c69p54beE97czUYlAPm4bQFfF8Hh22ZzB4nNq4x7MXE/VhF/98hCTy9pF2DDbqTdDjYm
         ztQ2W6id1NZpfYKLElQsbDn1GHxUN24qWuuzpSq+H14VBY2jkqMbkdY4Dv3zDnGNQfXo
         owVZKu5uKAxgJwDRn6nxqV5aN9vHTKMvETdZk6l1Rv+YUTxNKHKaosRe62wQAtzKEZmY
         xudkWeR7HvUKmkiPtYz67NKRQp45r3lTQ0Ua1/bSLpvnYpVLrtLG2fagphQMLvWtnR0X
         HFEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O/JyD8s+;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id n18si809719pfg.3.2018.03.05.10.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:38:32 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O/JyD8s+;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 17so7573889pfw.11
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 10:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=T8dLrhellOxARJM3BxqPd6c+snh15ChXydWvw4zkpt0=;
        b=O/JyD8s+jEhByAiCNcCHk/EWbbDB2tsbDPXE5xn1o5ZlgW1CQ07qf4v0+iuKXCStyg
         PgoeXF30bR9G3Kq9aOj/V+wG6DeiYCViBTvnPBq2pQXeK/RT/gMv0sj9olEBqjrX3nSt
         TtTjkLcN0W/4vtClxvk2/s4UUQFTIhAib7Z5/z1IPoLLaT6NJqSKEuBfcQwS2aOMAEzA
         oEnfy0LoiI282s1Jrqh6BAzAhni+bVrw3cLwtUJf614yavV+OcITV2tSUcFltLYNfRI1
         LCMQ6s37F/qQlM236/R43OxeVwMszLdsBEvIoECMF9B3kQ92J0u2/m/S5CcWtUwgKeFa
         841g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=T8dLrhellOxARJM3BxqPd6c+snh15ChXydWvw4zkpt0=;
        b=VX1Og7I6JtakCqkn0FPbpqeeUHkRE9FyfZWk0nd2jdTL5wPbcIWGNDsy71CQzjcc8d
         K5RzB51NyJUAnbvBIUn6DBuMf9RmQ/5nGs22f/P5dYjvECR1b5X5zUUPbBbKKSmNtBqz
         1j+f6IkGYcrMAKeAluFT2V/LvBmfLocl6HesFtecMAy71vG1rSlR1mEPkLmMnXwYYVqW
         MCI5LBWwXKHYZJM0aZ8wMmsqy074CK2+2UsbQyQhMbVlFVXhNKK+Que0LT4cqVTbKahB
         QjXIQhvx6n60uZ1z8WKMghy84PyhticL6s15qTiXFHYLq8H5yiMd/EWStbdqU9OKB9j5
         WJ3A==
X-Gm-Message-State: APf1xPCgwCjfO8+7bWBPiO+hMnfTPhESP9OMjLd0EouZmHUBt+2VPS7w
	PkakdOpe1tPe0xBpCR/bFEI=
X-Received: by 10.98.13.211 with SMTP id 80mr16345481pfn.69.1520275112266;
        Mon, 05 Mar 2018 10:38:32 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id h10sm14557686pgf.19.2018.03.05.10.38.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Mar 2018 10:38:31 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2] staging: rtl8188eu: place constant on the right side of test
Date: Mon,  5 Mar 2018 10:37:59 -0800
Message-Id: <1520275079-54162-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Place constants on the right side of the test during comparisons to
conform to the Linux kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change in v2:
 - Mention tool used in the commit message.

 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c      | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c       | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 8 ++++----
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 1ab2e55..8d242ad 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -36,7 +36,7 @@ static u8 _is_fw_read_cmd_down(struct adapter *adapt, u8 msgbox_num)
 
 	do {
 		valid = usb_read8(adapt, REG_HMETFR) & BIT(msgbox_num);
-		if (0 == valid)
+		if (valid == 0)
 			read_down = true;
 	} while ((!read_down) && (retry_cnts--));
 
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index d04b7fb..ff227c8 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -182,7 +182,7 @@ void rtw_hal_dm_init(struct adapter *Adapter)
 /*  Compare RSSI for deciding antenna */
 void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src)
 {
-	if (0 != Adapter->HalData->AntDivCfg) {
+	if (Adapter->HalData->AntDivCfg != 0) {
 		/* select optimum_antenna for before linked =>For antenna diversity */
 		if (dst->Rssi >=  src->Rssi) {/* keep org parameter */
 			src->Rssi = dst->Rssi;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 3673f57..54ede4b 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -221,13 +221,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
 	} else {
 		for (i = 0; i < (txpktbuf_bndy - 1); i++) {
 			status = _LLTWrite(padapter, i, i + 1);
-			if (_SUCCESS != status)
+			if (status != _SUCCESS)
 				return status;
 		}
 
 		/*  end of list */
 		status = _LLTWrite(padapter, (txpktbuf_bndy - 1), 0xFF);
-		if (_SUCCESS != status)
+		if (status != _SUCCESS)
 			return status;
 
 		/*  Make the other pages as ring buffer */
@@ -235,13 +235,13 @@ s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
 		/*  Otherwise used as local loopback buffer. */
 		for (i = txpktbuf_bndy; i < Last_Entry_Of_TxPktBuf; i++) {
 			status = _LLTWrite(padapter, i, (i + 1));
-			if (_SUCCESS != status)
+			if (status != _SUCCESS)
 				return status;
 		}
 
 		/*  Let last entry point to the start entry of ring buffer */
 		status = _LLTWrite(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
-		if (_SUCCESS != status) {
+		if (status != _SUCCESS) {
 			return status;
 		}
 	}
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index a9912b6..4f0f512 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -552,7 +552,7 @@ s32 rtl8188eu_xmitframe_complete(struct adapter *adapt, struct xmit_priv *pxmitp
 		pbuf = round_up(pbuf_tail, 8);
 
 		pfirstframe->agg_num++;
-		if (MAX_TX_AGG_PACKET_NUMBER == pfirstframe->agg_num)
+		if (pfirstframe->agg_num ==  MAX_TX_AGG_PACKET_NUMBER)
 			break;
 
 		if (pbuf < bulkptr) {
-- 
2.7.4


