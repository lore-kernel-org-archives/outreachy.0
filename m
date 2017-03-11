X-GM-THRID: 6395629856318554112
X-Received: by 10.25.40.17 with SMTP id o17mr3154523lfo.25.1489224147393;
        Sat, 11 Mar 2017 01:22:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls1245175lja.48.gmail; Sat, 11 Mar 2017
 01:22:26 -0800 (PST)
X-Received: by 10.46.8.90 with SMTP id g26mr4156096ljd.16.1489224146232;
        Sat, 11 Mar 2017 01:22:26 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id l138si184422wmg.0.2017.03.11.01.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:22:26 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so2341231wme.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CYbaNc7xP93hKa1Xv7Mmhj18vZYrJrLzeiREHbYOvZw=;
        b=dJ2nbKgsttDiV9jtAK0DiDfTWJFaJ94ZPBAHa7uc/QnmeUU95l/RIL14s8wuQ4CcyP
         EomWV7229oYDF/oUqtARtQAVXooB8HF4fiifa4sMD5mdWhBf9Yc72WoMKSly27wv6CaC
         z5PAFgxPxY97fVGEMK/mKgtH8xVBmBrwPLOlx8AMon3kCC2gJSJi5KGLHomnL3rjX9KN
         srp/aldm6EcqQWSNPXzHHNGXFGQ/srsnPkV9n3yAfx1ObVZ6kujMiE5rLMAqvecAzE56
         6iu9yYS3H0qJR0ifvP1vRx4jdfAjpSPoDw1f7sChMkx0rv3lZ6xaJWs6F81Ih0tF/FZd
         aGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CYbaNc7xP93hKa1Xv7Mmhj18vZYrJrLzeiREHbYOvZw=;
        b=kG/FmSEba3Pw3usRTC5vUHzYMfNp70IM3kw9GH9DVG8Hjk4qXNDlRYDrjrh24FrfzT
         v9t+wrOK66SFAkTdkLJmEFPP47Jwe+Lo3yZYLr0qWM98zkp8LWbV1lvOMww8qsTPM1yp
         R4MZ3ZK3QRANnvwfUq7HnHCryH/hyUxTisqkP3Rsee3Sjaohash31QuSofRA2FlMbMiE
         vNFO/Qf0AGRertXJs1qz8Vx2y2o8s8cTfmww5QdrgjZI/f+6cKJrXC8ztQ9gme0xgQ3s
         frQfYnftMbuKFNF9yrygHC8B8IjVxlvi3mhh+YwXCPFrKlW5rxeNcNG/NJjeGIE/gycJ
         RuBg==
X-Gm-Message-State: AFeK/H0nGeYFJSL7+RS6fSsSNA4SDzFFySo6BXKmiUOo9SEwjAte9AhvU+WLKl/8aWTWcg==
X-Received: by 10.28.109.214 with SMTP id b83mr2339744wmi.21.1489224146066;
        Sat, 11 Mar 2017 01:22:26 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id d6sm2966530wmd.6.2017.03.11.01.22.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 01:22:25 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 3/3] staging: wilc1000: Delete blank line
Date: Sat, 11 Mar 2017 11:22:04 +0200
Message-Id: <20170311092204.3465-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311092204.3465-1-diaconita.tamara@gmail.com>
References: <20170311092204.3465-1-diaconita.tamara@gmail.com>

Delete blank line before a '}' to match the kernel coding style
and improve code readability in wilc_wlan_cfg.c file.
 
Fix the checkpath.pl issue:
CHECK: Blank lines aren't necessary before '}'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Wrap log message lines at 72.

 drivers/staging/wilc1000/wilc_wlan_cfg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index fed66dcd..f442e6f 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -490,7 +490,6 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
 
 						i += toggle;
 						toggle ^= 1;
-
 					}
 					memcpy(buffer,  &g_cfg_str[i].str[1],
 					       size);
-- 
2.9.3


