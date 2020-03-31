X-GM-THRID: 6810236750031486976
X-Received: by 2002:a92:c60d:: with SMTP id p13mr13023855ilm.241.1585631807713;
        Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:97d:: with SMTP id o29ls2725395jaj.4.gmail; Mon, 30
 Mar 2020 22:16:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3ECYudZhOGS8LJWjWM1GJ2Heeoy1GWQYClpb2nSFBs0St/2g5nyY1bnGihvuiln0PN3yo
X-Received: by 2002:a02:c551:: with SMTP id g17mr5123295jaj.52.1585631806633;
        Mon, 30 Mar 2020 22:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585631806; cv=none;
        d=google.com; s=arc-20160816;
        b=gI3iz6GCgusqMOhMgT5VgzWq2ntxL+cIV701qhVIwiF+NFE5C3CY9TgtfxN2XtB37J
         W4K/aGR7Oqr1mWG0I8OZaZadJhQk3glhEUjHor85MmuvdG9OwfMy7GAUl7j5roXn3faS
         S0/oHQx8crPDycATD2sxR/PX+NoEC4s/x5I7nL7DlA0LC5IzJtOLcP7Gw77J+Pw6lTe1
         fxKF7fKNm5LBxo++sqGQS30rdsW3oqhP/YHM/OM68AanKkWg+So+HPCTSwK6LM7XRKVQ
         4hrgGPMgLndNY7m+FILCHbqKYc+p84RomxIkxxG5Kr1IzcHa4iCUuYoKughBVWibxLhh
         prYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hbQP2nIs3I0aaqoZVJjhFPr0JvEEe3o5o0kgFdq+OuA=;
        b=hLqaH5gmABODU3PFeaDO4asS5ULhPpTGAD0ZhSZtU4XSQO81MYQIggqqAlTQd5K9Ww
         YPX05xuvqsmspQXROiCMmHEltf5WalcjhJw4s6iqQb5LuUOtyN/LK6gKXMjKH5zd7yGx
         Vx3W8HZGmvZRQd/Eu2vf5VGJptPoHT1XSx0SJ+HI3zogFtPxQKQ8ZKqJ2PKEVMJZOEfj
         S5cDIYY4n8o6fYW92RUgfRfs7seyVoDGaFDBJokEfv02snOP6uvWWvPJGNL/SV2RBtuw
         uM9TtutHtDmKryiQngOYXQVXhDpI/2VVqQivxPWVwD6mxMKQgNkV0T4KKVo2CBFGyf18
         wnYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2MulW75;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g17si203643ioe.0.2020.03.30.22.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2MulW75;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 142so9806011pgf.11
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 22:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hbQP2nIs3I0aaqoZVJjhFPr0JvEEe3o5o0kgFdq+OuA=;
        b=f2MulW7564Px9RDuSyBvF1beinW1m4dsGpB7/oiMhtdCMN7pg8HHvu8RP8lav5ts9d
         0F5ungbp77SpVJkimbIVma+Ogyu9LG0opZEVh15JiVp0OAunYg2K5lVc/ia30+O4X2kK
         nSH7zjjqRNDMSl6+k0UN52q87TZ+a9Ot3JFXkOH5m8drpvUX5Mgadt1FqunI19hXjxXL
         HYDbrRkqqiuzWyhWOoeoMZTNPTKl/eT4pnd3TZ6D/7IksmxYKW/JANX/CnsG40MrMxNJ
         REvUqTRtfil2cLRUNoxrI6ftgSHf4f4jmyfFtmHUuKusWSqQA9Jpf12kbc210A1SMFtr
         NwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hbQP2nIs3I0aaqoZVJjhFPr0JvEEe3o5o0kgFdq+OuA=;
        b=pyq7w3+qNPBUM73STQuRdsCyxAFY+TpHdG4k1v62u7HvDRxSsULgo4i9m4Az1x3Sv8
         1peAiq8YxMxU49MiUiMuns9N8b57/5X+VTjxUqIuVHjZW2phCu0gsQDnKZM7yBbD+I1i
         1JZrtkhUrAAW99MGUDxzgBRmh3fSnoIqRKRqxTXQHO7oN9R5UHCwJ/Rota5QITaKNxqe
         su9DFOEKobc8Zq/UAb4YaOZb4GFHOcSFOvxMYeQo0ILZdAVOAQNu4QSHkiHJ7CkOoSul
         QHFL91JKcMK0n9x4Tzs0NFpoUcrf3rygIMuAbzkDdmfD1Ux7a4P31CAiudxWOEONtmVl
         +luw==
X-Gm-Message-State: AGi0PuZ+F+lxsZaQQOOLZUZMJe45hf5xLTPFK3NSgecB+ydZ86RVNXk0
	7ehbrJTB/L9z8EadMDV8i2E=
X-Received: by 2002:aa7:8696:: with SMTP id d22mr2797131pfo.54.1585631805935;
        Mon, 30 Mar 2020 22:16:45 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id q8sm910815pjq.28.2020.03.30.22.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 22:16:45 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 1/3] Staging: vt6655: Remove CARDbSoftwareReset definition.
Date: Mon, 30 Mar 2020 22:16:38 -0700
Message-Id: <8ec491439b947c959fab52e006d9ca26ec3657ab.1585630805.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585630805.git.briana.oursler@gmail.com>
References: <cover.1585630805.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDbSoftwareReset that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Update patch description to be more clear, changes suggested
	  by Julia Lawall and issue found by Stefano Brivio.
	- Remove extra newline that was introduced after function call,
	  change recommended by Stefano Brivio.

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


