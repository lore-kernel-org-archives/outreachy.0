X-GM-THRID: 6395915671391174656
X-Received: by 10.25.169.14 with SMTP id s14mr2722471lfe.3.1489165162388;
        Fri, 10 Mar 2017 08:59:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls1071889lja.26.gmail; Fri, 10 Mar 2017
 08:59:22 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr2996010lfd.23.1489165161985;
        Fri, 10 Mar 2017 08:59:21 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id y19si15403wmd.0.2017.03.10.08.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so3213123wmg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kstw0e5Jy5TI6tfTd1eqEES3BcKqSqZdJuLykg448Io=;
        b=eCSJP8jKRE228dUwBMd4agV6INVWOwVQkmP2DWxKdnfRZVscdFmrSgSmVJcXHr3Hmq
         Z+OvsBYSf9pl1LtXoFwWiUDaagk32hfBeD1EJcER2YRvR7+xGSUm+O1R2okoYbu9jZcL
         PyiYRuYpbKX662gtAREZ75w/SMeylrxo9BkeDbBzZyGv7t7+kQ0xoMRInE8utPvziW5x
         +Jswxv5dYDpg8n6oKBh/uM5tZQEhyC+3d4v1zZnsIdibVriJbwlsTj38P86SWSu1aFza
         zlII6UJAmORNbTRBp0JoXvRmUdUZQKIxYVnyasTu2ol9LBojTr6oUZojOz6DwOQdcdYq
         3YXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kstw0e5Jy5TI6tfTd1eqEES3BcKqSqZdJuLykg448Io=;
        b=jferEVE8lyj6PY1OYz+hxJal0fw2wcABHhP3Xfdh/8lNO6csTfavUk2MSdHunR/wmC
         AI38J06PiqHt8EmE+3rYAHIo3aNmSYwclOHzDOkOFimdeXlfuaagSnWJ2Zfl4BGG5+fi
         EZ/66JmWkqfrj42om8rFEIZ9PYtBFg1/RBx6D3l0xzi5sSUxeX4mBavM74hY4QyJBLYK
         Po/U6S6wEPSA4fdsuGY7fICTR8FZvyVnrD3zkO3bQrsN0crMYAWwy9bB6ov9Cu67AIfC
         qeHfxNb+hkqO2lkIHLqeEnbkH7uKHwZ7cehb5FDAat68zkK391enLqOyYIbmW/O164Lt
         WlfA==
X-Gm-Message-State: AFeK/H24RXoPb5qX5+pJQEBGXaRSfpEueQBiNvmMfJYdkwYZgDM6d2/CrHKn9DaHQxTo/Q==
X-Received: by 10.28.103.194 with SMTP id b185mr3379399wmc.13.1489165161821;
        Fri, 10 Mar 2017 08:59:21 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id 63sm4107074wmg.22.2017.03.10.08.59.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:59:21 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 4/4] staging: wilc1000: Delete blank line
Date: Fri, 10 Mar 2017 18:59:19 +0200
Message-Id: <20170310165919.4186-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delete blank line before a '}' to match the kernel coding style and improve code readability in wilc_wlan_cfg.c file.
 
Fix the checkpath.pl issue:
CHECK: Blank lines aren't necessary before '}'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
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


