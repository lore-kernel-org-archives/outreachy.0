X-GM-THRID: 6387759904016302080
X-Received: by 10.98.212.91 with SMTP id u27mr878288pfl.4.1487266249551;
        Thu, 16 Feb 2017 09:30:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.223 with SMTP id 92ls695920ior.32.gmail; Thu, 16 Feb
 2017 09:30:48 -0800 (PST)
X-Received: by 10.99.181.67 with SMTP id u3mr1131774pgo.66.1487266248826;
        Thu, 16 Feb 2017 09:30:48 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z3si179110pfj.0.2017.02.16.09.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 09:30:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y6so1407446pgy.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 09:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7GJTNMg6iojqYo+v2u8//IJtqJOeBPjJKcH1vnJZrnc=;
        b=Y0ySFVt42oQX29inPrx/FXFTEKMpHseI6XBqPP+9SFju6SAn0filU/4rBe9wx2PTuM
         YVBJtJUPoDGbZAKwGdW8RSZ49Xy8hy/OHbsCGztWgrlbTqXgnS6PkEdXIXUKT3KSPdAY
         hI9zu+rDMq3Fojaj/u0WR8ga8cnp0M3IAS1vQ9LM9OGunnBfyuIiVwnCZqUzOySIB6pP
         2X5RQso4b/Dw4gpJUJngJAOp8qQew3gMlQM+PNToBEdgdODLyMGGQh+aPXBiT88yzGm0
         XBE/8iXDgi0YDa6cTD+XQ+2Opk3B3ZZuEN+L2w+V2GN91mzKBhw11DoVeFOcwRcbwjFb
         CenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7GJTNMg6iojqYo+v2u8//IJtqJOeBPjJKcH1vnJZrnc=;
        b=C7sd7x5cf1W9ze8/heHW9W3EN2BI9o5tFxMFXugimfMopNe8haXtv6FDRrNp0X9MwY
         +NxN1JF9QEXD9UO3iuTr6q/b9Zrtn6n6cwYSHxJ9+twrDEeHYQdde5RTWbvt9xZmwsIu
         sh4baKMzDASxRlfSawZUwjGvoL6aLI33HrIGKEd4QnVI4LGbTv7f0S+mGuSQ1wSqqhwQ
         he9Y1mLlPyF2k/w2X98KyiXtFq1DgFbG0vWtQG0BCTd6giFG5wN6qNI9bV5QN/P0ywE8
         s/THWhempQ0oQ1WFIjCx6+/Da4H4FcV/GqTL4rraci8ATxhML9FQn8P8ZeK22x52MXM7
         twBA==
X-Gm-Message-State: AMke39m411k5aZK5DNxkRB8j7Jcd2ybn4oRh1181jwGx1Jw423pYKZdLJPqD23FzN9iFOw==
X-Received: by 10.84.213.16 with SMTP id f16mr4815388pli.156.1487266248642;
        Thu, 16 Feb 2017 09:30:48 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id n28sm15001159pgd.5.2017.02.16.09.30.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 09:30:48 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: wlan-ng: remove space before tab
Date: Thu, 16 Feb 2017 22:58:35 +0530
Message-Id: <1487266115-3900-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

remove the space before the tab to fix the the checkpatch issue,
no spaces before tabs.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 4c3d394..28df1f3 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -745,7 +745,7 @@ static int prism2mib_priv(struct mibrec *mib,
  *	pstr		wlan message data
  *
  * Returns:
- * 	Nothing
+ *	Nothing
  *
  */
 
-- 
2.7.4


