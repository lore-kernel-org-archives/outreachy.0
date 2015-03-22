X-GM-THRID: 9490543935488
X-Received: by 10.67.29.201 with SMTP id jy9mr89881485pad.9.1426985520026;
        Sat, 21 Mar 2015 17:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.8 with SMTP id n8ls870964igi.27.canary; Sat, 21 Mar 2015
 17:51:59 -0700 (PDT)
X-Received: by 10.66.157.129 with SMTP id wm1mr94632852pab.15.1426985519397;
        Sat, 21 Mar 2015 17:51:59 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ri9si1198223pdb.1.2015.03.21.17.51.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id j4so58512685pag.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HBez/rTC6EA6u/SHlpM8SlQ4o8QGuRGNJLPSGcU4VYM=;
        b=IMZImYd0zX8huiVQNrJgNh0iPQNyRq1fKlca4eiicWjU7O5av6Xml/cUtZMrRNZh0q
         8OmhaKlQ1drFGvvYw3q6m2T3kFIyZ7JMTAMW/yEqpZUK8OZEeahpdztV4afnc+6rh0xI
         1RVWgjcz7E12oqnSO3izUlWdr4jIF36wG9pfWTuWrXIyCqZCRxACdecRHCoNj9qGtOR4
         wybE2LXQCei3N4VYxaAsHm8CflhxCrIltWQEDEamySbrLFn0JkcBKqYTCYTylytVTKPV
         qB63rlmf4x/NugTWL1l8vXuyvtNs6pxA3H0zFbo/KvpFT6zoc7CeIjZyb8/busrncDYO
         8V/g==
X-Received: by 10.70.140.130 with SMTP id rg2mr201619597pdb.49.1426985519308;
        Sat, 21 Mar 2015 17:51:59 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id v5sm12665954pdc.41.2015.03.21.17.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:51:58 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:19:57 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/10] Staging: rtl8712: Fix invalid assignment '|=' in
 ieee80211.c
Message-ID: <059666e37eab910558100d364ad6d0c4e0349d12.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following Sparse warning in ieee80211.c- 
drivers/staging/rtl8712/ieee80211.c:187:20: warning: invalid assignment: |=
drivers/staging/rtl8712/ieee80211.c:187:20: left side has type unsigned short
drivers/staging/rtl8712/ieee80211.c:187:20: right side has type restricted __le16
drivers/staging/rtl8712/ieee80211.c:189:28: warning: invalid assignment: |=
drivers/staging/rtl8712/ieee80211.c:189:28: left side has type unsigned short
drivers/staging/rtl8712/ieee80211.c:189:28: right side has type restricted __le16
drivers/staging/rtl8712/ieee80211.c:191:28: warning: invalid assignment: |=
drivers/staging/rtl8712/ieee80211.c:191:28: left side has type unsigned short
drivers/staging/rtl8712/ieee80211.c:191:28: right side has type restricted __le16

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index d75a7b0..3c38311 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -184,11 +184,11 @@ int r8712_generate_ie(struct registry_priv *pregistrypriv)
 	ie += 2;
 	/*capability info*/
 	*(u16 *)ie = 0;
-	*(u16 *)ie |= cpu_to_le16(cap_IBSS);
+	*(u16 *)ie |= cap_IBSS;
 	if (pregistrypriv->preamble == PREAMBLE_SHORT)
-		*(u16 *)ie |= cpu_to_le16(cap_ShortPremble);
+		*(u16 *)ie |= cap_ShortPremble;
 	if (pdev_network->Privacy)
-		*(u16 *)ie |= cpu_to_le16(cap_Privacy);
+		*(u16 *)ie |= cap_Privacy;
 	sz += 2;
 	ie += 2;
 	/*SSID*/
-- 
1.9.1


