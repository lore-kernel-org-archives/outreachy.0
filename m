X-GM-THRID: 6392226115163783168
X-Received: by 10.46.88.70 with SMTP id x6mr449795ljd.22.1488306120159;
        Tue, 28 Feb 2017 10:22:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.17 with SMTP id a17ls197144ljb.42.gmail; Tue, 28 Feb
 2017 10:21:59 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr439115lfe.28.1488306119721;
        Tue, 28 Feb 2017 10:21:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h198si269703wmg.1.2017.02.28.10.21.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:21:59 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id r18so3670360wmd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ABFkXtPmSY8HnGczugBvFIzBWh4uYkj+GLnKqC7bz8U=;
        b=tV2g7XJkPxZI5u1Yu8LoIPPzNl7sSvGXZyxZx4jKcoVzUnxqSMaKgDkGcISaxKXXRD
         2R/miC364qG7cCOOI3NxnixcKIO+MH57cMdl6+Y5cbAAIE2sjrZMRQ65Eh1KEZAJYQLG
         Ha+gkwyv3JeRT+wbYem35VRmqL/VD0wJ3Lxq4Za8JaYF72X+/KrJX4w13eJ6K1kcte8F
         4YrEsWfcjzWkJh1LgtYU7MHvfwlLJqsYnMnr2M0ZNX+i7VqMnc7A2Dh8oxvi/6U4As7r
         OH1Cf4wFgSCfTVqtWiGe4EYh23zRuGYqxKn0pDcTEBY+fziSb4AsSUnANjyqwxPOz1KE
         P3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ABFkXtPmSY8HnGczugBvFIzBWh4uYkj+GLnKqC7bz8U=;
        b=gyObIwzLr6Htc2aWkKEUuPYJdUey4xl5UYCbchIwNPliAzrLkuztN0v2sGAAWnlvxn
         gtPJFLGxQtP0zhbBkafCNkvucM+8ZMxTOSv5lFTcnOhGsjjkC/Q6VGcfbTw2xLrJEwn9
         Qay7EDzO3znoRXk8LBwxmm8yUGE2SkZ+xpp6nPhEV4OBaZfidwnRwiTDc16R2m05dw7r
         Oc4wqgsDhhH082S/IBXVqpP32KgPrk4kZwpydWSJ54vhh6SO2lcsLBk8M/JEvimLb6pd
         tilD15uPTmCTbwgJaC6oabcLyIDZqKBIeYoFXpvQv3TISs/99rpOrIMRdOuZfIB9Opw9
         irCQ==
X-Gm-Message-State: AMke39mmJdEK0OqQYlBvWBQ7QubOSyKQZa2k5eHFhYgJ4/VEt2ivEYHclEcir77XkCzWbQ==
X-Received: by 10.28.23.140 with SMTP id 134mr9267wmx.23.1488306119513;
        Tue, 28 Feb 2017 10:21:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id d42sm3351730wrd.7.2017.02.28.10.21.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:21:58 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/5] Add comment for struct mutex definition.
Date: Tue, 28 Feb 2017 20:21:54 +0200
Message-Id: <20170228182154.25401-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index c72c3f0..f88690b 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -54,7 +54,7 @@ struct cxd {
 	int    amem_read;
 
 	int    cammode;
-	struct mutex lock;
+	struct mutex lock;/*lock for digital devices*/
 };
 
 static int i2c_write_reg(struct i2c_adapter *adapter, u8 adr,
-- 
2.9.3


