X-GM-THRID: 6672752996979310592
X-Received: by 2002:a5e:930e:: with SMTP id k14mr1373150iom.20.1553621379136;
        Tue, 26 Mar 2019 10:29:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac6a:: with SMTP id m42ls609656iti.5.canary-gmail; Tue,
 26 Mar 2019 10:29:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwq4cFhr3SEN/0xWBgk075rV3AZYpwS4hfogZu3N3VYgD8ZXMS2fB9lE0HyPppc8BAT026H
X-Received: by 2002:a05:660c:60b:: with SMTP id i11mr139952itk.9.1553621378199;
        Tue, 26 Mar 2019 10:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621378; cv=none;
        d=google.com; s=arc-20160816;
        b=HhjJamVW9UaPgPSDs8Uwv8Pm+Ul0N+lgVY350VVw6TxKijgszgBnO2d/mFcFvSyqUB
         AKy7KBK91SaHogfjjFOfVKG5sOlRw1Jrf1zQVCn9v2Hfwt+x6M7ko43EnkDBFZ3zGhNr
         PyQZUHkXo3h9hgDScsiPpmpf+7PQ8SR//iiZ3I4QZYAL/xdqxF8dpVrj2D/ZmY90QPAt
         iOybONTBHNr2v649FQMxquCHY412D1D0vs4tYzwUy/oKliq4TprljOXvJ1dfWlB5hDgE
         KjM7sA+K4yJHlTDRpRKB3JZ4KgHXu/dwrd3lVTkYu4FKdIeR7OCargHOZXg0Py4Y3Wbk
         JZsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=o+zVfylVC9GEha9OP1i5VcNG0t/fWRrhrx3J5BfVa84=;
        b=DmLz3aFQUWMu5fyKnGprVbUb2P653xR6xwOVIeVkbu4d5sre8fKcuHK7iTPmY/jgTx
         DNo2f/0pWbbmIpM8HsoSyuw0kWoVDXvAewF1OVaP05ArMJvSxta5CFseHx4w5O+ZhRfD
         EDZVsdHHyf69udD5+dKe0Pp0Lc6iWZqqSc8LcV8nQ0iZRbdpLyyHFFB0q7SmpQWgvzPy
         a0CtxOTx+SI8eFwCuIwr5JTvaGrYZZhSZvlT2RSUgo1D4rE9D74ytwkmSPn3yrqdZFI1
         2yjuvPToanvMGrU870Y5vLa5u4yTMl3oysIc0Vo82b4ctoFpmus94ex+/Q9Ke4jbBqko
         3n9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KrqnmL9s;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id t201si294858itb.2.2019.03.26.10.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KrqnmL9s;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd41.google.com with SMTP id b6so11561728iog.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=o+zVfylVC9GEha9OP1i5VcNG0t/fWRrhrx3J5BfVa84=;
        b=KrqnmL9sevHnOjJiqpbiDlwT1YN4z82FGvd7l0ouPy5M+gadw1YqcVxEOGfBg6P3wO
         o+b20Z0bVcjEh+X52GF6hDkbG+NwuX8Pm/1VXGqzpLHRAJp8gLo2MP6bX2IzEgz/2O4O
         wIoTKTDLduKLubj8MlR7XBGBmWpgNPsh+XZ5hgLQSB3UQpK3/59gRKBJllzHZO/YfkDh
         5hmcHawGnXlMoHyUx4ayXsXfp7e0EE9M8B8o5BBmOgf3O9LRxOQuyIHDbXtuv2DeNYJd
         CapJNIw1OsE5g1/F3wu7lhmbQGL+p8JX83VcOft9IssSsenAG/vEGmlUCX48JBXgjPSF
         c9XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=o+zVfylVC9GEha9OP1i5VcNG0t/fWRrhrx3J5BfVa84=;
        b=kLsJq63YFerg6pbV9S+I9PXkk61SzAv679pxT2Sszb54847Q2nvf3U1ASibTw7qk4H
         9g71MB8UDt2Jm5KF/Y7645RC3jBiJUOXdQuI3+cqYSrSaRsAks3fHavtQfINb9nnYMNH
         nBL1OKeb+mx3YTuLtGsSmZeoFoM66Xfnd0mudroa9PlXLxktu1MBFo9C6a+0I2ewvaj+
         eLNSpi4sNDwxNGYLMUVdfEOQuwI6GOCki9aWdwtUFjWTCbSPLYyPjd8MekKNJgykolJu
         /Bpv4U3Lsnn422jhlcBT+tha2/RJVWqXCtY62i8Gm16Ze8Qu1G6sdLrK5EddQXy/emjF
         pqqg==
X-Gm-Message-State: APjAAAWN168FBMlOwVsic2TiLXyqKr6JJYyjhPopauownjQ99msFDGDc
	1qrm8wXVdiMztTHMXY9zVJdhG0Cxt9sK
X-Received: by 2002:a6b:6b1a:: with SMTP id g26mr21973366ioc.211.1553621377907;
        Tue, 26 Mar 2019 10:29:37 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:413e:2bc:a081:9d66])
        by smtp.gmail.com with ESMTPSA id d195sm1547163itc.21.2019.03.26.10.29.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Mar 2019 10:29:37 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8712: rename variable to avoid camelcase
Date: Tue, 26 Mar 2019 13:29:29 -0400
Message-Id: <2de19725be83555d1f3983bf4ff7d9925ebd4f1c.1553619382.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>
In-Reply-To: <cover.1553619382.git.brandonbonaby94@gmail.com>
References: <cover.1553619382.git.brandonbonaby94@gmail.com>

Rename variable blnSetTxDescOffset to bln_set_tx_desc_offset
to align with linux kernel coding style in rtl8712_xmit.c.
The Warning was produced by checkpatch.pl.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index d8ff4ba0cfa0..f0933769cd36 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -418,7 +418,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 #ifdef CONFIG_R8712_TX_AGGR
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 #endif
-	u8 blnSetTxDescOffset;
+	u8 bln_set_tx_desc_offset;
 	sint bmcst = IS_MCAST(pattrib->ra);
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 	struct tx_desc txdesc_mp;
@@ -429,16 +429,16 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	ptxdesc->txdw0 |= cpu_to_le32(sz & 0x0000ffff);
 	if (pdvobj->ishighspeed) {
 		if (((sz + TXDESC_SIZE) % 512) == 0)
-			blnSetTxDescOffset = 1;
+			bln_set_tx_desc_offset = 1;
 		else
-			blnSetTxDescOffset = 0;
+			bln_set_tx_desc_offset = 0;
 	} else {
 		if (((sz + TXDESC_SIZE) % 64) == 0)
-			blnSetTxDescOffset = 1;
+			bln_set_tx_desc_offset = 1;
 		else
-			blnSetTxDescOffset = 0;
+			bln_set_tx_desc_offset = 0;
 	}
-	if (blnSetTxDescOffset) {
+	if (bln_set_tx_desc_offset) {
 		/* 32 bytes for TX Desc + 8 bytes pending */
 		ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE + OFFSET_SZ + 8) <<
 			      OFFSET_SHT) & 0x00ff0000);
-- 
2.17.1


