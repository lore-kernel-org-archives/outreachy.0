X-GM-THRID: 6387647463261470720
X-Received: by 10.157.31.102 with SMTP id x35mr957489otx.61.1487264325283;
        Thu, 16 Feb 2017 08:58:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.9 with SMTP id l9ls649552ita.1.gmail; Thu, 16 Feb 2017
 08:58:44 -0800 (PST)
X-Received: by 10.99.6.11 with SMTP id 11mr1052282pgg.9.1487264324431;
        Thu, 16 Feb 2017 08:58:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si145528pfd.3.2017.02.16.08.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 08:58:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 13so1500550pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 08:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Tlg93hxS9qTZhRdrOfnMS46CpfJHgxZydB7/MQBiF0c=;
        b=B4o0yWVAvS/4dGbKf4HPujnUvsowdGBS9SpCOpxcA3YDOAV+h58ShUcAF5gFIaglDR
         XG1aQ6Q21+RPCUUL8ZsHuU2MNUE6+qnQRUmwg3w3C83zMWRar9tqA+B7zvYUJS8KGZTr
         qKV4cXfPlutb+xf++43N322oJ4yLYuWqVRO4T3voUbF1W5rHeuBtVsd37416QtlB2eVY
         OJnweOzrIPCaEEe0otHVeXU3NHAvh/lXcA9DcGygD7cpR2AUUkHLDoD5i8ycHOHD6KkW
         aSob6Mr1dlbMyDCgCMtBhfjs9CaXW/eqDrJSa7x5pRzsgCs2AUyk+NJaLE+Cepph6xPp
         8QBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Tlg93hxS9qTZhRdrOfnMS46CpfJHgxZydB7/MQBiF0c=;
        b=eDmGP7xaHzB3/muhLiF92x6sbE8koPLLeElyqGM8wNLFk59gEORPCBftecCoTn7Kj5
         IcuqRQQwTvjNfwDcTDQPlpOfGhbku0w1jCZ4Y+zvRL29JzF8zF5sQkDoY5eZ0j5eJccO
         Npai+KrO0cqR68ZrMN7/wqjMn3NvO0lEk6JuXQaqx5es2Dese91jrczM1XOXaDjYsjP8
         8oEF4KjlZTn49HulbcZf3ajOZCsJ/GsUzck23c4N87RlZeugYfbo2wiaco5zUHyWU0YS
         sAgOK2/DAISsvLQi53xq+sxWdGgEKDsECSF4OF98EdoY9ATOopNs6OiPh2ymlNg4BbvC
         q2UA==
X-Gm-Message-State: AMke39mneI2JQTUh8WYDOA+1Pt5+bZ2xWgrvpC1TnDunfnXFwePY/Wmi561b9R8TgB1Dyw==
X-Received: by 10.99.67.6 with SMTP id q6mr4100926pga.156.1487264324011;
        Thu, 16 Feb 2017 08:58:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y21sm14761781pgh.52.2017.02.16.08.58.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 08:58:43 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: wlan-ng: add blank line after declaration
Date: Thu, 16 Feb 2017 22:26:28 +0530
Message-Id: <1487264190-6768-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

add blank line after struct declaration to fix the checkpatch issue, add
blank line after declarations.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 5f1851c..f199847 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1175,6 +1175,7 @@ struct hfa384x_usbctlx {
 	enum ctlx_state state;	/* Tracks running state */
 
 	struct completion done;
+
 	volatile int reapable;	/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
-- 
2.7.4


