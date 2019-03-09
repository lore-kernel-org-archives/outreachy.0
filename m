X-GM-THRID: 6666290525545431040
X-Received: by 2002:a63:5806:: with SMTP id m6mr8589547pgb.15.1552116746355;
        Fri, 08 Mar 2019 23:32:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:2b87:: with SMTP id l7ls5894051plb.8.gmail; Fri, 08
 Mar 2019 23:32:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqy7LJZDsJolIr/5g2Sm/1d9ZYGmaC48XUg9AiSmG0tkimkjiRIpbHCLH55rot8sASjPG++m
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr6963146plk.87.1552116745789;
        Fri, 08 Mar 2019 23:32:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116745; cv=none;
        d=google.com; s=arc-20160816;
        b=hMxMIEeOb8WO85f7HcDY5Yg+aQfUlP5r3rBbV3tnK4K4IlnNXrMMaUAeln0qLrN3Of
         suJ2nk+fV+ayOaZ3kR9vk5yiweinI9fdYc9zRGFfGc0+QC1dt4NY8YYmAwW1ty3XpQV9
         6eqWjeNRSRi3AHrX21xlp9aXZP/x/QABLhe3BWg6CBeSYIDRKnnB9Y639t7r8g//beFX
         WbduLy9E62WtQ5OOmnWKfzL7MwrPwDUZLSCD/aJb/kET4qrAC5CLmTzrDKGRRorz7P0C
         3o8/5Z3AN/l1pxhgpQfdRZ0veE+eUkbdT9eG8HUgEpFe1/eeTkqztyOVR8nLx2O9fZQf
         nvbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=D39MKxFxcX4f/q0V0i2hmAbd3VZjEJI3M99v5cjemtY=;
        b=dN2dtorMmusNHVzJ7arIyGONUhy52g3qZUip3bS3nGibNg59FdnoFxKBqqrsxR2GJH
         gRv2IC1MKxq6ELyGf0X5AuJv5zfFFEi4o5IZumb7pNYQZw8tZP7XyZvHS1h5TPKVAR9y
         2ivsjU+D31lsmdoCymj8k6B63jD0NGYsYIvxumFtdg/AaQjZ2PaJkA8fjlRDEXjbkOf7
         OVaiDPoOsXLEttJrMv7Wj3fByvJDPES0xvVr9GNLRI0pzFIoPogtKNPTQO+Te1eG5VAL
         7Ud1/zmFMIeTKhzxZzWqIVR3UO6CKJ4veulh0SH/dNXxEjovtmPvYl7oQ+CnsHanQdYm
         61tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PThqzrjE;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j8si467108plk.3.2019.03.08.23.32.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:32:25 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PThqzrjE;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id q17so15818938pfh.10
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=D39MKxFxcX4f/q0V0i2hmAbd3VZjEJI3M99v5cjemtY=;
        b=PThqzrjE1dkTTdw9R36eUctjktWiNeJ7y98/x4uZtv+ePCs7DJPe0DEiRADrpQAz20
         RE7NF7r+1+4a+8JeI1/XlO47L+5eovdMeK5VrQhK0/0b/6DHo+5T4pF5hjcDjR5zY8nv
         jUuOCNGgRCiJTpgB3NoOzdSv1KN2pZb9eHFtevG7S4VK0MRtdPmzVmOI1rmPAPP1/rMq
         cO6qC+JB8xAhwWmD9GZZEfphXHjz88fsPMF6YgiEw7YZ2aZfAYjfVBkN12ygOSykXARG
         98QNvteDhYBhwSQvE7Dvk+oMo6jC6fjt7adMj2KOix9AkDCMIyqJDA27IxBoTNDTLeU0
         2Bng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=D39MKxFxcX4f/q0V0i2hmAbd3VZjEJI3M99v5cjemtY=;
        b=hM1QYe94WeX+UudWRC2fVHYCcnxCc17rV4jmSv/QD4xeYRX6ZRQg/H+FZb3GeIooE6
         5b7pDo8RwgObTJaE19Kopu72+fy6SDqI107zENXNnafjzc9KCwOrE0sPKdVS+5UucRhw
         Sc+WxneQzxAbJHqnC/Zs+pW1Pnjosfenm/Yrcsg1sOS8hYvPDEmxgta3096WlC9lfT/y
         94fjduS9Emshbp9aicQXbNkg0DzZYxo1iWsnrMgyRpfp/uFksknHCHoCiYzzg29fJp8m
         AYQRsquq8ORE4rBUrcrYgrzTwcQzdy/mSuUjSsX5W0ApFQbS79Gzrdr822f8OZaESmUJ
         LfOw==
X-Gm-Message-State: APjAAAVnQhYIIfYBmYpNGe21KlQ5hSBAI0W6/5bVDbSXSS5+8CVl2jWE
	w3BkKRqq8vqowmzeUdS5jHnayl54y2xsJw==
X-Received: by 2002:a17:902:b097:: with SMTP id p23mr22812860plr.36.1552116745566;
        Fri, 08 Mar 2019 23:32:25 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id b138sm26331623pfb.48.2019.03.08.23.32.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:32:25 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v4 3/4] Staging: most: dim2: sysfs.h: Correct SPDX-License-Identifier
Date: Fri,  8 Mar 2019 23:31:24 -0800
Message-Id: <20190309073125.5610-5-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
References: <20190309073125.5610-1-etsai042@gmail.com>

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/sysfs.h b/drivers/staging/most/dim2/sysfs.h
index 33756a3bffe2..24277a17cff3 100644
--- a/drivers/staging/most/dim2/sysfs.h
+++ b/drivers/staging/most/dim2/sysfs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * sysfs.h - MediaLB sysfs information
  *
-- 
2.11.0


