X-GM-THRID: 6673911577731661824
X-Received: by 2002:a5b:44e:: with SMTP id s14mr4167231ybp.100.1553891128154;
        Fri, 29 Mar 2019 13:25:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b807:: with SMTP id v7ls816659ybj.7.gmail; Fri, 29 Mar
 2019 13:25:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0bmNzXiooIzfgDRW9krhx3qT33cuKyKf+P//R+zIO1olySa7kc0G1CReHX9DaTs+Auw8Q
X-Received: by 2002:a25:ea4e:: with SMTP id o14mr876870ybe.102.1553891127354;
        Fri, 29 Mar 2019 13:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553891127; cv=none;
        d=google.com; s=arc-20160816;
        b=cGtF7pGXrkHGN0dcScVFvy0lAUMAyF7hI44hAlyldnPn5Y6hTRvQsCb9Z8/YAFkVWw
         OMuencd1x7lFWcNtNA4SpeLb5SfRChmp0U9Cg7Vte4mlXF0xjdvON5kghzYGIoY57NUV
         FSZFxOzZPfZSlR8jCQPImviNTX8WqGQzmJuKhlx9wYesiBGoV49vBRGVMNm5euqHzTkM
         1GUYo9lEtHoOG5jJqtulZXOv8dZczz8vZBRdhg6WMgKIw6tgIDdUTxcMOoD5LU+IRopT
         DI46PAQLn+EDaIs2VMygd98mafv9KoRTrR4US+DzwIEzK1xNLWCDzChqCV0LTozsrdFe
         YlNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xommcchWz2J5m1CMm0chu4RUTFGJY6UCV8vBTHbwTtw=;
        b=xOrg6HMl8kUGYBA9QpmlJiRZH8hL2LYXgMyI2RN4ku9Tg1DbtvKAflchWJ7TDrK/f2
         36lGIu8y0qkhL4N99b80uzb4R0MWAs3djIW+9Cg12fRRZHqczXoP8MHb1PI9RhT7FRBH
         PUHydz3VOTGK4miAaMy1wyEFkrfsBIjWugjXTh0/F0H8HliMVi8RW5dktGmklsqBq5m0
         s55ZXyaCt4cKBjXYLW5L/tWBiI5oPINkovLf7cz1ajw6mlIND9XeBezgML+80dsFk2ca
         SLQSbDV2JzO+rZX7+SQqSRhS1ApE/bPZleH5cXKu2IHr7ct/Nn2HbleJk4cN/kwCzW2D
         pXrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kg0hPDgk;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 204si189460ywd.4.2019.03.29.13.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 13:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kg0hPDgk;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id t21so1574017pfe.2
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 13:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xommcchWz2J5m1CMm0chu4RUTFGJY6UCV8vBTHbwTtw=;
        b=kg0hPDgkwuD8Ll/fjzkpclpEHp/gPTYZdyeIJu0uduQGyus5ldAcUSpYrhrqID2JXc
         FTLDEvjmzXbN5LXG8QZPSHim/CqFCwiQiNE6Z5a0x6tME4QHqZ6byZGNL3proxiQhOar
         CcJhKLjus0OFIj3x//exHlZPyE12xPUqqIa+8kZp56nSHFu3iFDSVwNPWQLyxVBk6mCB
         TzD4Eawaa8vz4XnIpQYTU7GRN2izLAanen7U1aOwEFovpyU7vSTzqNsilasPHj+D9Wba
         PDOcOib6SyLLDF196EWoHLgqV4LXGgL8ne/9litfD5iAMt+n16s8hakDxxIwGFiQuAgD
         PblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xommcchWz2J5m1CMm0chu4RUTFGJY6UCV8vBTHbwTtw=;
        b=GYvx5xrvjV9rfJsN5X39oKAnnnteTC2uPZ7hjPVHc86QZPhcJAD72wCEE+M+eO62nR
         +9lJ/YTMRz8vCVbH3MoWG+Yiy0ZQf1UXOWta307Tu2BqFCgU90oxwCvsgaJANiJrDXqg
         Q/lJqNQUJykZMYcp/QrqXjxk6d+ubbde3RsOzzvi28863xvLpoxq34YZszbiHha4Z96W
         olcP0TB9Fmuv5iKTjzbxls0BaKF3wjlMzmkx7JrZjm3OwoIXk+36OXr2eEj/k4fZ7m92
         J0reOgz9Q2Etpyte3Bx2H4sFg85JAhh1jYD8dwdJGD+b3QWhRzU9qLEvtMOPIfRc55xz
         JCUQ==
X-Gm-Message-State: APjAAAVsDAkf1FmKcqBADerAfjNrGLczwxI/3cRVshh1ZWlxXTOPe4Xx
	9Irp1i/J4IsgpqGsAN/i1YXkxC72OtY=
X-Received: by 2002:a62:571b:: with SMTP id l27mr21013772pfb.195.1553891126420;
        Fri, 29 Mar 2019 13:25:26 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id a65sm6877243pgc.72.2019.03.29.13.25.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 13:25:26 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: core: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 01:55:09 +0530
Message-Id: <20190329202509.21087-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Removes unnecessary parentheses while returning an expression.Issue
found using coccinelle.
Semantic patch used to solve the problem is as follows:

@@
expression e;
@@

return
-(
e
-)
;

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 2c172966ea60..fdbf967812f9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -518,7 +518,7 @@ unsigned int decide_wait_for_beacon_timeout(unsigned int bcn_interval)
 	else if ((bcn_interval << 2) > WAIT_FOR_BCN_TO_MAX)
 		return WAIT_FOR_BCN_TO_MAX;
 	else
-		return ((bcn_interval << 2));
+		return bcn_interval << 2;
 }
 
 void invalidate_cam_all(struct adapter *padapter)
-- 
2.17.1


