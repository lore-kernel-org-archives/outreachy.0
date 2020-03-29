X-GM-THRID: 6809434547497730048
X-Received: by 2002:a17:902:9a03:: with SMTP id v3mr5962017plp.272.1585445029095;
        Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls11819049pjb.2.gmail; Sat,
 28 Mar 2020 18:23:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs35DQt8YraGRrI//f/eCOtUtiNRLs1Pgt1jIIdyHOLDSUv4grtuppIGvT11/yNPrQJ+rXh
X-Received: by 2002:a17:902:8d94:: with SMTP id v20mr6431520plo.259.1585445027794;
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585445027; cv=none;
        d=google.com; s=arc-20160816;
        b=uetLmcG2USGFjXSplVVhnQH7LH54Mi66gHtz8LACiI5NxHqfVDV2UEF+w36A+PAyKf
         kTs//OBJRd49A7PNhx+jah29A5DPqXtY8CSG8fXyEpR/E6v6hLYHg9Hs1D+DnwYCoVr9
         OFA1pcyq06VXhdv9ApW5uDQx2CxukjSKUmhDgM8aPwyipJLuPucqm4A85uJxnUNiAaH7
         KiNE8VUJYMTHrghTIcLNKT89y4lL7jfxHERV7BxHBz8p4M/i3Xs8z7C3qEYpEgc5NxpH
         Y1nDRJhEobsume+qCnCCGykdeVYWlX+yGv5kylql5Arc3H5b1jNSorksfnTAT9oezHr+
         4BxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CdYjBKNoh9cw9t2GiQiYWEP7qz8k/93bnJkmGJNWf10=;
        b=0xvdh6RFKoL4ZA2Zz+NCqBlvcb/f3+SezBOK6NaLyDDSaJ82cILFqCelDv11V6N4zF
         WBJmODJyHx3e114G78E0BR9XPjwT5XVxom8VUJ9r7wEYYpCQrf15yNkIZSh2ee9m5XuI
         qglgWGcIBgzVDD91sYXJhZ45uggynr6K5hvrFzaZr1htFzHPM8vz4XOhh63wIt2gy+Ak
         3KqkqrCw/EzPOXJ9gPh8nLENFtBa7+TmHsTKEuoTRIMFx3hC4Po0iSkbSftYFScd/t3A
         9gJyd4JLcLC53+i7XTsVpofHoIjsbdTOeCjQD6OPYcYcNID8kfo5E6s8RN+NDYsq2A81
         2HcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DXJyOmH5;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u14si533109pjn.2.2020.03.28.18.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DXJyOmH5;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 22so6677461pfa.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CdYjBKNoh9cw9t2GiQiYWEP7qz8k/93bnJkmGJNWf10=;
        b=DXJyOmH5jzmb8rrYvzHl1RDgOPkG0b/VT1FrrIl1g1OZhmKja755KyLvzpLTcftd1R
         NQpI3MtGYj4N+cCahDsdupE7sHvnqSpLSQdoj9AXAGCJm9ErXK/nAAmrtZcix/BQmpkA
         ygdpzYU/FRB7DyjDwE+HYj4eXgSBEHcN06TQ34MBVVr0KEczxqRTlblQJ94Vhg26Xox7
         cbNOpM786DyQ0HdU/keuSuPCaFtK5JlLpO94gaUsvmc352/nj+oyUbX+pCsNLKpF6reS
         0UzC75KdhsC3jZClFgoUaEtIE7CkEMy2iZRFRqt6VE0I29k8ld3kXsKncFc6m4vQKN83
         Ic+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CdYjBKNoh9cw9t2GiQiYWEP7qz8k/93bnJkmGJNWf10=;
        b=r/XAP6WwZQpM+Wjymibx0KMyeMVaYqsKMKDP6RpC0dBU++xjBoWbskqsAMMx2Aj3RW
         yLSsbPiH3oaK2jxCYPhtVP5g9xNi4emZvBgASTfhPx8hmWmvW7DXXEiW0nDmlHsX1ScF
         FBriDNvbM8V3H3p3utjybfw/39CDm3Zn5RFvM70/3hAs93CDl49xTOofaNFiiCGrffq4
         gXLXUpX4mwjLDysXSHdQwKG8CkJ95tbpYSD9IuZnfkTWTMHswfi3IyhuwUL9t5X0XM1l
         TOrJ9UsusSvGEWvQDsBCYMZgiluTDozKFSlUg3xe+DeA4ku3dHW24TeUgG6ZACbuueCe
         DR5Q==
X-Gm-Message-State: ANhLgQ3M+oBsxN0Y0aoNskEqL/DUYppnY7UrsxfLuevrJ0cSKuQX3P5g
	bbrNai2sjb/s/L8QdFRJzYE=
X-Received: by 2002:a65:424b:: with SMTP id d11mr6307347pgq.17.1585445027498;
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id i34sm6713074pgm.83.2020.03.28.18.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 1/3] Staging: vt6655: Remove CARDbSoftwareReset definition.
Date: Sat, 28 Mar 2020 18:23:40 -0700
Message-Id: <99a02f7f8fe001b30d3e4839c7793922c37027e4.1585442480.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585442480.git.briana.oursler@gmail.com>
References: <cover.1585442480.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove uncalled function CARDbSoftwareReset and comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/card.c | 20 --------------------
 drivers/staging/vt6655/card.h |  1 -
 2 files changed, 21 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e65c9825ea5a..135010d2c7d3 100644
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
@@ -843,25 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv,
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
 
 /*
  * Description: Calculate TSF offset of two TSF input
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


