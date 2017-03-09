X-GM-THRID: 6395629970137284608
X-Received: by 10.46.21.28 with SMTP id s28mr536549ljd.14.1489098642745;
        Thu, 09 Mar 2017 14:30:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.87 with SMTP id 23ls454838lju.52.gmail; Thu, 09 Mar 2017
 14:30:42 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr2288669lff.0.1489098642313;
        Thu, 09 Mar 2017 14:30:42 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y19si128185wmd.0.2017.03.09.14.30.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:30:42 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so13115537wma.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SolpoQU4rb66zs0deUfwwH2/JVykgRwoPQLwuU7wAj0=;
        b=drSpKl8Fb7UYPcn0ozsadw5qnKosFxniaqzTSzixkEXG3GO55gidxd4eaoHWAtGjPC
         OXsY+AhC+DaVkrDhawiTgHaWiwdn2cTMg3hlLwC4YAwwgn9haLSlff0b3A1QS4u9DAYk
         Q6YrP0Iq8RhM2ljK7G/eY/ZfuLH8Ha/PnLACbpRd2XhaP3gaXGIL0DZgm8cSOrp6TVw8
         RvmjJ0J8p9LkKcY8oo48b2ircwxha6YZrTh/B9E84l9IRdTeElwWWt7EMeD7FV37aJ9n
         81oF1+6F1BYTS7KzjF+kQds2J5XbfEwXE4z81OyWkhnFKoIxIM/5Luw+PejKpzfcEIGp
         KvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SolpoQU4rb66zs0deUfwwH2/JVykgRwoPQLwuU7wAj0=;
        b=R19eujeDF6pY57oGFy7U7j/5nSbCjbl2DFL0G13KUp7ftbwL6EGUNH+1W8A87D3Hyr
         vMgI8tFTSUI+wdgJwByEZuFb/dHEjTws8pOH+Yn+QA6B1GA/7gKUJfS352jWXXf+36gw
         AVClecpF9CxyfYgoVBKkP60f9mkYASvLAq4stx9CHFL5iSFWk670sc4HJNseBnp1QpSi
         xahlgGjrHodTaIVztogp7L0kOTgVZ0kKakKHz224HyFzTnB+myiVeBYeNCI5TdqkYwOg
         zyAaDgC+3aMy845/JcD/FwCR9Zs2uvFaMCnfxaQR6GrWukB/cs9aFM+ZNl4vG9OOY4mn
         u5GQ==
X-Gm-Message-State: AMke39nSK5uM/SHG80dmInPGdLN3QpjIb/6aqAGsfRaax9GMX5VFtGefbv15LGjd/LwCKQ==
X-Received: by 10.28.137.211 with SMTP id l202mr12359942wmd.118.1489098642130;
        Thu, 09 Mar 2017 14:30:42 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:10f3:5309:404:d736])
        by smtp.gmail.com with ESMTPSA id m186sm382208wmd.21.2017.03.09.14.30.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:30:41 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/2] staging: wilc1000: Remove camel case
Date: Fri, 10 Mar 2017 00:30:39 +0200
Message-Id: <20170309223039.7303-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Change the name of variables to remove camel case.

Fix the checkpatch.pl issue:
CHECK: Remove CamelCase.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..a2df5c7 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -124,10 +124,10 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length);
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
+				 u32 length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
+				u32 length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
+				   u32 length);
 #endif
-- 
2.9.3


