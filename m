X-GM-THRID: 6745921261807861760
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr4876360wrn.233.1570657189249;
        Wed, 09 Oct 2019 14:39:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b7cd:: with SMTP id t13ls618564wre.5.gmail; Wed, 09 Oct
 2019 14:39:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7d1HNSRRIrPxZtcujsL3CnOfphkBeuCKT84ckrA3RSxehk+O6SZ+ECemvAIAqf6YUoQoE
X-Received: by 2002:a05:6000:112:: with SMTP id o18mr5037788wrx.323.1570657188334;
        Wed, 09 Oct 2019 14:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570657188; cv=none;
        d=google.com; s=arc-20160816;
        b=C+jfDfeHy7IFF114HAPPa9iSogxlXr8duJUGjkB3vSLLW6v/424jsTSGc2zZEXmdfI
         m0+Re75LwESXeilRMuCK5/6+0v2VOm/28ZnFRy7ly/ns9HlrRCvrldIib1aUVjLV/xTn
         YXIDVr3TZTwPKp/IcVJyzT/baATFF7v0F8oFfRmMpT2sQNGbRoJS70kzT2YvtcTFRwcq
         +FKBYJTEgH5mtPaj5+k4iGD+zesQwMuvL9vrvJ3jL9daBywXieCmkqP5OJVDmGQJMtKA
         4p+0Alcl5gQqtXBBRbXV6Qf7IlQIXKtBiVayHt6Y7DAHn23N71uUK2ZzvXZXSKvIAT8M
         2EKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=YgBEMDkdSQ5Ec8MEefCc3vp+onXO+TvcwSCFxOlnuM5U9IZVCG4kaRjn+kzST/ifzg
         GXFY6r1yfWUzItDOwUpScl1LTDn7AKAIyT+WmFF+vSNhYgaaJg0HeOYbWe1PWPEUUVP5
         jwg5SFvu+3rHihbYihonLTLWvegASG+is/f78dKiQ+rvBp+KXS3swOH1jSVxbujJH7uz
         qpXum4+fndrRMUAUqhj1/QcMfgpZsHS3oBpmYudod3QGDP3mDZDaXiwZj6qT7h5hBRRY
         YszJBGBYMG5RVcPBDVh3caf7gWxhNqgyvKn16eKaSR06ajmxdlzv/7PFu1jNU9/Senp8
         su9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u/wm28kE";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q185si148475wme.1.2019.10.09.14.39.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 14:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u/wm28kE";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id r5so4894131wrm.12
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 14:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=u/wm28kEkru3TyprTgddW261vX/5XbEce1Ws5zmBXcfUf86jiP3Djy4kG4KxmxxUK9
         S+zhx24CvvPULDAfFFD2kFVkW4DRwrjnX9utOwcH92CSl5YKmfbNg9XpeZF132H7zSYW
         BgNF4fWC5tGSlU9/dumZWgq+xHME9yHEqQ5LBs9I9FhBY9TvNuOJt3NFpX7BInPeC3Hx
         iIyzQvFQkqpJzQXd8VUBNbfbgnwvoxm3DgpbN5vkWBWOGw2Vuf/7MedZnz2h24lBEATp
         oBEmCJ0XnLkbxX+hEmPpelZVHP1oH1/yqeMIo4rZze1m/qHEnHk0C+z734FNqo/EXXE9
         mXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=hfY6aBYVYaNdZwCIUQ2HWiTkftLdu2ASU5J19WEypaXnQ8uEaGLriE4qKA0OEObmv5
         DS0zZQjwXFLLmU+x+dFdrNXss6k2HsFxsg70hFuAAC4MkYoBbmw8a7BPlIipcR8IebGQ
         n3q1aFYbIsVu1wdg7jhFoHx26RrOD5N6UCVzyx0tykdsBrfwNpxST4iBPQZmcw3ch31U
         Bi7ILdbgQeR/dkE71UAq718R1/DH7NKF2/MuSqfGySuiTRL0caup8uZSO8/Vh0qRMSZK
         WePvAR1hxlAi/AOPddxartUTinuZbk7z8SBhr98z/mBj7aMy2io7cuWEih8IyKnL5azV
         D+ng==
X-Gm-Message-State: APjAAAU9PPBw7Fkn9putp0Xx603EH40C4TnL8rNT+k73XYzth19COErz
	JqopUeSWJlxj3nq4CIBNUgR2ohDUbkQFD+8=
X-Received: by 2002:adf:f2cc:: with SMTP id d12mr4943049wrp.105.1570657187704;
        Wed, 09 Oct 2019 14:39:47 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id a3sm6025741wmc.3.2019.10.09.14.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 14:39:46 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: qlge: correct  a misspelled word
Date: Wed,  9 Oct 2019 22:39:36 +0100
Message-Id: <20191009213936.11532-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a misspelling of "several" detected by checkpatch

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 5599525a19d5..28fc974ce982 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0


