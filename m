X-GM-THRID: 7025609319157596160
X-Received: by 2002:a17:907:160a:: with SMTP id hb10mr4347638ejc.83.1635777142399;
        Mon, 01 Nov 2021 07:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c0d9:: with SMTP id j25ls3568119edp.3.gmail; Mon, 01 Nov
 2021 07:32:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzClY6AVWwHI6tb4izGH8cZwCHeVNOfL1sfpw9sCCOQkwVdbfXPxXI3qOfMV12C2yHADywF
X-Received: by 2002:a05:6402:158:: with SMTP id s24mr41929381edu.189.1635777140979;
        Mon, 01 Nov 2021 07:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777140; cv=none;
        d=google.com; s=arc-20160816;
        b=GMXH20VoyNKQBQur2SVj0DZkyYFQ4W8G6POtA7wyVdL3YXrmt432jAG+zhXP/j6W8+
         yLgkAleFdWmMlN17curtQyMTdqvIPnmNvsjd+zvdP3GfKG9wQeenWQoohQCC0sveT+Sa
         8WcmP/MQ/+ymOb9uuguTiCa+V+cTs3EtQBVoFgvNMA7OIFPZiUXhigzgGttk/LDTSp4l
         Tbs0gsAEa7VQqdfqQIBryN9YtXIEZii1ZXFaw0g1Y3Y18AvACJTbm05wIPqXHX68Ssxd
         DPnB0YpJFRmIqk26jVTpAvVHBLuG64df8oPYFpSNpqR9hMQXkupTZbZC57mnGJi3tc6u
         quUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=Phn7+UvhnsKgN0Nr/jwG3WFa4weM4niMn+sf4vDRDCGeHkWjGtSZ63RjI0wAHPF3bb
         G2PM+iFmfOnav9IQ80/0toztcwkFu9TSXkpuZay4ZYEoBKiZlUegVj1Ld7H4Xm22O7Vb
         y8xhqfl/oaNs/iGaVeNc4HkwZPV9v5bl/erSeyAZC81YQSmUQio7iy2qYukft1CPDO+t
         vhtiTukExEoxfT1wXXN9OwbUIkfuY50TfEqoWakKtxTpvUryFWSpn3B8impeCUhTnzLV
         h+oS0zhTZbGB3d2eN8dDPvKYfVUd3Z3uC7CfGYxwB+n1IeJ0MVjaW3q63TbBwx17V/TD
         j61Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WDRr+H+i;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id dr8si1473331ejc.0.2021.11.01.07.32.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WDRr+H+i;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id r8so15609966wra.7
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=WDRr+H+iLkn65jUE9yXxqLx6k4x+Vgyx67bzicM5RF+uEvIAew/mp8EVD/TJ8TVS6M
         7Z3vbJhbiz9qomfiJ6zMEcIXzorAJnoxzZvMm2281w1lD8yBALeTsw6VuZq1EoJPwxKu
         wUWC3cSgdaybRaHjx2ku9tGRpCjEMFNKBS/Vt+OGcjLUPy5gXxgfjtguGz2nrtNzaOqb
         UXIYUs5CIMWaLNGKeQJ01YPVP7EhCRJhpwweMTd+9vw0ZNPzYUlbDatPr9vdl6sbZxMk
         HyPaYup2P1+rjvZjhjf8C16cBqLPHQ4guZqHZLlHQmyx7DpcuLlwrvPoueULHJxlBH6/
         Y3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AVb5GC93bP5+2in7SXHaVRcFzvFScW/Z0MhMVVxwoss=;
        b=3aFTY9TD77BaVHHdrylX9zGh4wykBwy43m9ZzHr/k+SlsVWOmloM7HNg7OmvwXLeNW
         t3Z/8SXqLlSVW0IIyUDs1LKVE7LD1MLmBHANP1AqVQR50w1Dxks3FvefuOVpVocTis1N
         f+do4pnJzup9aKNrAoV5eWMorf2FbEhboPiqSIz3m22hDtERlyJx3KHCLBTTm22Qai9Q
         n5OBKxOpAZwYRLvbqgCq7IgX2dO1sURSCFg6enNLJGFiIZnOcajXjf+UbtDKh0U+urKh
         OgNwK3nnbFkKbHOuPTUrAaRniwJJUd+/b5gDmC0+jC7OSh0jooAstTcFvIEu/8Mihlul
         sZ7A==
X-Gm-Message-State: AOAM530TFb8UupTA8r5yWfR+ogy026FdDtt3UB54GVPxfXLUY0MBvEKk
	3H5xdBprWbMCp/LRGuXmV8Q8dZ1+NQPdQQ==
X-Received: by 2002:adf:e390:: with SMTP id e16mr38315954wrm.217.1635777140756;
        Mon, 01 Nov 2021 07:32:20 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:20 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 1/8] staging: vt6655: Introduce `idx` temporary variable
Date: Mon,  1 Nov 2021 14:31:59 +0000
Message-Id: <34bd0e8f42597edf006a950d420345befc4e0bc2.1635773680.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a local variable to store `MISCFIFO_SYNDATA_IDX` offset.
This change helps in shortening the lines in `rf.c` that
are deemed too long by checkpatch.pl.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index bc4abe77db7b..f195dafb6e63 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -681,6 +681,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 {
 	void __iomem *iobase = priv->port_offset;
 	int i;
+	unsigned short idx = MISCFIFO_SYNDATA_IDX;
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
 
@@ -699,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_init_table[i]);
+			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -716,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


