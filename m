X-GM-THRID: 7022901752311578624
X-Received: by 2002:a17:903:28d:b0:141:52ab:590e with SMTP id j13-20020a170903028d00b0014152ab590emr3714122plr.18.1635255793251;
        Tue, 26 Oct 2021 06:43:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:11cc:: with SMTP id q12ls2439295plh.2.gmail; Tue, 26
 Oct 2021 06:43:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeaugqyKIPCJU1MAwOh1oiauKg2bQGitbFP02XtQLUV2M/Q3wOUbwx4m1RqARTER5AXebc
X-Received: by 2002:a17:902:b111:b0:13f:48e1:9bc4 with SMTP id q17-20020a170902b11100b0013f48e19bc4mr22503395plr.53.1635255792088;
        Tue, 26 Oct 2021 06:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635255792; cv=none;
        d=google.com; s=arc-20160816;
        b=ewvQjY4XYjC9RpGxdWeTZjcIs2sWkAiBqv5+f4o0cxaD/SrBr5TVMBrLDQCxzq6/5r
         pR/LiSFQeQ4/XN8IYeOv7LRBAP7+8hohJgRlP88Of93Kg0QrG29nTQ0sVI3EXYZMQ5KD
         wo52BsbBrsTukLTZWjKZwd2NtwtSX/Okb7g0EU2quZ2qlgkzC7VaHF5dh024m/Xn5syR
         LKMp62wS9Vjdu4DyGft1m15SX5mUm2BdnChOQCkh43DVs3yEycQBFhvsh3oh8MqWiU8c
         sR040t+4F9YcIZuHv6GCnRY66AQKXPRk+FBOFbBIWVixyp35DYTC7IHCpp4OXT9vWIOW
         snzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JwzvnEtQyFzINH8lrQUN82IVP9LOJxQIr47i06O+OtU=;
        b=eiyUnkS7NNkHakIBStMhykH7w66QM/VtldN1sCqm5+OTn23eeQflNqQU8Io6ygtute
         V34SdeTy7x9Of5fN4GkAv03nQEiQcQ5C6e61kcRv4HcvJpV7UzEU3ZxyBwGZptfjl9qP
         X+o+THTKx2g427k41GqaDqZ5ytQQSg6RyLgwNKkEfctTvH7Lt0XAKZJ+DP8pEAY61WDj
         00fi+jeA8I9dTT65FwE53GNu0MG2g8MkGOyhUcFF5/RA2Xjl6uFIxn+j/KJd+6HSpo0S
         WIBwNzbgI7bIpnauNx8X8AV2x7Jy6UQnEZKt0QFMB8ygjTc4xQ7YKRQ7LUDSIJgOcJ6z
         qo2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HdYCeMf8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id o17si1580629pfu.5.2021.10.26.06.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 06:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HdYCeMf8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id m14so14374027pfc.9
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 06:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JwzvnEtQyFzINH8lrQUN82IVP9LOJxQIr47i06O+OtU=;
        b=HdYCeMf81a8N+pUWVFHfIQSCcxlHrwBfZlUQeZ4JyooMtF9ug68RWnwbg8WZPsuF6A
         u7m1fyfzrReBF93Sl6ssvbnhYSlmlJebvX5420PBgCreVLAwDHGTtkpukUjmu+l7UZ2y
         YPH/pj/RqZCTrPNFmjnB+t9WdHrG4vBj9z96O9movWQuZMv2qBIBnqmWGeimYUDpR9ZX
         DeP3+cJslFQEQPtLR4//9HtQGhOarmEGeWUF3s+A4fy281NvM2KeNV1AQnYgddaPXWk5
         21IEFfgQvJWLHfVsP17imCowSUlf7d44DpibSAGCHRsomCgQbLJ7+m99s6YDNWA1tVJI
         T5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JwzvnEtQyFzINH8lrQUN82IVP9LOJxQIr47i06O+OtU=;
        b=gOv+q5zgVF2iYDY3Hj4X9qD+gLM67rj6prX0eBgrsY3ykvx4vomyVFr1LAXd+ym4aq
         Be/gRMu599RM2lqi9qOnZviT6HvP40LGdrMfrzpQatFErQQrwnzyG77H0qDxqVgZRr1T
         cPtKHD3XGoJfBGokCpVSN1gs5a/Fws3L0/eDMdU5PK9wcbnMd97lrgVlKZz77OFJ8AeM
         GUNXmOVZEByO/r3En2LW3Ci+l/r204Zbx2K1tq9si8r8VihtGqWz1Jqeuh+cAMoK3MMI
         qhtKKTsD4Sa+jpo+W3wBSQARpOsoxxZ0ln70rbIeCmM714KOPQi4WZFH5d+wKJplomce
         xwGA==
X-Gm-Message-State: AOAM530dMWFIOxe5bByTXJJJwa2tkVBVvvCcwBICgDrpwBT3SN5j3yIw
	g/p9zVKY/SAO03Wfaf2n8Ok=
X-Received: by 2002:a63:9d0b:: with SMTP id i11mr16378932pgd.429.1635255791737;
        Tue, 26 Oct 2021 06:43:11 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from kushal ([2401:4900:1d67:6055:69c2:a862:1f6e:c9e4])
        by smtp.gmail.com with ESMTPSA id m10sm1000844pjs.21.2021.10.26.06.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 06:43:11 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org,
	fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com,
	hdegoede@redhat.com,
	marcocesati@gmail.com,
	fmdefrancesco@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>
Subject: [PATCH v2] staging: rtl8723bs: core: Refactor nested if-else
Date: Tue, 26 Oct 2021 19:12:53 +0530
Message-Id: <20211026134253.7868-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Refactor nested if-else to avoid deep indentations. There is no change
in the logic of the new code, however, now it is simple because it gets
rid of five unnecessary else conditionals and it combines nested if into
single if-else-if. This refactor also leads to fix warning detected by
checkpatch.pl:
WARNING: Too many leading tabs - consider code refactoring

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---

Changes in v2: Fix the bug of not handling properly the else logic
when p is not null in else-if. Also, reword the subject line and break 
it up at 72 columns.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
 1 file changed, 29 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 0f82f5031c43..267d853b1514 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1192,50 +1192,39 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
 			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-			if (p) {
-				if (!memcmp(p+2, WMM_IE, 6)) {
-
-					pstat->flags |= WLAN_STA_WME;
-
-					pstat->qos_option = 1;
-					pstat->qos_info = *(p+8);
-
-					pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
-
-					if ((pstat->qos_info&0xf) != 0xf)
-						pstat->has_legacy_ac = true;
-					else
-						pstat->has_legacy_ac = false;
-
-					if (pstat->qos_info&0xf) {
-						if (pstat->qos_info&BIT(0))
-							pstat->uapsd_vo = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_vo = 0;
-
-						if (pstat->qos_info&BIT(1))
-							pstat->uapsd_vi = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_vi = 0;
-
-						if (pstat->qos_info&BIT(2))
-							pstat->uapsd_bk = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_bk = 0;
-
-						if (pstat->qos_info&BIT(3))
-							pstat->uapsd_be = BIT(0)|BIT(1);
-						else
-							pstat->uapsd_be = 0;
-
-					}
-
-					break;
+			if (p && memcmp(p+2, WMM_IE, 6)) {
+				p = p + ie_len + 2;
+			} else if (p && !memcmp(p+2, WMM_IE, 6)) {
+				pstat->flags |= WLAN_STA_WME;
+				pstat->qos_option = 1;
+				pstat->qos_info = *(p+8);
+				pstat->max_sp_len = (pstat->qos_info>>5)&0x3;
+
+				pstat->has_legacy_ac = false;
+				if ((pstat->qos_info&0xf) != 0xf)
+					pstat->has_legacy_ac = true;
+
+				if (pstat->qos_info&0xf) {
+					pstat->uapsd_vo = 0;
+					if (pstat->qos_info&BIT(0))
+						pstat->uapsd_vo = BIT(0)|BIT(1);
+
+					pstat->uapsd_vi = 0;
+					if (pstat->qos_info&BIT(1))
+						pstat->uapsd_vi = BIT(0)|BIT(1);
+
+					pstat->uapsd_bk = 0;
+					if (pstat->qos_info&BIT(2))
+						pstat->uapsd_bk = BIT(0)|BIT(1);
+
+					pstat->uapsd_be = 0;
+					if (pstat->qos_info&BIT(3))
+						pstat->uapsd_be = BIT(0)|BIT(1);
 				}
+				break;
 			} else {
 				break;
 			}
-			p = p + ie_len + 2;
 		}
 	}
 
-- 
2.25.1


