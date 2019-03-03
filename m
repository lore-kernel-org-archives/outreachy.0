X-GM-THRID: 6663863789016842240
X-Received: by 2002:a0d:d582:: with SMTP id x124mr6399820ywd.21.1551589531492;
        Sat, 02 Mar 2019 21:05:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2304:: with SMTP id j4ls815108ybj.5.gmail; Sat, 02 Mar
 2019 21:05:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqwsM/B/o88DEkACutV8s7eYqmWhaOTbUoqq42AM0By1Ug1RpghB+kNfBpddj3EMUV1MxtT/
X-Received: by 2002:a25:5cb:: with SMTP id 194mr5815087ybf.23.1551589530493;
        Sat, 02 Mar 2019 21:05:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551589530; cv=none;
        d=google.com; s=arc-20160816;
        b=T1tMNJ3WtK+1kLarXH8NNnoDLhayGVam0VxbaB4gr29JW6gcT4b1XbvStaVjtnGjEv
         Ib0Modknns5EB4VKZYC7D1tlp39FNvQVYp4ONVoBuqudZk/dNy8ze95FjI+gjoAsk59J
         H73ttLnyYeJRow2TvNG5FHq27q83AFfSWcC4cfwgiAYQDZ6o6R+YQAclx2tazEuI2/XU
         AyrFs441kpQks1AzzRWi+zmhXcsC6XjosfRCiR7SaTn1mMZALTdV3ajYbe+K8cUxbpI/
         rmJskyJiEx2glfm0z8Po3mtqKiEWu6KNAA6zCMWIHwQTGRkNcCLNg4JnT/BjehZQDqnl
         Owgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=JYexcRE1dz9VPD9p6SVSQMgdj6FGaMiLtrpQoUSgdykMWbX7jkOc6L/W647ZVmF8gU
         NPADbkZvZKwgKMuFNv+wWcVqZgmouZRfqpeVTe4lRnCxsECqo8cNz/QKk71QFJLc92Mn
         ANHMSam/lN92Et/R8wLLgmg9Hqg4VZqhRoAtyJnTPx8uBOCFtz50wqSFv9pi1lsctH8W
         fhBsLm8DznkOjKWLroHMVlbtzgKqW5EVsGGt5UJo0BAUuseaFMPhkXiw97/n1QiBq4CT
         GZRYngkxEbYBCIb/8qxFuQASs8BRhCHM7Umeg9j3hdHylAaRfdHvR20MsbiM/yJUDdW0
         tD4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="omfpQuT/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id e23si138679ybb.1.2019.03.02.21.05.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 21:05:30 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="omfpQuT/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id i8so1366896oib.10
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 21:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=omfpQuT/VPngHTTvx5tQTSAFXkDIJ7aScolpJPh8/+nS37nCW/EhHF9ISxR/h2HIsE
         uaFhPyJu1ADLcy+1Tb1QlIdWcbJ+EzVjPbR/VchoK3sACrn4wFUgsfI5h6B4DitFukwX
         jouewZ603oIBBNvv0HefBALvhP7F4NtiQi97bOtmLuj3lBJnLNGGUE/5z4r9PJBP6bXS
         5kcUuM57xkPxcxKmL64BKR63ggqSf1Q0sGqRGThkz9B9H8K6gKadmQAYNt7c2roVzHMt
         zAzkGrzbGTPO1nVAiQKqHB620xVt9wwY4IjOM3jKabRX+dOzX4r2avHGpdNLajhtVspE
         VIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=at3RZBRNYeAz6uW4520RBOFLiS4XpCHR2yRboUDJo9UllFjZ3LBOUXtrJBjBj+1Dxd
         lBbkAXugDf8NqVsrUGfM0ySITCSRgRY8EM6xQ2EqM65bgbDHbWVDKFz5GQUPxJw1ZCf2
         xcwUS0KQZO8htJYyPtJwM4yvNngr12tVCvIGsYoZ4zCyN/TAFAKjobGMq4xG5C/X2Vy0
         adhZ4Zm7A8K5wqWed91GnUSY4cnfQ5TUHBeCtrD/tWAzxf+Y7/Q1tE3hkxSsGptS/Q99
         5ayaocH8yfAsv6H/Yz4EBGYB+V0OCGIaj7+imCQvYdYuxsiyv2PNWe02wlGprdz9Dcbb
         XPZQ==
X-Gm-Message-State: AHQUAuYul0AqY6E/RKeCuKv4XBEDzm4AMdKtDwj5mgzUqG6WCaa8eJWz
	Uc6A3F3wpkAdKTt7h/iprJw=
X-Received: by 2002:aca:355:: with SMTP id 82mr8624893oid.30.1551589530001;
        Sat, 02 Mar 2019 21:05:30 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 33sm1190806otr.53.2019.03.02.21.05.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 21:05:29 -0800 (PST)
Date: Sat, 2 Mar 2019 23:05:23 -0600
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: madhumithabiw@gmail.com
Subject: [PATCH v5 2/2] Staging: vt6655: Fix comment style of SPDX License
 Identifier
Message-ID: <b78814e5e69b587eef1849550bf4e77775cd4e4c.1551588900.git.madhumithabiw@gmail.com>
References: <cover.1551588900.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551588900.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix comment style of SPDX License Identifier for header file type based
on License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/desc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index b4a0037b40c1..d4572847b08a 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1



