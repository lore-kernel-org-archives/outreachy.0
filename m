X-GM-THRID: 6330756111319171072
X-Received: by 10.129.55.13 with SMTP id e13mr9541872ywa.9.1473994025050;
        Thu, 15 Sep 2016 19:47:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.197 with SMTP id q63ls4957059ota.13.gmail; Thu, 15 Sep
 2016 19:47:04 -0700 (PDT)
X-Received: by 10.13.234.137 with SMTP id t131mr4756155ywe.35.1473994024783;
        Thu, 15 Sep 2016 19:47:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 125si487509itw.2.2016.09.15.19.47.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so2847789pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wZHeZx2I/j3xLAt3wjso9hvbuITpUP2HvT3YaCcTHr0=;
        b=Jy3qtVgkV9JpC47znwz6suCAV5k1OOYgB5pJAhp80F+TjtH4/bELornXs53U8WcHXt
         bNBoylYpwIDs2FdO/zkOQfggMQxJnywt49zbpUrNaeTbAocxxMWtjycgDwkn/wI8pDYe
         iwUglF8QE2AZQvmqQ7f98T497kKMVq7mZokwBTY8AJeuH5GE+9zMpZdjsk/JPON7g8LV
         iFwPb0AZw+Fa+k9p3kMAfGmGx88Jddfqr6tmnl7Lk50G0ZELDos2Mx6mleqiBFwnBb3k
         pUJhZX/0yPeUkoJRvoj9dfk9W32iGeFmIhL77EG4cUnZ4SNvgc+7mV2mz+ZbY0W4V1Wn
         O7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=wZHeZx2I/j3xLAt3wjso9hvbuITpUP2HvT3YaCcTHr0=;
        b=JWPWKh+kOn68AoNFcVPNXLGmJ6MyuMC/ZUGn28ON4GOZ1WKdgUpaJncwvzGnyLeUCj
         ke1FAuUrp90pjA9wSPAE9gCKGy5cTotU0cWkgtWPcvqmG96vB/Si9BNw5NFBnV76f5uL
         PTAN030WBtMISOHiIGUeUBuI/8QNqHzgRjfSK/amXnjG6dsTyJ8m97IVpWI3DnndZKIx
         gPsAX82m2+WzkyZtvlYhiVn0Ax7pG2ybecPoJsfIxSS1a7N3tj16v9mSS5nk/0xkeC2J
         W5dJmIXwBbLYXC5vvK/bIYjBAE0AnUZrVokfByiBrsMxF3Ks2xXdyb7rjOUL9BS1leRm
         zHig==
X-Gm-Message-State: AE9vXwMA9VEHLGUkf7pIE6XKltaT+Z4TGSwdjzxR9piuJ3nNBl0lEctwKeoCZ5s1myHi2Q==
X-Received: by 10.66.79.138 with SMTP id j10mr19603686pax.60.1473994024337;
        Thu, 15 Sep 2016 19:47:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:03 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/8] staging: wlan-ng: add spaces around &
Date: Fri, 16 Sep 2016 08:16:04 +0530
Message-Id: <9a3ce187dab449a8ad553539411c7d31979d016e.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add space around & to fix the checkpatch issue spaces preferred around
that '&'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 5bb8c58..e466883 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -116,14 +116,14 @@
 
 /* Make a 32-bit flat address from AUX format 16-bit page and offset */
 #define		HFA384x_ADDR_AUX_MKFLAT(p, o)	\
-		((((u32)(((u16)(p))&HFA384x_ADDR_AUX_PAGE_MASK)) << 7) | \
-		((u32)(((u16)(o))&HFA384x_ADDR_AUX_OFF_MASK)))
+		((((u32)(((u16)(p)) & HFA384x_ADDR_AUX_PAGE_MASK)) << 7) | \
+		((u32)(((u16)(o)) & HFA384x_ADDR_AUX_OFF_MASK)))
 
 /* Make CMD format offset and page from a 32-bit flat address */
 #define		HFA384x_ADDR_CMD_MKPAGE(f) \
-		((u16)((((u32)(f))&HFA384x_ADDR_FLAT_CMD_PAGE_MASK)>>16))
+		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK)>>16))
 #define		HFA384x_ADDR_CMD_MKOFF(f) \
-		((u16)(((u32)(f))&HFA384x_ADDR_FLAT_CMD_OFF_MASK))
+		((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))
 
 /*--- Controller Memory addresses -------------------*/
 #define		HFA3842_PDA_BASE	(0x007f0000UL)
@@ -503,12 +503,12 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 --------------------------------------------------------------------*/
 /*-- Status Field --*/
 #define HFA384x_TXSTATUS_ISERROR(v)	\
-	(((u16)(v))&\
+	(((u16)(v)) & \
 	(HFA384x_TXSTATUS_ACKERR|HFA384x_TXSTATUS_FORMERR|\
 	HFA384x_TXSTATUS_DISCON|HFA384x_TXSTATUS_AGEDERR|\
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v))<<((u16)(s)))&((u16)(m)))
+#define	HFA384x_TX_SET(v, m, s)		((((u16)(v))<<((u16)(s))) & ((u16)(m)))
 
 #define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
 #define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
-- 
2.9.2


