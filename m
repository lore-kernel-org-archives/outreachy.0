X-GM-THRID: 6662411476241743872
X-Received: by 2002:a0c:b996:: with SMTP id v22mr15395410qvf.2.1551213552245;
        Tue, 26 Feb 2019 12:39:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7344:: with SMTP id o65ls8002347qkc.8.gmail; Tue, 26 Feb
 2019 12:39:11 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaCdgryc3rmeOo9rP9xZCb2wBAAg6hvMjIe51l/kvP2R5s1BlCCXno+Lf5wxhCpQ5UzZHR2
X-Received: by 2002:a37:9a4c:: with SMTP id c73mr15047837qke.50.1551213551363;
        Tue, 26 Feb 2019 12:39:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551213551; cv=none;
        d=google.com; s=arc-20160816;
        b=UG7lgtJAEa+mdcqzfw1Cwo5tJxWYdiNEpaEsTg654TaeVZrpS0Lfk6L1DI6sxnLeWZ
         M0rlgST1tV3pU0z+9b8vlHVwgpc12Ds2S2oOdYOLsyBZmmlg1u+YzoAjLXDQnayzwtbf
         d6Z1KUBh8Wk3gedyuSNHmkCbD7PC4v2ATQKgZp1JWsY1pWIwaGxegWegbedd50NYiiys
         RqeQf5q+gf+jNZYhsD/nEGlltgdD6GqjblTQLVA0Zhr9hGq08lINdDS9nd9mpVd0C/VJ
         ER9WwyEZ0w2e8vHXi4cYQ1KkPvbTDL9U6PpQHgK3j3wMXelLl8GVmUBORrgLvDEIcVo4
         0XYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=IyLlKVhecufjG0OOFWO7fwpHBKQtXCJfWInG/ju1S9U=;
        b=q7VuoCM67lmIODWbWl+EPuG7e9ZNcJcmzQ/bOC65gesKfsAqCynKvwpuAZ8Q+nPsUs
         WlFYj0vkKnXmMajuT3Pd0UPcbO3jnOj+dVuQYq46hKztfiMPPT6m/GY+lKqVa4Q+lGu2
         Px5aQAvmOkffRyRcP8DZguatlY0LznlrY9+irWYpq98Z/B+lbgTR+OmITD5+sfLkaOl9
         W7WfUwE1KlpmrQ5O+G/hBhYlxvhAcgJnzXIK6cY1jaHn2+6vhXcioc542wadDGNzB4F3
         tKTxCAqPTzgxDCICZGtuCiV8a68lw/vnHbTPuczrY5b7yQ8bQYu/4/hcMWNF+0lI3uGP
         lcWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pOb8J5Ix;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id y202si258923qka.2.2019.02.26.12.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 12:39:11 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pOb8J5Ix;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id j135so11513568oib.13
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 12:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IyLlKVhecufjG0OOFWO7fwpHBKQtXCJfWInG/ju1S9U=;
        b=pOb8J5Ix8cVt1cYdMztduU2+Wv2Z0F0xrOZdH4Tc4nrAhyB+ooQvSRN+aA7OVYwWCf
         NwmL4QEtLj/lMzLbPQVQMHoDQkq7yCgaO23Z+y+lHWfCJdQ0SlYI+IXJW1qlLAj3kSRY
         QdsvtE8/Vp/7F+kVqYpZ3vSlShwYoSjk90EDqf/qLtKCBSGgPbVDcfOMgVXneIz+Mt/r
         n7WUQYctcvhC2oGirliXjcnncTNXFlxjXlFw80Svpi0gSIDnClmaOgmZDL/lhSVC6Ihz
         96tJrKbQYbP0K5C8a2JlbkLKK86cDTpZU2mb4h0Ppp40OjyEELgPrlgEfEyBFJbGR9gO
         eobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IyLlKVhecufjG0OOFWO7fwpHBKQtXCJfWInG/ju1S9U=;
        b=k2T+WNGdLzX6TgmvnoFiRHvp9b+hz8C5n0LYaIdJYfTLFt2Wi9elU9Syl8vLGjLXwk
         2ZdHUv70Z+ALPS7MrzghJb9eEQi1Sv0eVx4QuOoniq6swpBb52IId7fZEcTnnTKMFJKC
         1zhQIIrcfteJsnYpzdySEkCX/Mw9fMpN4aodKR6pSebQN0r4yB8nmS15jz7YTCWq6yOf
         B+resgsfRkZ1EXNmyWkpb3GJmFgeUSjRd8H+6zIrJYglxh/eYhx3yrKw/GhrMCJTqxtg
         Fd/s5TAbhjAZVKJrzUAuaB2baK+KI0QlFIJNg40GouWRTTa5RGvUzGnXYRSC3nd1YXFh
         V7+Q==
X-Gm-Message-State: AHQUAubWMlHsyYAV2gYwbIcxV+uDBIw9KE8hFBwIDMSi5+t0FDNE2CU+
	HQybnvFTnBuvThYlWMzJ+1BstXQBBJolXw==
X-Received: by 2002:aca:3209:: with SMTP id y9mr3645358oiy.145.1551213550741;
        Tue, 26 Feb 2019 12:39:10 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w202sm5945050oie.48.2019.02.26.12.39.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 12:39:10 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: Alignment of static function declaration
Date: Tue, 26 Feb 2019 14:39:06 -0600
Message-Id: <20190226203906.3700-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v2
- Improved alignment of function declaration
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e55dc38e4926..8d0182f5725c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -61,7 +61,8 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
 /*---------------------  Static Functions  --------------------------*/
 
 static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
-				       unsigned char *pbyTxRate, unsigned char *pbyRsvTime);
+				       unsigned char *pbyTxRate,
+				       unsigned char *pbyRsvTime);
 
 /*---------------------  Export Functions  --------------------------*/
 
-- 
2.17.1


