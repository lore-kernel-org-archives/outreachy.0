X-GM-THRID: 6376626533381963776
X-Received: by 10.99.149.13 with SMTP id p13mr13845656pgd.77.1484674060293;
        Tue, 17 Jan 2017 09:27:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.152 with SMTP id e24ls3751912itd.10.canary-gmail; Tue,
 17 Jan 2017 09:27:39 -0800 (PST)
X-Received: by 10.98.134.194 with SMTP id x185mr10038723pfd.34.1484674059482;
        Tue, 17 Jan 2017 09:27:39 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r8si5866224pfa.5.2017.01.17.09.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jan 2017 09:27:39 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e4so6324257pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Jan 2017 09:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X/0FyXMhdXdKsmavtDVWbHBdUPC2FThv9pizwJ2iHtY=;
        b=oFCF7SOmPevtUILlCujPBXuGnPQlGAPcCPaPTjr0mBvYWtUTJAJhPGR57wW5bfbgBf
         sX+JBjvPOW71HCbUsnW+hq5laDpcWV5NNN7xcSKQ0SQm+Y8PDioXAhYQ+9PGmCM0Zmdc
         EaGMuZAgejk503p6IO3EnuljDbzRCH1wZYtMd70B7s0wB6z0AJ1HokNlAoXhtHIUA0gv
         4uMY3/p/P1gQ1JnVW1lvpITNc3XnLQ/xwBr6y3e+Bqbc8ymz9CsT+RfrGjird9C2b9FS
         f5neXAe+n1AtfsnKbakO9ZV8oXBRUtMfIEajm7UgtUVtwj8RwGuYZyQKZ4aPRKjEDbWy
         dCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X/0FyXMhdXdKsmavtDVWbHBdUPC2FThv9pizwJ2iHtY=;
        b=mhON0ijoIigHqJJgKwzVE53OKj4BqguxNdS+HHlE9WR7ajeQSkZsS8ec/DzPVYw1kX
         oQ4NYIYaMQf40zVpjTyekQusfiSyBzaqN9Tpy+vu2xBm2PlQ+aet1WO1aS6MHKqhZqYM
         Bro1QD5vh0pyvaozoeNY27O9GhwRoW4x7+zix/f6p4hHAsV1BG3lRiklPIKqMLZmdZ8B
         v7N9tLy6WQgpMgrqUduehGSZuO2b7zr15Upwzoiuu8ST/c8HhTvmr6J8xanJMGDfHoJE
         sTcLJxEf5pZJgHmAhcCvNsZiR4EjCMp6XsQUbFxj/WBpEOZBwp4Ay2f5vummaZayAE+f
         7OTA==
X-Gm-Message-State: AIkVDXJrSsdYuBqkA0JRCLASqXiTymkIkhtQ4q8NyNLTNLxXWRTujDsn8VNW8FzUrlPUVg==
X-Received: by 10.84.202.12 with SMTP id w12mr61247264pld.156.1484674058819;
        Tue, 17 Jan 2017 09:27:38 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u29sm27572690pfl.17.2017.01.17.09.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Jan 2017 09:27:37 -0800 (PST)
Date: Tue, 17 Jan 2017 22:58:58 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: staging: Fix "space required after that ','" errors
Message-ID: <20170117172858.GA32083@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch.pl "space required after that ','" errors

Signed-off-by: simran singhal <singhalsimran0@gmail.com>

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d7d85b3..6380b41 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
 		break;

 	default:
-		printk("Unknown WPA supplicant request: %d\n",param->cmd);
+		printk("Unknown WPA supplicant request: %d\n", param->cmd);
 		ret = -EOPNOTSUPP;
 		break;
 	}
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d7d85b3..6380b41 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -3177,7 +3177,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
 		break;
 
 	default:
-		printk("Unknown WPA supplicant request: %d\n",param->cmd);
+		printk("Unknown WPA supplicant request: %d\n", param->cmd);
 		ret = -EOPNOTSUPP;
 		break;
 	}
-- 
2.7.4


