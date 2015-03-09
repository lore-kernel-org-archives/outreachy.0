X-GM-THRID: 7320828379136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,686cb5824f4090a4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.27.134 with SMTP id t6mr4168854lag.5.1425926405764;
        Mon, 09 Mar 2015 11:40:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.34 with SMTP id cz2ls16487wib.46.canary; Mon, 09 Mar
 2015 11:40:05 -0700 (PDT)
X-Received: by 10.180.211.199 with SMTP id ne7mr873553wic.5.1425926405421;
        Mon, 09 Mar 2015 11:40:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id o3si877887wib.2.2015.03.09.11.40.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 11:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id x3so30935478wes.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 11:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+wbPuBmdF9isvo4fwaIXwm71GLQAzUHoosPC2+ZHFiY=;
        b=lEqmWum6DgHGxOM7M8FNUBYulgoDef2XezbiepV99c/u92oKV4612jgcpTPNzAiucl
         SpijvE1slxtg6QrFO/9a6YKPZQfTVBFzlHD+MnEjPOLrO0ywDtiqSv+i46KU/G+a+u7s
         E9VVzhVzW2TdKOxak1yHL2aMWEz0ZhL8DuyaaXQFTiuoI8k8WCb7WqsbOm0DRQHG1Pv4
         gdzvfJ/gpxw38iDKaRAYmAHwQHfTpAW1ra+dzfbkrlWNLGubLPMUP08fe2qALBCpYP/U
         X1p9eNrkjDPTQ2fptzI3bmVmfrg0aMi11oeDYi5ZJ4+1bieHqkkW08IYPIuPfZt4XlO2
         BeXg==
X-Received: by 10.180.98.131 with SMTP id ei3mr62076992wib.62.1425926405254;
        Mon, 09 Mar 2015 11:40:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id s5sm16757913wia.1.2015.03.09.11.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 11:40:04 -0700 (PDT)
Date: Mon, 9 Mar 2015 20:39:24 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192u: Replace printk() with netdev_dbg()
Message-ID: <4b160a922a2c11663054a3dab81c235d16f44a23.1425925942.git.cristina.opriceana@gmail.com>
References: <cover.1425925942.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425925942.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces the printk() function with netdev_dbg() in order to
fix the following: "WARNING: printk() should include KERN_ facility level"
and "WARNING: line over 80 characters".

Issue found by checkpatch.pl

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index f7aa9df..d1cbddd 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1947,9 +1947,9 @@ void ieee80211_check_auth_response(struct ieee80211_device *ieee,
 						bSupportNmode = false;
 						bHalfSupportNmode = false;
 					}
-					printk("==========>to link with AP using SEC(%d, %d)",
-						bSupportNmode,
-						bHalfSupportNmode);
+					netdev_dbg(ieee->dev, "SEC(%d, %d)\n",
+							bSupportNmode,
+							bHalfSupportNmode);
 				}
 			}
 			/* Dummy wirless mode setting- avoid encryption issue */
@@ -1964,7 +1964,7 @@ void ieee80211_check_auth_response(struct ieee80211_device *ieee,
 
 			if (ieee->current_network.mode == IEEE_N_24G &&
 					bHalfSupportNmode == true) {
-				printk("===============>entern half N mode\n");
+				netdev_dbg(ieee->dev, "enter half N mode\n");
 				ieee->bHalfWirelessN24GMode = true;
 			} else
 				ieee->bHalfWirelessN24GMode = false;
-- 
1.9.1


