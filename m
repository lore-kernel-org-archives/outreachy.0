X-GM-THRID: 5490263195648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7319410ce6216031
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.98.230 with SMTP id el6mr3531484obb.49.1425232784322;
        Sun, 01 Mar 2015 09:59:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.70 with SMTP id f64ls275493qge.20.gmail; Sun, 01 Mar
 2015 09:59:44 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr22813752vdc.2.1425232784140;
        Sun, 01 Mar 2015 09:59:44 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si1236282pac.0.2015.03.01.09.59.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 09:59:44 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so37018786pac.7
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 09:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Dm4QQu0XyGKuLnpM6yWSLX5J5JunvvPuVZJ+20R0zII=;
        b=aqXCnxTW3+eXfFCRoT3ZOJjxuCMaMUGqojxR5KkLCs+KACb6y51ePpDKXYJkJ+k6aj
         x/8/1HgZwAjovcXaf6A12+AuBcnQp1ZcFHwuI4KFalcRG+pEmCnr2sk2tcaNEIRkUXCP
         6hH+r6ohzNnzhF1q00PGCnPjNm38YWJ8+I6i6HdjrqPt7OsRZAnBz2kf7IVG5tw3u5mG
         xkN99lo1Mr+a5nhe9FVHK4+OSQNA1X9ILsJWLmJS1YV3crbPrNahcyZj7fNbx+e/NeRT
         yB4546TN9vCS6DYWNOmiMn1rRztUgVs0th7ERsh0WHOSfYCWpQ9i5UOnIYtREuwSycot
         Rw5w==
X-Received: by 10.68.57.168 with SMTP id j8mr11777418pbq.135.1425232784017;
        Sun, 01 Mar 2015 09:59:44 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id di5sm9661876pbc.36.2015.03.01.09.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 09:59:43 -0800 (PST)
Date: Sun, 1 Mar 2015 23:30:58 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8188eu: Remove memset.
Message-ID: <9ff5cb97e3d0a3e0667d79881545ee3ad13949fd.1425232491.git.navyasri.tech@gmail.com>
References: <cover.1425232491.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425232491.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The memory area set by the call to memset is immediately
overwritten by the subsequent call to memcpy. Hence, remove that
redundant memset.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index 1b892c4..eebb7d7 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -60,7 +60,6 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		/*  We have to backup the PMK information for WiFi PMK Caching test item. */
 		/*  Backup the btkip_countermeasure information. */
 		/*  When the countermeasure is trigger, the driver have to disconnect with AP for 60 seconds. */
-		memset(&backup_pmkid[0], 0x00, sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		memcpy(&backup_pmkid[0], &adapter->securitypriv.PMKIDList[0], sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		backup_index = adapter->securitypriv.PMKIDIndex;
 		backup_counter = adapter->securitypriv.btkip_countermeasure;
-- 
1.9.1


