X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:6e97:: with SMTP id a23mr2248782otr.54.1551825256165;
        Tue, 05 Mar 2019 14:34:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2c04:: with SMTP id f4ls1117621otb.1.gmail; Tue, 05 Mar
 2019 14:34:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzB7cUeOt4UL5LoeoqfvQDofJmPW1f50YFP9wsNtCTSyH/v4se41iZbe42yscYzTpmcYmO
X-Received: by 2002:a05:6830:1205:: with SMTP id r5mr2334693otp.62.1551825255645;
        Tue, 05 Mar 2019 14:34:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825255; cv=none;
        d=google.com; s=arc-20160816;
        b=BXn901dtxnq+4frtNevdCYoqhvTWeBID61a9Kmir28II9TsWKZu73fI16Kn3803Xuk
         iLYjGhm05eZJCyNwX51iZkj7yOp1sK/4fYao+Htu6N/VUI23Cttjog6ZYf75Cy15OsPM
         EtlC8bWE/TkiYtup2M0u7rno/Orc7leadwvtAUf3nmW8Dh/BQ2QUDfmg922qLZP46bBN
         uwdhK6hj4t/HSDdc8Xwt+pYNFXjQxnq5SGh67SFjtOcaQERTRmxz+T59EnX3k1svXsa7
         W6jNr6bDvPQ/y02eC4B1nVDyshiLu29NmbNKhaeNeO+VzdxzW7VSpYTGsxXweaEvq8bu
         hCiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=0s+Wk1lK+cO9nr5BR9erm2nyeB9mo8VV+H5hb21ckuqlUnKXRmDSfflXegO8HTu0V5
         RddF+q97EfzK2ZzZvVBrQwsi1G8u1iksIFMbhTt00G9FkO2LpHVd4m1gjOx65eAtdQLr
         /qD/TI7BW9sqkN6N3eRiThwXKEyeuXfjGmOhjj1iQoecGcAe4L0fNNMr2HnZxN0uQIyn
         91Vx+7L8QRjIeScp4WuKdn1vT7FdgESbvp1J2kgcVokt2v7dGxfDMWNG56Zty3WCq20J
         aXg3zG2fPqtppNrYbJYZEW2vMKaqIOywkZXoSkFqgNXRN4lFExMImazSmlgaZmB2mHAT
         MxVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DBuZJrSX;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p8si445525oig.5.2019.03.05.14.34.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:15 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DBuZJrSX;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id e7so8206517oia.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=DBuZJrSX9N+gQFPRohYbRu6MwbaI5PqcoX0sYgBqLS48snu55ir0MXQHoLaUZCtkJP
         BZCJNwN5kPtcck6b3sm0gfxz5lwhRmsuPbT/tFi04SSMuwgTPZrolBQgF/PSWxaG0d+Q
         8ZUMv4eodaIHrvMBapQlxc3Jkb524T0ktOZV7BTWJrOQg8NNKCtpk6kiszCaFeHaSzuq
         UUXxq1eQP3D7rhn0vnOccITHOWjiuKVIHsyIwuKQOkcHQbokPF0Lq4iBVDsjPvRsL7gZ
         7lv5pggY0R7PM7DzbqzvDQwSwmcvjw++rd85FFFo9cO0AFxhINTBaL/R7OSuhQ1lLcs3
         OJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=oQYRa3bjtp8L35Gi3Gqh1kxkmT0GwDf26pMJeH21CQai8tzXNhLuhmFYWrl5iX2X19
         oe2OQW1PYWxalmDLc2w70rJxPbF2M81c7jCX+4wNYU524T8ewrxtTJVTIRlmKPkWbIDd
         zq4EcRPWA1rIPc7ZzjtY74sXzneW8hu9EWJ+m3RpVlk2D3K37WMD4FgadSiYhdrLssey
         4lKMQOTF+4cSeMhghydyaKVDf+p66PZIahVxzy/CufmDh8HPVKvThQd2pMXHegTN4SjP
         Rt/H2cIPKIZ/drMmPkv7puWruF0D6jhdRlrLmL8xMzUhb5E+i4wdkKlEmmg55Is+gKK0
         h69A==
X-Gm-Message-State: APjAAAUlOoYuZC6CkXLulAQsG/xEliz9J1486HdU1819NWVM+wbZYwVs
	1RPGGU78AxNXgaLnhevpoBY=
X-Received: by 2002:aca:45d4:: with SMTP id s203mr502199oia.107.1551825255301;
        Tue, 05 Mar 2019 14:34:15 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id l134sm4230339oih.43.2019.03.05.14.34.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:14 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/6] Staging: vt6655: key.h: Fix comment style for SPDX-License Identifier
Date: Tue,  5 Mar 2019 16:34:01 -0600
Message-Id: <cfc3bcaa43f68ba203bb0ded18dbade868e57de8.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

Modify comment style for SPDX-License Identifier based on license
identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/key.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index 0942d8703f98..9347776fa3a5 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


