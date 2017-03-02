X-GM-THRID: 6392835608825298944
X-Received: by 10.200.40.194 with SMTP id j2mr3886014qtj.36.1488448032886;
        Thu, 02 Mar 2017 01:47:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls1665142ita.7.gmail; Thu, 02 Mar
 2017 01:47:12 -0800 (PST)
X-Received: by 10.107.134.1 with SMTP id i1mr4053335iod.10.1488448032355;
        Thu, 02 Mar 2017 01:47:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h79si1332020pfh.2.2017.03.02.01.47.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so1917699pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6gooecDYENAn96YuutTQf6FJDL0sxKKwYEx5ixV1jC0=;
        b=X36P6fZDd9baqzQNXIRYj7P6oFBXorYn8D38tWsN6s/36AzYS8rWXQxwT8fPiDzu33
         QrIxPj2Vr8b+/7CQLLXCyzAjMi2AK7SbKhnIGm7qyY8SUI1CBPloRK3tGK3uu3/CXP2Y
         PtWAwgqahqsEu+UF3UcDGe2Bv81AfzADT2BjoysoZy0D+roYxZ1PVm3N08Oypsg7VyDZ
         W276RJFnUqAB0DcHHE+rkus1AfO6tlZdmN3gMg+B7LaURQ8ZDDFH2ka6buGkjBUe1PWE
         oJ4BVuPCaIR9JvoEUYO+cTB8N4RISM1Ojrwr/NjUlD00ukNwRdXQKCS5pIjLhN1ftiCw
         wu+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6gooecDYENAn96YuutTQf6FJDL0sxKKwYEx5ixV1jC0=;
        b=IiOV2HtzMetm5gPmRxLEYPCv3qZdMd9pEHDS1ZsH2QPFpn6JVskzdTLZEvSi0qi1Kq
         VqrwUyxXUdYsNpRd6HzLfqcs3hd2HX9xZXxifSbsDrR0JmnkA3pbNRaeoWP89b9xmsL/
         dDQEDrgI89aSmEdFSwu7NryE/3yNoNZ+Xw8n5DDrz0ndgtStDeiL99aWbMcU2UBfIanm
         JXl9f8z9YPGAIT/hJIGcDUGobcOQZuWFe3kWstGCwSAintj+TAAnE82Dbymr5DVG/MzF
         G8aiSHRjMOQrK4xVLd38OrIhdTvhgHgGdCySk//uwxZL2D3lXWI1zsm7arblzbBpgwm9
         NkDQ==
X-Gm-Message-State: AMke39miYXaAq1qweTXLza1q0hmZo29ScMrqvvQLhszQf3FNoLwtlTd6PEaqTMirMnxsYw==
X-Received: by 10.84.238.139 with SMTP id v11mr17221499plk.143.1488448031810;
        Thu, 02 Mar 2017 01:47:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r13sm15684298pfg.55.2017.03.02.01.47.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:10 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: wlan-ng: Fix sparse warnings
Date: Thu,  2 Mar 2017 15:19:02 +0530
Message-Id: <1488448146-29452-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the following sparse warnings:

drivers/staging/wlan-ng/hfa384x_usb.c:1327:34: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:1327:34:    expected unsigned short [unsigned] [usertype] type
drivers/staging/wlan-ng/hfa384x_usb.c:1327:34:    got restricted __le16 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:1328:33: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:1328:33:    expected unsigned short [unsigned] [usertype] cmd
drivers/staging/wlan-ng/hfa384x_usb.c:1328:33:    got restricted __le16 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:1329:35: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:1329:35:    expected unsigned short [unsigned] [usertype] parm0
drivers/staging/wlan-ng/hfa384x_usb.c:1329:35:    got restricted __le16 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:1330:35: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:1330:35:    expected unsigned short [unsigned] [usertype] parm1
drivers/staging/wlan-ng/hfa384x_usb.c:1330:35:    got restricted __le16 [usertype] <noident>
drivers/staging/wlan-ng/hfa384x_usb.c:1331:35: warning: incorrect type in assignment (different base types)
drivers/staging/wlan-ng/hfa384x_usb.c:1331:35:    expected unsigned short [unsigned] [usertype] parm2
drivers/staging/wlan-ng/hfa384x_usb.c:1331:35:    got restricted __le16 [usertype] <noident>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 6134eba..a7ff572 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1324,11 +1324,11 @@ hfa384x_docmd(struct hfa384x *hw,
 	}
 
 	/* Initialize the command */
-	ctlx->outbuf.cmdreq.type = cpu_to_le16(HFA384x_USB_CMDREQ);
-	ctlx->outbuf.cmdreq.cmd = cpu_to_le16(cmd->cmd);
-	ctlx->outbuf.cmdreq.parm0 = cpu_to_le16(cmd->parm0);
-	ctlx->outbuf.cmdreq.parm1 = cpu_to_le16(cmd->parm1);
-	ctlx->outbuf.cmdreq.parm2 = cpu_to_le16(cmd->parm2);
+	ctlx->outbuf.cmdreq.type = HFA384x_USB_CMDREQ;
+	ctlx->outbuf.cmdreq.cmd = cmd->cmd;
+	ctlx->outbuf.cmdreq.parm0 = cmd->parm0;
+	ctlx->outbuf.cmdreq.parm1 = cmd->parm1;
+	ctlx->outbuf.cmdreq.parm2 = cmd->parm2;
 
 	ctlx->outbufsize = sizeof(ctlx->outbuf.cmdreq);
 
-- 
2.7.4


