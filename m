X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:6006:: with SMTP id h6mr4856816otj.1.1551494519677;
        Fri, 01 Mar 2019 18:41:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls5097896otn.2.gmail; Fri, 01 Mar
 2019 18:41:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqxHejTR9jaL4KzfHBxEZZZHCHxr6iVcoOvGgj0K2s9ZzUTVroVfhbTJO1MHbUGfdpsjGZiY
X-Received: by 2002:a9d:7d88:: with SMTP id j8mr4782279otn.44.1551494519115;
        Fri, 01 Mar 2019 18:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551494519; cv=none;
        d=google.com; s=arc-20160816;
        b=OZA9KNrLt8GfPVpVVSHWDtYjqP+Q4ykEuCIcCIWknQOtI7Mq47OQzY6eL6hSsNtSv4
         JW/w+aEE6GV1DGI0PLVnJlaaeIR3KdrQFkfX77HLg8a+EfDrbVWo6ACzqNBPLYeT2IgE
         ArNZz58XxyV4uAT/niHHUsE4eiFTtaPaHsBkwgRPiLfWVyJWLf0L9e3Jzlt4N8oJjX+t
         0Db4eT4LLA3UvD8o0P5B+fhXrJZ0PKRgvh0tjmXUh6CVndqgc6yXCBsiqG5FWbb4ASOw
         sTSjPggm7DWVP3xuU7YXyNTAlWIfuMzdqk6PFb5zKVlVe8hmKc8GxTjRtY+ZdQxtyO4U
         sIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=BYUjxM3BkRrB6aJ7uRP+psUZPB5zy4OH7BFBew8tAK0/DoWHFSuDTpumZdykHslJKL
         hpE7xJk/SYq3R8oVpQH0tnOWF5XnwnKhNzUMusyptmo3uvFa7IFSqp/LnMrbvwHLSVbf
         z2Vk0rpKHieIZN3twwMNyL/bcm0SBvUJbjljnlnDZNcprfg69v73Tb/AYTu39Y97GjQn
         KiTDJITf8Xn3zRUodBVyJCrJEyWi1vDtkLFuTzcQ7bz6dh7myC+1uAgR6ERhc5nxGiwS
         sUW/MZIt5P6Lu62F/Qa20WXrDMRWLDOK3T4wjHGAravbPwoho57nyokmw47wx1pXw9Dz
         qDAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KIwAqTAF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 135si1406430oia.1.2019.03.01.18.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 18:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KIwAqTAF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id e7so21167938oia.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 18:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=KIwAqTAFWOCPsTx93TZY9n5/qI7/9G4nlDOvPvyiO3dBICuQ766GPmJZ7U5ofxnxA9
         caar/iByMfjPQf8+eizX93OOzy9dxPxZBaUcMErcfHHH+9CblH58vtKLqnqd4o7xEHXN
         9i4AAGJWb+MeL+rzuYBHyUtmjCENxgdcOslxLzrA2jmz/C2UrTR2UtR0gHcad5ksj1gn
         uLsvUSQJJzOFG1Wy1sUMmmf8K9HhK9PEBGNdc4oInmjRHxK7Mf5WZ6nQ6SYbBJhDRzBb
         jXpvgPN8bhYdV5fGesLfeToO7DOG6ICd29wK8BqLM/xQciYXLobth6PXAgqBouyP8QWV
         m1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iCcLOjAfTd6qBZGc+BMJVc4hWH4jhwFXq7lGQk/XHTQ=;
        b=pbDSaaWad8RhfGVi57DXotQ+GUuTbm6ttQDDTyuoLyxhniUcl4JeZgKtlbf4EWLG6Q
         s+V9F0m8KPYho1bHrhrYOZmUp3nqnpJMuSFk0dU8coR7ofuXOIGkVrXG5FyJajXzFSF/
         xNFjUytgX34s0RSUMQI9Bh/Ce711x7svAwZLzZlO32dH0cr+a/Rb/QzJG0yikYr/uQc2
         qyPn/WU3P+qED3nFvnA5OrlqUy8117uAftZlQx3x41rJdHM2HH/dUhO1NfrmTf1V4aTK
         I9QrHKbg0j76k6o28YX6viZEfgkn7gUeEawzm01hK/IgXh+IU+gvoMMZyrUrMn196yYR
         tpXw==
X-Gm-Message-State: AHQUAuaAUz1mZQUy1k/npDRqYfS4yYF4OtabfSmPk3zmr7rHlsA4Ax06
	XXYaFTsOo8y9YWF/UAjnYQ0=
X-Received: by 2002:aca:3c3:: with SMTP id 186mr4947974oid.99.1551494518777;
        Fri, 01 Mar 2019 18:41:58 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u5sm9567458otb.62.2019.03.01.18.41.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 18:41:58 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 4/8] Staging: vt6655: Fix comment style of SPDX License Identifer
Date: Fri,  1 Mar 2019 20:41:38 -0600
Message-Id: <95d9158721cd94190453aba2fcea12b3dcc3b38c.1551494031.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header type file based
on License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 2f9e9219e8c8..29f354ced563 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


