X-GM-THRID: 6666446662964084736
X-Received: by 2002:a0c:8776:: with SMTP id 51mr14106278qvi.1.1552153908612;
        Sat, 09 Mar 2019 09:51:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls5599738qkd.0.gmail; Sat, 09 Mar
 2019 09:51:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqyTtstQNQaQqe7Z8w6XtruMf9sf2gflnNfyocyrfzmncAB22cIBmxibt1Q4leoL7F7Cevw0
X-Received: by 2002:a37:a90c:: with SMTP id s12mr1552314qke.30.1552153908048;
        Sat, 09 Mar 2019 09:51:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552153908; cv=none;
        d=google.com; s=arc-20160816;
        b=aqNDcEANuFzg4HpZ4kRCuPGS1x3bAAkGsQe7NyYv5LHYFgiU2wyd4pfKiB+8PcWN9I
         GtcO5GrFJnktQFy8ihMJjyra8vevzZso9ETarIKePN3CXL2/hYdbfjEEPs2nhgLjN7Vq
         ULiGrFnkgaNmd9zyTDLH17pBk0Usqm0Yv0645xfkAvn/wGzR+tqitJXnpvGuTjlc9489
         zKaB2FIJKLdkmq5FqE9DypO1mqUVkb2i1Fwp3o9yB1lrUeZ3Qe1QY/Co7iKKf0jHk1Wx
         6zq8rtJMqxFporW3UhvGrj8nBoCd866JYiytaL8Ib9fe3xy/FlF+CwDmzKIZB0tIdRUH
         hd1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dQFT8XB5DKTylAZ0LzQal6+GxDid+CcMHCd+HM3Lb54=;
        b=Wmyc1DRYmGOI2zCgHadW1xTt918T2f+t+KMWbEBeRoCssI6GWAJdI6fmYFlrOPy1v4
         tmsl3p30hjnIC64rDLbDyKSGKPVzUI0czv08BIyAsGYLHexwlkDVIVAzjMNUdHryl2xZ
         NBIpShXWLEMXuA4HBGUdqBEurxE0WmFhE8JmpT/Y6USE67A7EVgP9ydXsHACGd2m08LI
         cy4ljciapf3vN6QKwUlY4H/JIWDd8GWOVSGMiIY2JaaLwTAqKDP33gW/JLDMyzflPTpM
         /jCJsCGqiTrHSvRwL1oyrkMooqhoNJW0gmcuv4H7ZTAHDvZE5lrfZYMP7xl1479rxn7t
         xOTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EGSV5OQ1;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id y202si49222qka.2.2019.03.09.09.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:51:48 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EGSV5OQ1;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id h1so514089pfo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 09:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dQFT8XB5DKTylAZ0LzQal6+GxDid+CcMHCd+HM3Lb54=;
        b=EGSV5OQ1BhGsetWCyUDwnB66OD1udCYaPOj/LADxj6JdI1dkK5rgpJvU2Bfw4ho5A1
         hzZZ2VYpJO8RJyPj0/fD6Do6yOmSzxRHXGzqGBC1oogXN15jJnM3Gr1lb6frZLeezfjO
         YRXp5/Xuk39WN2m62naXuL2IBbTy9QkfHZ6kwWyskivJ3H7C9/us+tv9TpoDtCjJzhyY
         Nq+e4ZIJjVnrgHz74SVQ6eapFSUtEPBzvj0LEBKHIhlqfj9hhOGwzmLbyHwmlxTkRNMi
         BKp7Yda69sW4I/GadCptjUkyGUqToC9jpwb0r5STZ9/LUfCgmLjsND+2XWDun+So9JjP
         5ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dQFT8XB5DKTylAZ0LzQal6+GxDid+CcMHCd+HM3Lb54=;
        b=R3AYErT4aicKkiHDQR+K6c+7oSUt/uauFlxrTidn/eF5mHIR0dLS6yqAIL9dp6Xtef
         3NxVAdjFse9k23x/Un2BfL4727IzbJuaPRN9i9UfqT0M/pLKEOLXDKVfSrEqqjJkEeWN
         Jz1Ts37lNZ80YC1gXItpPYqKPRQIFueEAMh2utVYhLBT1UxaQAYvGp6m6Wa0M3qhuydc
         0acRUl5Dbw5MBdwPAu7Yi7OkB6+bQv11B34v2SDRWKnKN1kBnNUvUJdVuQBj/gT498ar
         zqqHzihGNtOE/8Nk0EvIdSUuMZpq9B4FwMA49BdcoTXfiiFV+t2M4vtpjxrji/CaNr+2
         EBBQ==
X-Gm-Message-State: APjAAAVpBzK5cZZHtHkxOU7o5sc6LcBpMWdhKEv2tXb4QM/pngWbPtY+
	FsfM8/4jdkap8Lmg66giPRc=
X-Received: by 2002:a17:902:a50d:: with SMTP id s13mr25478715plq.233.1552153907489;
        Sat, 09 Mar 2019 09:51:47 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.116])
        by smtp.gmail.com with ESMTPSA id z7sm1714585pfn.177.2019.03.09.09.51.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:51:46 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: media: zoran: remove unnecessary parentheses
Date: Sat,  9 Mar 2019 23:21:36 +0530
Message-Id: <20190309175136.52029-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309173734.51405-1-himadri18.07@gmail.com>
References: <20190309173734.51405-1-himadri18.07@gmail.com>

Remove unnecessary parentheses from right hand side of
assignments. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Add space after period in log message
---
 drivers/staging/media/zoran/zoran_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 40adceebca7e..c27e1472b7a8 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -496,7 +496,7 @@ zr36057_overlay (struct zoran *zr,
 				KERN_ERR
 				"%s: zr36057_overlay() - video_stride not aligned\n",
 				ZR_DEVNAME(zr));
-		reg = (reg << ZR36057_VSSFGR_DispStride);
+		reg = reg << ZR36057_VSSFGR_DispStride;
 		reg |= ZR36057_VSSFGR_VidOvf;	/* clear overflow status */
 		btwrite(reg, ZR36057_VSSFGR);
 
@@ -1421,7 +1421,7 @@ zoran_irq (int             irq,
 					reg = 0;
 					if (zr->v4l_settings.height > BUZ_MAX_HEIGHT / 2)
 						reg += zr->v4l_settings.bytesperline;
-					reg = (reg << ZR36057_VSSFGR_DispStride);
+					reg = reg << ZR36057_VSSFGR_DispStride;
 					reg |= ZR36057_VSSFGR_VidOvf;
 					reg |= ZR36057_VSSFGR_SnapShot;
 					reg |= ZR36057_VSSFGR_FrameGrab;
-- 
2.17.1


