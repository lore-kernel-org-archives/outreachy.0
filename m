X-GM-THRID: 6330756111319171072
X-Received: by 10.237.59.234 with SMTP id s39mr8747568qte.7.1473994031614;
        Thu, 15 Sep 2016 19:47:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.214.65 with SMTP id o62ls815685itg.8.canary; Thu, 15 Sep
 2016 19:47:11 -0700 (PDT)
X-Received: by 10.98.23.88 with SMTP id 85mr7101112pfx.5.1473994031295;
        Thu, 15 Sep 2016 19:47:11 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 125si487509itw.2.2016.09.15.19.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so2847789pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=O19Y0JvI7hfMIWpXvdSQ7v/U0r7ueXzF44gwLT4UM3E=;
        b=ZWTzlfSdY/bTcVRFxYhC+Zx2jWu0ksVgBwtrjgilaeKgRADdcuSpXcUlIG9n2dmfgA
         B8LJVpgK+lFH4YqzAfa7qud7bEV0dkWDi4lVRtf4WXTptARZx3h9s86OJbTJ3R55G/ud
         cyR/XVgYwC+5VzxcjebbwOB+XNrrRZyVWJ27XLtNCmei2hhh+xUJ/IjFydw4NLqmTyWA
         MWPUVaARJFJUQL6zsKvMBKBbS0Kfi3rBWL57z/EBrVdZd7iYdZafC56l3Fr29eNdgTMA
         heo61ZMwkTJPjQOt8mK+uMeDAtQC+1efJl44vM7CbzZP6XKUxpi5BVRlSH0/iAN0yJnw
         X6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=O19Y0JvI7hfMIWpXvdSQ7v/U0r7ueXzF44gwLT4UM3E=;
        b=jT65AB9BfHZY39JnZIQ4v2CcUQzN2+rr37c2fUFtW9aX/t1dL73OS/Dj1Z65geyvUY
         Who7U4LHOY+dYEtX2eTgpD9tQzVi4GcfGaL3D98Dx6nWdwxz/oByYmj/htX3OzR6avwY
         zu9vnTuLPWBSs9ewNhCc/bPvKNdjlbl+4027sBLgcbKSTwjJsLAC0GukLd5dKnlPABfj
         xSWi0apyyoNdAHJ8Z3wyxoVjYe1C4EembdvNdF18kATkiyecSy6HDygEmEsFhhqW1Hh1
         tlVMwnQpXfp8JQ1BzbqgquCCqfrzyD2IuCYRji4bfhAQAA+BAclQMMNXxvTqHNkEp1Z0
         CKgQ==
X-Gm-Message-State: AE9vXwNjv0FpCqjsXUO2xHgOHXSa/iazkgaTfWgCY35/OBol2iSUH7suOxvwpBZBEfZUuQ==
X-Received: by 10.66.155.129 with SMTP id vw1mr19476881pab.148.1473994030919;
        Thu, 15 Sep 2016 19:47:10 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:10 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 5/8] staging: wlan-ng: add spaces around <<
Date: Fri, 16 Sep 2016 08:16:07 +0530
Message-Id: <73a02d3096f26d75f39cc09779e7d9f74eda9828.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add spaces around << to fix the checkpatch issue, spaces preferred
around that '<<'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 4bbbce5..616da07 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -508,7 +508,7 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v))<<((u16)(s))) & ((u16)(m)))
+#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
 
 #define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
 #define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
-- 
2.9.2


