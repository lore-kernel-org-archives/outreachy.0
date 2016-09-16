X-GM-THRID: 6330756111319171072
X-Received: by 10.200.56.244 with SMTP id g49mr9104378qtc.12.1473994027806;
        Thu, 15 Sep 2016 19:47:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.227 with SMTP id f96ls1370981ioi.27.gmail; Thu, 15 Sep
 2016 19:47:06 -0700 (PDT)
X-Received: by 10.66.158.10 with SMTP id wq10mr8969742pab.35.1473994026937;
        Thu, 15 Sep 2016 19:47:06 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 125si487509itw.2.2016.09.15.19.47.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so2847789pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=40xJm0gxZncJ8W1piGyBNi9auJr1A8WBNlkP0nwqoKo=;
        b=cg09oNpE61uk7H2kM5ny61oWcs20q2Wfp9vp5XYoY3Iv9qe2e/hkWw8S8xot4YFVCt
         yIn917wY55nkTZws2sLf03O0s8lGpfQ6oi3uHBZeLSrZwHXUoI8APio3PqgL5TPoAcyz
         1hiPGZRZilMWblYc009EKdolLk3bpCZvQO9/8oT1hGor6khUPqcIeAJli8oVP2iLZorW
         rdXzU4JZpKkcIw9UV16H/WYF5UPaVLqpe55+ixrg5IwuqXbiu+t6WrUx2/vqUrLjTW+z
         Sa2A28wddQLOlaJquyiv16Mo/7JTHIDlgOS5yE1qmZ748mihCnQdZMGDST4CDSKj6AEc
         1Bng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=40xJm0gxZncJ8W1piGyBNi9auJr1A8WBNlkP0nwqoKo=;
        b=HNKY2RE7axpPWchn2VPvJ6p+P4RHMNDkXW9t91feFaHr4CcQZ4ucTCT7KppKw3Sgvh
         BFIiK6ceyfVTX0wYMaGTuXWK9y4itctJEeT6fOcg+z0GlQy6PsKkGquq0AjXzhZA8bdr
         BjtkZPNRz87z+ZncHmutPDvH7eyREiPTpX88J/B4/6xNujBsh0oZDU79CqYc3DwZfxTu
         QZ3cP7wN29UN0hsjCWEPyFpCXmw0g0oLuzy/L7DpkAK7/XxMs+fvaGFB3BJ0/Y21jtEM
         tF4aq/3NitEHzXr2syGUstbJ390y+PRwGgTMQvPotK7vQ8X3A8AGGDGFkPp10NF5Kq+k
         nSPQ==
X-Gm-Message-State: AE9vXwPhI/NJTwdkL4yP7cuaBXYfYwseKI1g+p0nR9NEQoO3bgN3o2sRyT0kORhRLWon4g==
X-Received: by 10.67.23.4 with SMTP id hw4mr19514713pad.7.1473994026540;
        Thu, 15 Sep 2016 19:47:06 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:06 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/8] staging: wlan-ng: add spaces around >>
Date: Fri, 16 Sep 2016 08:16:05 +0530
Message-Id: <2aa356783543963ae0896dea62b2297687c46b32.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add spaces around >> to fix the checkpatch issue, spaces preferred
around that '>>'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e466883..d4b1dbf 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -121,7 +121,7 @@
 
 /* Make CMD format offset and page from a 32-bit flat address */
 #define		HFA384x_ADDR_CMD_MKPAGE(f) \
-		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK)>>16))
+		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK) >> 16))
 #define		HFA384x_ADDR_CMD_MKOFF(f) \
 		((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))
 
-- 
2.9.2


