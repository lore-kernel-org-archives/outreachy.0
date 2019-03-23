X-GM-THRID: 6671534120557871104
X-Received: by 2002:aed:3a41:: with SMTP id n59mr12509679qte.344.1553337583292;
        Sat, 23 Mar 2019 03:39:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls590640qvc.2.gmail; Sat, 23 Mar
 2019 03:39:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9aFKIHmbMJIc4KHPodXw3yktB7bvGE/TtOYxIL58bxG5hSRFxyksHr3FBLXix8S5uwqQT
X-Received: by 2002:a0c:9524:: with SMTP id l33mr11813742qvl.41.1553337582661;
        Sat, 23 Mar 2019 03:39:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553337582; cv=none;
        d=google.com; s=arc-20160816;
        b=nGores+69w82zIOBrA5f19JbyweJEvrTw1sNEo+V5Y6FfbJ8WPisC7YHiPRI1zEk81
         wCay8uRW6rmtWNCdJMgtdfAoT86o4Qfi7bbhWiWL27eUhqoITvFHZSDy4pj8TUyPpOqk
         hrOEJ/gYaCuWzHUPUYOQBZ1Jx5K0JA9DpTDAWANLxOhNYHK77dTpdYjGYbKW+zxNyLGw
         uX37mDL1snMowFLEAG+KziT6YNvazuZttz6SvkApcF9PT3cIR3ek+qTRy28QN0NnPLxq
         8uSD0oZR28BKSEF7FUz/nylVG1KlZQRvmp7qX3402RPe+GIiL74h+jjrPKi8GGQEHIRq
         5zOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ThU9cMNLVWdkfgeChg+TvlSDMW9sxI9Xs5ZnPczGJNk=;
        b=V5RS853AzjAdJOu/wm72/FyYMS45+i00O5rCNaTlhVNFMVacEV6Q38oy579xXYQZm/
         wh555CEikVT5VDaS7wmV4lUQZzUUK5qFe7QcXkXvtKLHLZ9FVPPYZVCpR+Eci4S/2X04
         waNp+NzqYwnW+7GPu7TeM7oe2vQoY/15OFk47YQiyGU16C2zTiavujlAP+kR70xbjJUn
         lhaJFBfPgBe6cqC8KeDwPpfNIAWheN5HR92ZAet+gigsxxHxe4smZ4NrZBqQINX0Ivw7
         uXxow9qtfTt0kU3sgGmeym79B0B9DeYoSA8hed8Rbou3g4N+ZOl1uc7P3o9lRH5MHe9H
         5sYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=um5wAclj;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id y1si434030qth.5.2019.03.23.03.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:39:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=um5wAclj;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id b12so3233230pgk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 03:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ThU9cMNLVWdkfgeChg+TvlSDMW9sxI9Xs5ZnPczGJNk=;
        b=um5wAcljMQOhRvMM8rPw3U0vf1wXg0DV1ttGOY1YbEpiKcsqv7xPjnh0uAlMcxn/Iw
         93Vq/2bFuUHJ/T/xyw1cPodh5mHKsXSQ0z88bSgG7Au0zA0bJtd5Y19h01SpS1O55Uj0
         YUi7eRctGnmo8GQf1rXQL92rUCL8xwtmNf58UX9Y42u2hD0inOTzBzDohx1i53rdlJYz
         Gl7i8HWcd/WPeBUXttCuub1OSEO0qfwYdmTyPcE5R7IKcyb3gP6P7HPffcWtrkFN/2od
         THzeGreGQ2ACpQFeVerSy6IhezbAbx4i2gAaoVk+op+51GPRf3F88x8HHLElHeITHG3C
         h6GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ThU9cMNLVWdkfgeChg+TvlSDMW9sxI9Xs5ZnPczGJNk=;
        b=AwHM4K3fv9S7oaPCcgbVA+H7Ri15PIBzTXXGGe0HTohgYwzT1dXG3PCbDKOEqpdoxQ
         2A+6z8ApNRnIM03Ba3rMl4bkFsr1RK+4i3bSDCcKM9l6ktw8M1+KCKnLCO/5wwrBlTtF
         h268d8Lz8pcbXfkmSRA0vMhQpXURZXY9crfWjOilJ4sLqYVdOge+nMn8oydf5MVNsjkQ
         6t70gFQ1clPFMeDv2fuRCJj6TL2ZR5y0E1nfwuMBuzdWyUTDFGcsUmNAGr+mhC4f65dh
         WIgLVCTpAKeA7tCj+kLKJF8i+UCAJfq432TaxvmHK3wxi+Qcj3cjxJye8sIISdp+6mGm
         dXEQ==
X-Gm-Message-State: APjAAAUTB5w466j7JGRYV01tSpokn3GQRc2tq2DAY7FXt8chnUMCbIsz
	tmHC21GBvexnCktbnGLfDa6tMMwjBCY=
X-Received: by 2002:a62:7042:: with SMTP id l63mr13689601pfc.1.1553337582096;
        Sat, 23 Mar 2019 03:39:42 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id n9sm10401301pff.43.2019.03.23.03.39.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:39:40 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: include: Fix spelling mistake
Date: Sat, 23 Mar 2019 16:09:24 +0530
Message-Id: <20190323103924.30638-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace negoitation with negotiation to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 559bf2606fb7..e729ecd5e9ab 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -1070,9 +1070,9 @@ enum P2P_STATE {
 	P2P_STATE_TX_PROVISION_DIS_REQ = 6,			/* 	In P2P provisioning discovery */
 	P2P_STATE_RX_PROVISION_DIS_RSP = 7,
 	P2P_STATE_RX_PROVISION_DIS_REQ = 8,
-	P2P_STATE_GONEGO_ING = 9,						/* 	Doing the group owner negoitation handshake */
-	P2P_STATE_GONEGO_OK = 10,						/* 	finish the group negoitation handshake with success */
-	P2P_STATE_GONEGO_FAIL = 11,					/* 	finish the group negoitation handshake with failure */
+	P2P_STATE_GONEGO_ING = 9,						/* 	Doing the group owner negotiation handshake */
+	P2P_STATE_GONEGO_OK = 10,						/* 	finish the group negotiation handshake with success */
+	P2P_STATE_GONEGO_FAIL = 11,					/* 	finish the group negotiation handshake with failure */
 	P2P_STATE_RECV_INVITE_REQ_MATCH = 12,		/* 	receiving the P2P Invitation request and match with the profile. */
 	P2P_STATE_PROVISIONING_ING = 13,				/* 	Doing the P2P WPS */
 	P2P_STATE_PROVISIONING_DONE = 14,			/* 	Finish the P2P WPS */
@@ -1082,8 +1082,8 @@ enum P2P_STATE {
 	P2P_STATE_RECV_INVITE_REQ_GO = 18,			/* 	receiving the P2P Invitation request and this wifi is GO. */
 	P2P_STATE_RECV_INVITE_REQ_JOIN = 19,			/* 	receiving the P2P Invitation request to join an existing P2P Group. */
 	P2P_STATE_RX_INVITE_RESP_FAIL = 20,			/* 	recveing the P2P Invitation response with failure */
-	P2P_STATE_RX_INFOR_NOREADY = 21,			/*  receiving p2p negoitation response with information is not available */
-	P2P_STATE_TX_INFOR_NOREADY = 22,			/*  sending p2p negoitation response with information is not available */
+	P2P_STATE_RX_INFOR_NOREADY = 21,			/*  receiving p2p negotiation response with information is not available */
+	P2P_STATE_TX_INFOR_NOREADY = 22,			/*  sending p2p negotiation response with information is not available */
 };
 
 enum P2P_WPSINFO {
-- 
2.17.1


