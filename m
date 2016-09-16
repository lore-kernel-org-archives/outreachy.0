X-GM-THRID: 6330756111319171072
X-Received: by 10.157.27.69 with SMTP id l63mr1327840otl.37.1473994036029;
        Thu, 15 Sep 2016 19:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls4840371otw.9.gmail; Thu, 15 Sep 2016
 19:47:15 -0700 (PDT)
X-Received: by 10.157.19.17 with SMTP id f17mr9234619ote.33.1473994035758;
        Thu, 15 Sep 2016 19:47:15 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si3398543pfe.0.2016.09.15.19.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so24213pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=z8vUwRG1/QoZTRf4EiT8upe5nVUYsiq7DAVQEIXGYtQ=;
        b=UccAF8S+yhYA9UHa4zagm9geY9Ga1yW9oYlCyD28ixHa0QOFOdvUY2XlJF7hTRNVA2
         x/MODCC4nuC9IOOYJm2qZ9XJlBM5NyYU2OolllJBu8+xitEdLpcR90ORZHVZrZkkIn1q
         Ipmgq4Sd7yc+wdkwjrKjVv8HBtnO+CX5fesStkhLl4c9ba1SVHybmJSH2ccEz+pGfCm8
         AMF2Z04DNhrV/xmCtbrV0AUeaGU6oSmIEeOVcSMLp7FI45BQ4Cc9R81MCMAoMNn7WJpb
         mZFqkFMQCl0moPI1WJh/EenWBo0b7WJ9dvWPiq1+N1IWW54NDL4BDNu4Ctq8idM+g7VD
         ng2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=z8vUwRG1/QoZTRf4EiT8upe5nVUYsiq7DAVQEIXGYtQ=;
        b=FA+8SaUc9fuo9caYfnVKcYNV+3Uzd5+dzviWkzt1LdZKJyGWtMvXbrp3YBKNnlYO2Y
         fq6OZ+lrNGKszGDDwis8//dfDdf5ebaaWwA+Nc8XOlR2PxcU+kJySfAqkmXOI9TLNxtP
         txU0DMWW5DYnKGjJPSzR3njScy5QNqnbSj1k6rfW0CteJ934Kec0QCy2dnyhwL7V+TzF
         B7De2quYoZvD90DALCWxvZA0pAiKo9qpyznQQDSO4OTxvSbYnU//PUr2K4pu5TKNP8fB
         GXgUSEoXQCYs3Jejqpw3lYUdUd0IrtGmWkKWwhY5MnBqHZV3f4c284Fo1NV8sc7tet70
         131w==
X-Gm-Message-State: AE9vXwOZ9+OfzA9uQzQKHy6EMQtWrvht/kBZd4VftkJGNTFx0Em3EwYd49IMgN+Yidxn4g==
X-Received: by 10.98.82.200 with SMTP id g191mr6357108pfb.84.1473994035560;
        Thu, 15 Sep 2016 19:47:15 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:15 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 7/8] staging: wlan-ng: add blank line after declaration
Date: Fri, 16 Sep 2016 08:16:09 +0530
Message-Id: <6443337325af6b99b15ee79e394a8433b2707aea.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add blank line after struct declaration to fix the checkpatch issue,
Missing a blank line after declarations.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 2ff3805..1fc34c7 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1166,7 +1166,8 @@ typedef struct hfa384x_usbctlx {
 	CTLX_STATE state;	/* Tracks running state */
 
 	struct completion done;
-	volatile int reapable;	/* Food for the reaper task */
+
+	volatile int reapable;/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
 	ctlx_usercb_t usercb;	/* Async user callback, */
@@ -1378,7 +1379,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
 
 	result = hfa384x_drvr_getconfig(hw, rid, val, sizeof(u16));
 	if (result == 0)
-		*((u16 *)val) = le16_to_cpu(*((u16 *) val));
+		*((u16 *)val) = le16_to_cpu(*((u16 *)val));
 	return result;
 }
 
-- 
2.9.2


