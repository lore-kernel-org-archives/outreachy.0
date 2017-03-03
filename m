X-GM-THRID: 6393291379359875072
X-Received: by 10.13.250.197 with SMTP id k188mr1151171ywf.167.1488554162139;
        Fri, 03 Mar 2017 07:16:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.69 with SMTP id h66ls1309244ioa.18.gmail; Fri, 03 Mar
 2017 07:16:01 -0800 (PST)
X-Received: by 10.107.189.130 with SMTP id n124mr1276607iof.0.1488554161315;
        Fri, 03 Mar 2017 07:16:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s64si94749pfk.0.2017.03.03.07.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:16:01 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so10125045pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=IoaU3rGnvXICt0VNeDEKAdZM0SimQSBA4VLmgdZh//+mw3E8QXCEqcReMy5Xd+H4oM
         LkUcS2dOxEsx+myrEw21IG1YCJcBXrrx71trFdIVJ3LrNwbEuShsEmE12/U/LTSLtWLF
         hsvLFWE9Y1idP+A51LTaIDFkBbuM2KEuIp8k55WYeBFQtvNg18ERv5yEd2uhTf9ZAdjn
         D2Z5XD7v8fVuzP44RFr03HKoWIFC+9L7xYHJa19AehCfprYeubjyzrwx/y5rx9gP5n8l
         EMMNRNp5BeLMKBCzBkQWV6Pmt7Xu/ZA046j/tjXdU6l9D2TlSMj54AOZnOZRBwEIfO9o
         5uMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=feLdoT9+GRFcuAOIsttSFieXZYtW/Q/sGNCp6ZtV1Hs=;
        b=uNaGQ03itzcBV8BMHhZY5IO7HGAbE5bUDPYnk+rQJG2c1iSbF+vjWhRkKP1mjjJ2nG
         c/HveeuRoKpo+YlOg6FVGan61uL9+5+wMeiAt48XpVlnZgtY6d4FVRWYkIem1ozlJCt3
         hQCA2PRdXWMkx4LGzMRfmMIg9bNsioXTUQ7Mbx1/GM5UoOSKrkhFhhCk7u6MbiU52pRX
         NrWOr2Nxjl+Naug3dy3L5YjcJZekYAy5zvoPOXRUzHfsXL+/3koY5pbogTlRlvhXTGWx
         gGHg9XIdAfFU9D12d47A8Z4yAJQ4WDuV+5L6BWBKDMD3n4MwOqSpq8pWFvSwTk3pZ+b6
         +Msw==
X-Gm-Message-State: AMke39npxuB2Gqq7hZ+iLEnDumbGL9HAyCoouMN1fu38yGHOYU8Nr3D1lIPe9Y+pIX2KNA==
X-Received: by 10.99.67.1 with SMTP id q1mr4069745pga.210.1488554161105;
        Fri, 03 Mar 2017 07:16:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d10sm24104963pfl.59.2017.03.03.07.15.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:16:00 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: unisys: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 20:45:40 +0530
Message-Id: <1488554140-28805-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>
References: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/unisys/visorbus/visorbus_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index 1d54190..e7b04b6 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -778,7 +778,7 @@ write_vbus_dev_info(struct visorchannel *chan,
 /*
  * fix_vbus_dev_info() - for a child device just created on a client bus, fill
  *                       in information about the driver that is controlling
- *                       this device into the the appropriate slot within the
+ *                       this device into the appropriate slot within the
  *                       vbus channel of the bus instance
  * @visordev: struct visor_device for the desired device
  */
-- 
2.7.4


