X-GM-THRID: 6204103069755506688
X-Received: by 10.180.184.164 with SMTP id ev4mr1129268wic.3.1444505318228;
        Sat, 10 Oct 2015 12:28:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.156 with SMTP id 28ls438346lfp.5.gmail; Sat, 10 Oct 2015
 12:28:37 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr3948946lbg.2.1444505317679;
        Sat, 10 Oct 2015 12:28:37 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id m4si174609wib.0.2015.10.10.12.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so105773062wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9FRlWSiV0BB2EJxFGUEVFzSy6wav9uVmZXk0/YLAOrU=;
        b=JxFq5T+qgmxppM0zEuHk2YWO3qJwNByAReQPeXalUMFPimICdRq4AMhrBwqrycm/h8
         /sFY7SVHagYuuxaOI/XMY5flUdzUY49iiofLILzf81QWHlCh2tglzTv4V9qjUUX9Gevc
         Hn04I8/ozNagMM2SlTvZ+pydtWPtWwTlrF7J3ApR0w8tohcfgzaj1Ivf/q7jz0cv7XgO
         Ny+BTtOKvRJ7ZhAuhRJHnnjuyxrdolA89qjWC05tncRyvQLRK5RZH9kziNGIjCNmyaTE
         8ljI3/64VBooPubV57NywF57knyyaZB2X+xhum8WuV5+y8ifpSaFmpwmHBDZe8B/dQOA
         bkog==
X-Received: by 10.194.91.193 with SMTP id cg1mr25422283wjb.88.1444505317591;
        Sat, 10 Oct 2015 12:28:37 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:37 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 6/6] staging: rtl8192u: Add paranthesis to complex macro
Date: Sat, 10 Oct 2015 22:27:48 +0300
Message-Id: <410805a906dc0db0f9477ee2429de100a1a0e77d.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix 'Macros with complex values should be enclosed in parentheses'
checkpatch warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index c639aac..2c0060c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1513,7 +1513,7 @@ static int ieee80211_parse_qos_info_param_IE(struct ieee80211_info_element
 }
 
 #ifdef CONFIG_IEEE80211_DEBUG
-#define MFIE_STRING(x) case MFIE_TYPE_ ##x: return #x
+#define MFIE_STRING(x) (case MFIE_TYPE_ ##x: return #x)
 
 static const char *get_info_element_string(u16 id)
 {
-- 
1.9.1


