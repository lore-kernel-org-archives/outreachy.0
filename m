X-GM-THRID: 6810562968301862912
X-Received: by 2002:a92:d3d0:: with SMTP id c16mr19698392ilh.22.1585707760447;
        Tue, 31 Mar 2020 19:22:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls4746913ioe.2.gmail; Tue, 31 Mar
 2020 19:22:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5lrWY4cw9ojhy+DH3Xv5ZwrMDyg5WET2MWCpdEBI/91naeLG0hjsWall7vulFLfreibqx
X-Received: by 2002:a5e:880e:: with SMTP id l14mr17294897ioj.8.1585707758723;
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585707758; cv=none;
        d=google.com; s=arc-20160816;
        b=ZU3u690M6GtlXtcJCD73M7bMdUeldyQLDqY4tivVo8/4k2kgzH7qIODaralx7tzeHY
         3tY4O2+EYaZemI9kmO/mqKoOGyzQ40prYxLVdvCMtiHTeUIDe7yGzACO6eLgm+M91p6N
         98YhoiCzE/PPYnHevkFQrhQIdDkXXduGO2lncUWa7YNmATONWCT+6nCpfSDnM5MsbYVo
         /X8ePmaN9mVg4+fHeJLm9X6vTcw5ptNQFxQLqc9EkxU1GbYVQa3itMZxOqQigRKqLkMi
         fc+N3wbJIEL8wBajgaS++2ZfiGCYhUFaK1E16F9MOpjGrL+I4djbnZPNIJxIFQiu4DsO
         q9yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3MZhJHNPJknvAtjalEsndkVAId1CI7o6+4blMfS/ACc=;
        b=OKiyM+juMjBdITthuN+kYDmeeyZNTFfRo1pH3CGUnyv28NCWUNsHLbpheSmn7YeI2i
         3tc2H6mvF0jVJqDH+rb3CIwsOLXl25QYa/WNGA59qF2JSBqmV4G71cB2RhAi3wwfqKLI
         +a8Bx5aHwB7AfTldv2d5HGmTFYc+LDzguw0hmAHnCXPnv4dg0BskFWJZO2IE1wj0ghHY
         kGizZaYdYRxiczGfklKzFKyvqnzEKwUfB2gFdfYNIROXBaxSCq2Z1bv5+L4WQZzceAZE
         qJDhA1ngmkq4NI4G1t90wp9RY3F/AW6oup/hK06KclTt1pJWSrieulXK2mMqJ5jQrMtU
         5cpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWIl8Dsg;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m8si36809ili.2.2020.03.31.19.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWIl8Dsg;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 22so11325400pfa.9
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3MZhJHNPJknvAtjalEsndkVAId1CI7o6+4blMfS/ACc=;
        b=gWIl8DsgH00QDPsbwl2zNjrpBiaQUeBLS1EKMJXrFHU3pEzVcIQdtOUwJThDspi5M4
         ITrqzINcw8pwMnQyHKaRBMLeSpRp+EMPT1lnafuL+MbF5F+Acmqk5Q95OI8RobuDtBD/
         KgZqksgHi1OJ1I9D+a56Z0jf8EBdbleRCRXQzQ5gh9shSbh3qHiGb3NFKNZ8J/xhclpJ
         qgFBSTbZXWX9CT+yODv8otjVt57ntXV76h9eb3XtTBjKZhPDBntjbq0qAewybiZE92b5
         K51+B6YZ3snRkVzPs8VExncd5UbNzNBPfKe0pqhSzS0GukXX0cL+ic68m4qEBd0Feozf
         6x7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3MZhJHNPJknvAtjalEsndkVAId1CI7o6+4blMfS/ACc=;
        b=TBzaL2bm9y+52sAs/nt49AE+mqtYuBkoc7Nkp5k0M6ZHvKMxbtY47InL1POI20Stsl
         TiCrerx6T+WQDuoBGgc1jb2aAQL9ALMrQcp71XxHi8yWTECE5pQ8mAEGlr9nN3mRPiTl
         8df5Y7r3QG77SvZNwkgUNNShrHX6yUCGqvYfRf+dMCIrhWcgp2pH/cN4qLscgicKnpX7
         5wrYT4tCozjwrCNlqcx0JFOy7EzYo2ieY6eTsKxNekUbg0g3Ht6uXHhc51pPoei97i57
         K9ve6SCd12Y/q2AhW9s0vpphONT/bTNAEbaFg/W8DlrZzlwFehHpkxK/cXtL/HzhtSAz
         d1hw==
X-Gm-Message-State: ANhLgQ2Nf2tlCPX4qyXKMx76899Svokw4I6GNjLEMuixq+IjWqjhocUC
	FuzQrxeLW/dyNy0s+PFcGuw=
X-Received: by 2002:a63:3d0:: with SMTP id 199mr21241723pgd.220.1585707757954;
        Tue, 31 Mar 2020 19:22:37 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id m2sm336543pjl.21.2020.03.31.19.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 19:22:37 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 1/3] Staging: vt6655: Remove CARDbSoftwareReset definition.
Date: Tue, 31 Mar 2020 19:22:32 -0700
Message-Id: <8ec491439b947c959fab52e006d9ca26ec3657ab.1585707212.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585707212.git.briana.oursler@gmail.com>
References: <cover.1585707212.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDbSoftwareReset that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/card.c | 21 ---------------------
 drivers/staging/vt6655/card.h |  1 -
 2 files changed, 22 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e65c9825ea5a..52af85fe538d 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -12,7 +12,6 @@
  *      CARDbAddBasicRate - Add to BasicRateSet
  *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
  *      CARDvSetLoopbackMode - Set Loopback mode
- *      CARDbSoftwareReset - Sortware reset NIC
  *      CARDqGetTSFOffset - Calculate TSFOffset
  *      CARDbGetCurrentTSF - Read Current NIC TSF counter
  *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
@@ -843,26 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv,
 	/* set Baseband loopback */
 }
 
-/*
- * Description: Software Reset NIC
- *
- * Parameters:
- *  In:
- *      priv         - The adapter to be reset
- *  Out:
- *      none
- *
- * Return Value: none
- */
-bool CARDbSoftwareReset(struct vnt_private *priv)
-{
-	/* reset MAC */
-	if (!MACbSafeSoftwareReset(priv))
-		return false;
-
-	return true;
-}
-
 /*
  * Description: Calculate TSF offset of two TSF input
  *              Get TSF Offset from RxBCN's TSF and local TSF
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 337266add6b2..a811ac8942a0 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -46,7 +46,6 @@ void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
 void CARDvSetLoopbackMode(struct vnt_private *priv,
 			  unsigned short wLoopbackMode);
-bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
-- 
2.24.1


