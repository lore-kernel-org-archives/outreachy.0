X-GM-THRID: 6802195878840893440
X-Received: by 2002:a25:6904:: with SMTP id e4mr18335706ybc.510.1583771264432;
        Mon, 09 Mar 2020 09:27:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:c304:: with SMTP id r4ls2080017ywk.11.gmail; Mon, 09 Mar
 2020 09:27:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtkC93RPEswL+rpDWUbkHpU7WZxs1PklIw0sqFxWlwXj4qMWBDYqdKh3pCHkG/xgdrmGZR5
X-Received: by 2002:a81:7ad0:: with SMTP id v199mr18714363ywc.22.1583771262964;
        Mon, 09 Mar 2020 09:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771262; cv=none;
        d=google.com; s=arc-20160816;
        b=iG/dvbeyLGlueeHGhx1hS/rl4nh8s/zO2OhtsqasEY5wFvVblp/iFuspV2aiuIBM58
         8YCsoWNFjWLgOIQlCtZ55nwWPtDuhzqtcoHJWEb1tIKRb6zRC41lBfIVzlFCcDhcxEWK
         05IWkMx6zhkB5ebMPDZ2jxOtRSAbyAaMRCBEr6k7LJlNlqQuvZ2lTo2ekfxO3afQZ3r6
         ZpY8doqypdzFuCsEEzz9XUOnZreyl+wJ2AZ6YHXq2iiagiPvViSD9uCv4jPuH5dAhPpo
         eycCBexOpN5m3gT2rByiqeLSWPsJQEEdck8Up0kkQWy3Iknn7GBjjFS93yJ29aUfSQim
         DVHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+7O/ZFAosDypYjyJlYbL0lZzC6VdYqZRt7v9x8OfArU=;
        b=0QV0BG5PJvIS4McZAzVakcyOdqfp9blzvOwqOUrk8clw5rhemRC5xqXhRyV5gBCFe/
         HES7Qm6jp4LFVcYj1QCmXZou7r4uRNDg4nyRc5fKBvwx1kHEfpkEFTBlDi9UnuWJCikR
         2arsBQgfYo8xQD5fFbf80jgg/tsP1dVmWo4BOzFKURFflpNb+91QpbrIv0KoFBsGASjK
         XvvOi0KnWNd7bNp7AvXFflCk0nh7BvFh6M2LohgMKW9On6CJufo7efU1dtaXoKia1eGv
         DEStDQlVxHYFwFp7DVyPL2X8rfCnvDaAeWBb/cna23gDUuq9hHBQkwyZf1gN3qMaM6Ee
         lxjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kptP2LYI;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id x13si878899ybs.4.2020.03.09.09.27.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kptP2LYI;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id d9so4172047plo.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+7O/ZFAosDypYjyJlYbL0lZzC6VdYqZRt7v9x8OfArU=;
        b=kptP2LYI/FTcojhj9kFvgoB1EDLcbJDm2B0GOYFjT4h+IcnzbGTn/p0xsItRkeJ3BD
         NIGM7bsyqIYy5U5rBICCtXl5lenCa6tprMtMJWU9KjqRTbA1700QTZd3C49gcEiBlgEq
         IDDe1sPgY6Aq1MZc7AvYU3tUxH82kUxdAm7dmMO7zCS6aJOzzpOrx8XwlQOXihN9RCym
         BOW+OMETr/sdeRGSmOEsMKbzTGMvFn895L6QJHbJaMRcZXEjW6PFb0ZiWWdlWmhykj0F
         WzdyavZCYOZwcJXWUDFztkJYHkW1u2QBevVhe9wUT0fLB0iqnJgsSNphNirKRB6rdSf8
         XeDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+7O/ZFAosDypYjyJlYbL0lZzC6VdYqZRt7v9x8OfArU=;
        b=JCPSD4TEjcbiNzCnNIJx4DVph2DtkaBw/FEMxOzQs9dm5+lWnqg5QgOLyiIc9WN+ZS
         QOAiUrgrs7r9EvC+IIL1XzgHvxypCDRNXNhWALvT0++Yizrqt0HF2711O292EqzwFpSJ
         YyLDgM+X7y6uZe7XMTuLL+RDzZbRR31b6UOIrJUI6dV9GgISAODuInk2z8PMnGaQNn7k
         EnkYyOqVbt3fDQRAO3LLFF4do9iZz2V2olcHdYCxVuyaj6zCaES75xXA2Ha0mc05+4+9
         V+plY5AGaDC1Ya5vseX9nNH1saMJoMRh7Z6TKtJSk3m+iXfXuBj0RlVOV/UA+9TStNQy
         +HiQ==
X-Gm-Message-State: ANhLgQ3MJGzCPGZt03jMox4sDp5SnadTULiSiSMVydPMc3mBtRpKdXWr
	9YVkZolT+HugL3aFj/T3/y0=
X-Received: by 2002:a17:902:bf06:: with SMTP id bi6mr7711408plb.30.1583771262031;
        Mon, 09 Mar 2020 09:27:42 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id y1sm42001363pgs.74.2020.03.09.09.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:27:41 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 1/3] [Outreachy kernel] staging: qlge: qlge.h: remove spaces before tabs and align code
Date: Mon,  9 Mar 2020 21:57:26 +0530
Message-Id: <20200309162728.4342-2-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>
References: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>

Remove white spaces before tabs and align code properly for readability.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
Subject line changed to add specific file name i.e. qlge.h. 

 drivers/staging/qlge/qlge.h | 60 ++++++++++++++++++-------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 4bc5d5fce9bf..66641edff6b5 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -16,8 +16,8 @@
 /*
  * General definitions...
  */
-#define DRV_NAME  	"qlge"
-#define DRV_STRING 	"QLogic 10 Gigabit PCI-E Ethernet Driver "
+#define DRV_NAME	"qlge"
+#define DRV_STRING	"QLogic 10 Gigabit PCI-E Ethernet Driver "
 #define DRV_VERSION	"1.00.00.35"
 
 #define WQ_ADDR_ALIGN	0x3	/* 4 byte alignment */
@@ -1077,11 +1077,11 @@ struct tx_buf_desc {
  * IOCB Definitions...
  */
 
-#define OPCODE_OB_MAC_IOCB 			0x01
+#define OPCODE_OB_MAC_IOCB		0x01
 #define OPCODE_OB_MAC_TSO_IOCB		0x02
-#define OPCODE_IB_MAC_IOCB			0x20
-#define OPCODE_IB_MPI_IOCB			0x21
-#define OPCODE_IB_AE_IOCB			0x3f
+#define OPCODE_IB_MAC_IOCB		0x20
+#define OPCODE_IB_MPI_IOCB		0x21
+#define OPCODE_IB_AE_IOCB		0x3f
 
 struct ob_mac_iocb_req {
 	u8 opcode;
@@ -1173,15 +1173,15 @@ struct ib_mac_iocb_rsp {
 	u8 flags1;
 #define IB_MAC_IOCB_RSP_OI	0x01	/* Override intr delay */
 #define IB_MAC_IOCB_RSP_I	0x02	/* Disable Intr Generation */
-#define IB_MAC_CSUM_ERR_MASK 0x1c	/* A mask to use for csum errs */
+#define IB_MAC_CSUM_ERR_MASK	0x1c	/* A mask to use for csum errs */
 #define IB_MAC_IOCB_RSP_TE	0x04	/* Checksum error */
 #define IB_MAC_IOCB_RSP_NU	0x08	/* No checksum rcvd */
 #define IB_MAC_IOCB_RSP_IE	0x10	/* IPv4 checksum error */
 #define IB_MAC_IOCB_RSP_M_MASK	0x60	/* Multicast info */
 #define IB_MAC_IOCB_RSP_M_NONE	0x00	/* Not mcast frame */
 #define IB_MAC_IOCB_RSP_M_HASH	0x20	/* HASH mcast frame */
-#define IB_MAC_IOCB_RSP_M_REG 	0x40	/* Registered mcast frame */
-#define IB_MAC_IOCB_RSP_M_PROM 	0x60	/* Promiscuous mcast frame */
+#define IB_MAC_IOCB_RSP_M_REG	0x40	/* Registered mcast frame */
+#define IB_MAC_IOCB_RSP_M_PROM	0x60	/* Promiscuous mcast frame */
 #define IB_MAC_IOCB_RSP_B	0x80	/* Broadcast frame */
 	u8 flags2;
 #define IB_MAC_IOCB_RSP_P	0x01	/* Promiscuous frame */
@@ -1198,16 +1198,16 @@ struct ib_mac_iocb_rsp {
 #define IB_MAC_IOCB_RSP_FO	0x80	/* Failover port */
 	u8 flags3;
 #define IB_MAC_IOCB_RSP_RSS_MASK	0x07	/* RSS mask */
-#define IB_MAC_IOCB_RSP_M_NONE	0x00	/* No RSS match */
-#define IB_MAC_IOCB_RSP_M_IPV4	0x04	/* IPv4 RSS match */
-#define IB_MAC_IOCB_RSP_M_IPV6	0x02	/* IPv6 RSS match */
-#define IB_MAC_IOCB_RSP_M_TCP_V4 	0x05	/* TCP with IPv4 */
-#define IB_MAC_IOCB_RSP_M_TCP_V6 	0x03	/* TCP with IPv6 */
-#define IB_MAC_IOCB_RSP_V4	0x08	/* IPV4 */
-#define IB_MAC_IOCB_RSP_V6	0x10	/* IPV6 */
-#define IB_MAC_IOCB_RSP_IH	0x20	/* Split after IP header */
-#define IB_MAC_IOCB_RSP_DS	0x40	/* data is in small buffer */
-#define IB_MAC_IOCB_RSP_DL	0x80	/* data is in large buffer */
+#define IB_MAC_IOCB_RSP_M_NONE		0x00	/* No RSS match */
+#define IB_MAC_IOCB_RSP_M_IPV4		0x04	/* IPv4 RSS match */
+#define IB_MAC_IOCB_RSP_M_IPV6		0x02	/* IPv6 RSS match */
+#define IB_MAC_IOCB_RSP_M_TCP_V4	0x05	/* TCP with IPv4 */
+#define IB_MAC_IOCB_RSP_M_TCP_V6	0x03	/* TCP with IPv6 */
+#define IB_MAC_IOCB_RSP_V4		0x08	/* IPV4 */
+#define IB_MAC_IOCB_RSP_V6		0x10	/* IPV6 */
+#define IB_MAC_IOCB_RSP_IH		0x20	/* Split after IP header */
+#define IB_MAC_IOCB_RSP_DS		0x40	/* data is in small buffer */
+#define IB_MAC_IOCB_RSP_DL		0x80	/* data is in large buffer */
 	__le32 data_len;	/* */
 	__le64 data_addr;	/* */
 	__le32 rss;		/* */
@@ -1233,17 +1233,17 @@ struct ib_ae_iocb_rsp {
 #define IB_AE_IOCB_RSP_OI		0x01
 #define IB_AE_IOCB_RSP_I		0x02
 	u8 event;
-#define LINK_UP_EVENT              0x00
-#define LINK_DOWN_EVENT            0x01
-#define CAM_LOOKUP_ERR_EVENT       0x06
-#define SOFT_ECC_ERROR_EVENT       0x07
-#define MGMT_ERR_EVENT             0x08
-#define TEN_GIG_MAC_EVENT          0x09
-#define GPI0_H2L_EVENT       	0x10
-#define GPI0_L2H_EVENT       	0x20
-#define GPI1_H2L_EVENT       	0x11
-#define GPI1_L2H_EVENT       	0x21
-#define PCI_ERR_ANON_BUF_RD        0x40
+#define LINK_UP_EVENT			0x00
+#define LINK_DOWN_EVENT			0x01
+#define CAM_LOOKUP_ERR_EVENT		0x06
+#define SOFT_ECC_ERROR_EVENT		0x07
+#define MGMT_ERR_EVENT			0x08
+#define TEN_GIG_MAC_EVENT		0x09
+#define GPI0_H2L_EVENT			0x10
+#define GPI0_L2H_EVENT			0x20
+#define GPI1_H2L_EVENT			0x11
+#define GPI1_L2H_EVENT			0x21
+#define PCI_ERR_ANON_BUF_RD		0x40
 	u8 q_id;
 	__le32 reserved[15];
 } __packed;
-- 
2.17.1


