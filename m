X-GM-THRID: 6810236750031486976
X-Received: by 2002:aca:cd0e:: with SMTP id d14mr892944oig.167.1585631809100;
        Mon, 30 Mar 2020 22:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:708f:: with SMTP id l15ls7449118otj.11.gmail; Mon, 30
 Mar 2020 22:16:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs8+POJtp9xdtDV87yGQSmZ6cBA9a7EEqgbWKWUSLW+MD4hkDJ6+unRzFmbjQy5quU61NH1
X-Received: by 2002:a05:6830:2391:: with SMTP id l17mr12262110ots.339.1585631807568;
        Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585631807; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9rWdltCnROrzfVJXyCOFa83iUwyiz9vJZJ+hcW0OpmpwgACp4uFOa7LXqJOsle5jB
         X5sEYenBO/9eZ1rCKa9UWHudCsctmWJgOAgLleL34lF42rGSmHsTsAAfHXIqoTdXB6xP
         si5ESokBUEnrwbzQq37WslM2BlTGDp759e4Q/5PPGDUommjeYa0txenJzJf+nuxLSmN9
         sdfn/BRAIJF4iZpMiIaM87c48SNUAv2cYyl+F80TzpOq7CprsJ3Y/Pg0CMpkth5L8ErQ
         UTd0pPXABaeLAolZlCP9RR3PrsFGhMO0S7mfArKSKmmBcS09U2fc5eXBI/hi1UKt3Q5u
         aGsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+L8kanffjFTCLfuTuk/eipodHZw1ThSZ0N7xc6E721k=;
        b=y4uo4h63Pw2B+bxcfPPmXq4zHwNAnDQ/yi0rzngEvFX8dG17Az1b7wB3WlYSPQwGmE
         N263u0C97cahUQxdh0Yg6C9cveXz9mwAplsW5/Jx4gAtUIDJ3DulS5CEKEqsU5tyTgIF
         ZLRDOdMyszacMfWXk1ixPPcsRVNlF0u7WLMgf2GufaP+igSKhLRIn9DFmcmRMHcf+IRI
         81wx3etDkApOsW6eYQXOfTOBWqYTgknglDoE1wLhPNU5d6tl+F5kVwL3gfzqK3xUrqUn
         t5A6bKN41MzfSAHqMrohEghpYUsgAIamyAAe8HIQSype1jLmm8ijqa/A6TtxTLzde3AW
         wQmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvsOko6k;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p29si717798oof.2.2020.03.30.22.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvsOko6k;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id v23so7667085ply.10
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+L8kanffjFTCLfuTuk/eipodHZw1ThSZ0N7xc6E721k=;
        b=WvsOko6k1fyv4xqOyjdC7SzBahRUV+4E34U/q1e5yfOW8Qpykf20CI5Ms80XlSszfz
         1PS5xLxBWT9LAc3NHCeCF0/8WT8KFwcQUis35O+Spe4DEh0mVI3yqiDs2sVlFqSo6o2t
         5jzASBZjcuCK8kVI1Ppv4zgQvR9H2MkaYSy5jmQlhOJ3eBeWG2gdI1iuMW9XylNkI+pZ
         xyVJqMSQwQbW5cTtVTIKm+PH2fAsOafN1klul2oHHoXoOz5LmECx3T1xIC0IV7F4CJ66
         YLMV/WG/kVBMLhqfmaa5jv30Sr2HZiaI+a1a7/O6sGFDfhEQbXYXvQSJJDJUnaBE7q18
         +ijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+L8kanffjFTCLfuTuk/eipodHZw1ThSZ0N7xc6E721k=;
        b=LuI45Mjyq+oTcoU+u1gCm6zFbWb/zZwMJo48EUiwKELuEW2hvXFaGffew7f5om09io
         lftuCNPHMwt4kaqYj7msjkNFb9Z6L3txNaKLNb0FppwSLP7Cvl444hQanNyqC+ig6i72
         4x7FERrTgeAFaP+7BsxlyVK1MOwfp1Zvhx4ESH+t1eNjOr9qS4fKrSpIoQTfwz1850t+
         zfVRZJnF0C3f+s+ZHhAXJXngZEwjqeyJEjpnzTe7GbQnONop7gzqDltGpikxQhe+feDl
         baZZX9hN6YNzPmrCsCVvUBiaKCn8MvN4ZsoPIQ56NqeORtsAZ3L3Qb0YNr3VwhKSCkOO
         VL9g==
X-Gm-Message-State: ANhLgQ1+IwhcnE1b9KnlSzDh+nW9wev9KiJ4j/vWLlyE1yFXYD/QlgQi
	mavVUStB//om4kkjjaP/Sz44Xixsx+Lc2g==
X-Received: by 2002:a17:902:44d:: with SMTP id 71mr16602790ple.123.1585631806817;
        Mon, 30 Mar 2020 22:16:46 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id q8sm910815pjq.28.2020.03.30.22.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 22:16:46 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 2/3] Staging: vt6655: Remove CARDvSetLoopbackMode definition.
Date: Mon, 30 Mar 2020 22:16:39 -0700
Message-Id: <b81f06ebc0179fbceb43c085411b372ff909b134.1585630805.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585630805.git.briana.oursler@gmail.com>
References: <cover.1585630805.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDvSetLoopbackMode that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Update commit description as recommended by Julia Lawall,
	  issue found by Stefano Brivio.

 drivers/staging/vt6655/card.c | 29 -----------------------------
 drivers/staging/vt6655/card.h |  2 --
 2 files changed, 31 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 52af85fe538d..222b6ef61d9c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -11,7 +11,6 @@
  *      CARDvUpdateBasicTopRate - Update BasicTopRate
  *      CARDbAddBasicRate - Add to BasicRateSet
  *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
- *      CARDvSetLoopbackMode - Set Loopback mode
  *      CARDqGetTSFOffset - Calculate TSFOffset
  *      CARDbGetCurrentTSF - Read Current NIC TSF counter
  *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
@@ -814,34 +813,6 @@ unsigned char CARDbyGetPktType(struct vnt_private *priv)
 		return PK_TYPE_11GB;
 }
 
-/*
- * Description: Set NIC Loopback mode
- *
- * Parameters:
- *  In:
- *      priv         - The adapter to be set
- *      wLoopbackMode   - Loopback mode to be set
- *  Out:
- *      none
- *
- * Return Value: none
- */
-void CARDvSetLoopbackMode(struct vnt_private *priv,
-			  unsigned short wLoopbackMode)
-{
-	switch (wLoopbackMode) {
-	case CARD_LB_NONE:
-	case CARD_LB_MAC:
-	case CARD_LB_PHY:
-		break;
-	default:
-		break;
-	}
-	/* set MAC loopback */
-	MACvSetLoopbackMode(priv, LOBYTE(wLoopbackMode));
-	/* set Baseband loopback */
-}
-
 /*
  * Description: Calculate TSF offset of two TSF input
  *              Get TSF Offset from RxBCN's TSF and local TSF
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index a811ac8942a0..32405027e269 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,8 +44,6 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv,
-			  unsigned short wLoopbackMode);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
-- 
2.24.1


