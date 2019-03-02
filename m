X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:9d4a:: with SMTP id f71mr7025870itd.33.1551551709046;
        Sat, 02 Mar 2019 10:35:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls4919853ioo.2.gmail; Sat, 02 Mar
 2019 10:35:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqxv4wpCa6BejOMMee/jqWHcCaezAhLe2wrMVEv9WQqUD3sAaWQLFrV6B7fgGxfAbAZvh9bu
X-Received: by 2002:a5d:8794:: with SMTP id f20mr6704224ion.32.1551551708603;
        Sat, 02 Mar 2019 10:35:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551708; cv=none;
        d=google.com; s=arc-20160816;
        b=CJnM4Za+dcaW+uSMpJ/X1q5XSirdMh6L3j+eNKtjLuYhieawLId8hdMuJ5oH7+I/8F
         0RGTN0BiWU5axk9Bc/kZC3u0ZVhhP8bqtJp4McpWdfF+DXUH5+TAoXSneJRdajZJ6Rfh
         VnVQ8vEk6W5rJZZYsfpCBnrRGJX/ogcMVY8e0Abhe/dfUU8fjGpRxBLLj7Sq20R5v4MV
         HfxYEC+R0hlC79fBK+P0znFqrApEslUrzQsdSvJWB33eyFkK1RTL37pnOVygkI5iZC5A
         KZPVJAm7JS86AXmP4j1irjEqDWYMYrT9M5QF0PkDE83tQP0/LptAW8FnHA5f8Dt9uS6C
         J12A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=LmaT3AlqSwfNQGuliLKempE5wVwb9uneSKzQHZl9bBUr4oIsxORZLn6rrvPlkA+fJX
         s3WW5SAKDZa1oTse+MMoOlC++vgGUntDVEb2/EQ1hr1DzPgVF7WcNJHO8fgR8Bh86n+s
         Oy56izkk9vCrDWa7O1DkgvP8vgffmfJ9PjsRQpPhcV4QqrZgweNwsLaPtdwxYXoUx47Y
         XZaeyx02m/drDgie7wcLTj/RFud4cu5zddCJ4bJfAUw/b+cEnWg6yMlYpCzN7BxeWKgR
         oxzbsPsIwk6J3iAPi7/nhsaAI2/TTRpQV2T6vI02ndZM61T1uLi6jfCac/Fx69vC+Axl
         NefA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bejlg2a+;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id 184si80477iou.3.2019.03.02.10.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:08 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bejlg2a+;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id 98so970417oty.1
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=bejlg2a+iRPqyd0L4emKeg7Fhi6QIYwV8FvArzpVSPHksRfbNpRtfC3Un+Kk9j7rR6
         B+9op9N5tyLOtkRii4Uc9ZINv0YAfQ1c/zveHF7WcWsjRcXT2FjQz1LnpiHZ8RHwF8XD
         CHBR071kxLoeNHrnJfuWHDVjcB6O0ivmZMSiw9/Lxe2oe9aNWp5LmMxFQvDbzAv6y/WY
         OiI+6SGo1osUzyv2QUQi9zF2r8MUpoemlIp25HdUYM+rLp1xN6CLzdwMRY22c5+gFOI9
         2WzJEr4j7q/cvk3sZzu7gqXWLF6hry9vZE6GzQUsWgOae98vBrXCELuA4nxM7zUYHUmd
         NglQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=a/cuk/ZlXlugRcsbi/Gxyq1MvPWW/dhtO4b6vuQ6ATY=;
        b=UaxD63AfVY8GTCrKBvEOFV/7Em98X9lClNKsK8Y3kMz1qiSbr8oytZJwrDrEmYFEpA
         eV2Qvon5SSVXYcVjbTgSOO9YBPt+wi8ix2TskEaxhNWyH3vrNHCUpF26KSkb8afLJGpE
         CLQVfKWA5rW21fOcu8An1E8VU+3nYsYSE9EPY8Y7a/KldwzQ66vKP2GNYxSiwKrX575b
         FBNA+7Xi0WrlSAOSrcNBnoWVQYSMd84RM9idVQWlEzsaMyArATdVrLn1biTcxyza1ecg
         Zt+QaNlmZYx7pvX0O/Ypsy2xlmfqLk+3QiJKX7Ls9xChO/3O4RiA67MdqqCW+uoVmyJv
         NRIg==
X-Gm-Message-State: APjAAAUqHNO2AOOEeWh7JnZcbA35q9gViF3wgJHwh5PoyB5wMLDSEsZn
	9VFqdocpxmTk0DnjTYQexDU0bniOG5o=
X-Received: by 2002:a9d:7ad6:: with SMTP id m22mr7956922otn.166.1551551707987;
        Sat, 02 Mar 2019 10:35:07 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d67sm495648oig.36.2019.03.02.10.35.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:07 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 12:34:47 -0600
Message-Id: <f1d5975fbf4d27012302cf660c2fdc632cf0d51f.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifer for header file based on
License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/dpc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/dpc.h b/drivers/staging/vt6655/dpc.h
index 93af4220605f..eac67794cc49 100644
--- a/drivers/staging/vt6655/dpc.h
+++ b/drivers/staging/vt6655/dpc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


