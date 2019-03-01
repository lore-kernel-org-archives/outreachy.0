X-GM-THRID: 6663442013681090560
X-Received: by 2002:a2e:974d:: with SMTP id f13mr334667ljj.14.1551453493791;
        Fri, 01 Mar 2019 07:18:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a18:: with SMTP id o24ls1173682lji.3.gmail; Fri, 01 Mar
 2019 07:18:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqxsO0m75arjcsMtYSM/Zv+y8rlsDglM7GUUF5MEnnytAN/UIbeP+Jyr4o4AJCNgwqty+Uo2
X-Received: by 2002:a2e:9149:: with SMTP id q9mr321448ljg.30.1551453492697;
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551453492; cv=none;
        d=google.com; s=arc-20160816;
        b=PTelcUpfIYoPSWk7RBdskieUBVLli7dOtJtS1YDH6yNHoMgXWlURs39kc9IcsDF8/l
         0uj4NgYWEZyaIOBlwljJHpIhtN2hmss/7Ku183bR80zqORs7PTm5BdQUMSlTrC2jvEUl
         9l32PKLNM7Kju+i/3871hT0TZoUrFeyliS4Fz8AHwvmBzGEAN8aQZT5H8Fv2awx9nzpn
         uKe+R+to/9EblpdAexCIGDfGjgrXMMRk0i6VX+DaoCY/G8VJDXXP7Rw0ZUBGMlslzMt6
         i64gbo77u9jqCcW3uQSyOEb1sHjrXXN7pwKkDIalmbvZKhyA7TE29ZyiCqA8784zSMKZ
         B73w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kDRoJb0p8fD91W2n8dpinMkAe2B3vELPv97D4kCj5Ew=;
        b=y5XHPgThXscnoCskSCqLSPBPhcpTa6CtSblVmJtYCgkj7jVZxPTBB1YBTTfksOLJS7
         QdJgsg+oJf3z+XgG4e5MlWhTK/ofsnqwy7c3gcthYl/4FrmmHrAF0Fr0NfanGIdMR9Sy
         rIYo7ryMhgyToW1lTNeYxM99SX8M1UJvEByvELdXZDYxzR2+84H6XnZ3JKgNfSSavdHm
         4lmpO1WrAyR6IvsmhL+z4R5V72H9YuP5hxuJ5XSdCsAG2rh+A/SOxXCjZ3JgBggcf8bk
         kdVOeX1C77q2HqBQUMXrw+DwhxJjTCRWpq5uC17N8Y/E7EMc1dYtApOCGa0+G3OC0yUs
         TMig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LnxzHrQ0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id y1si473554lfj.5.2019.03.01.07.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LnxzHrQ0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id i16so26228899wrs.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 07:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kDRoJb0p8fD91W2n8dpinMkAe2B3vELPv97D4kCj5Ew=;
        b=LnxzHrQ0LGk2KLMmq3GGJqwvhCkwJkqGDUfvSchjWoB8m6B+wSnlv5+V0D+kK0JvYP
         QW5YmLAvQvthIM4Xqht8mh4ptAtZGBjCWq3a8ESQLn2Oy8rlqcaBVy6WVPpR8lsf/ae0
         Bmwqzc2JRgBTyYve3Ek2AZoAh6/Wiqk7NE9U6eDgDziusb3Q7CW2mx2wGUDw8q5bVTnj
         QSnr36RV9l2kizEgkYzcuYg8M7AqzPypTzjkTJblSJARNbF20g6oHSZKMq+kdhtvuO1N
         qGV9CLWFUhhv0DO3NvTJJwIbTFpPVVNlmloMVXOpq+6LibxPF88TvqQ6PBjq4qoiwfaB
         JdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kDRoJb0p8fD91W2n8dpinMkAe2B3vELPv97D4kCj5Ew=;
        b=JBzS8Iqmf775RWV1K2izPIYDvxB6TcFjD8DqbO3ydc7Wpt6ANk0KJjq0FCAyqLa7lq
         lxcxpt5/6czqTpqLdO7a/Ne9NsUEwBSXSaClITD5ZetufZjo7wn3kUNrGBB7mpa+tRX3
         cRQgWCvg8Yg0fbqzoVd511BvESQ2OqCzIlSTkGM2tjtGuvHXS6E3SJvgwJXaEISUrlll
         YYtjpLfXIhHS8hunoB8op3Kvwsr3IYmIXKwFLllO05QjGCwkvsQqyISKJrTyauNERZ7Q
         mxf0NbpLvJDxiN7lSXgJRlUlh5tKThnMjx72M1VdrDaz62Sh2VHDBIHskApKfLhf/miE
         SGrw==
X-Gm-Message-State: APjAAAVEuL+5e+xmg53kEpCUs2af5ANIE9S7KuUV8USqxs+aeCInMWYG
	z90NlArEH6k7dGKlRLoTSw==
X-Received: by 2002:a5d:4843:: with SMTP id n3mr3666016wrs.209.1551453492161;
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id w24sm5188996wmi.40.2019.03.01.07.18.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 07:18:11 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0 or later version license identifier
Date: Fri,  1 Mar 2019 15:18:00 +0000
Message-Id: <20190301151801.7886-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190301151801.7886-1-jbi.octave@gmail.com>
References: <20190301151801.7886-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0-or-later license to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..7d69586f23c0 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
-- 
2.20.1


