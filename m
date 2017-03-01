X-GM-THRID: 6392323962132496384
X-Received: by 10.46.9.206 with SMTP id 197mr654750ljj.12.1488328902350;
        Tue, 28 Feb 2017 16:41:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls278758ljb.12.gmail; Tue, 28 Feb
 2017 16:41:41 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr707551ljd.16.1488328901755;
        Tue, 28 Feb 2017 16:41:41 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id y19si1384434wmd.0.2017.02.28.16.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 16:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m70so4857484wma.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 16:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uxzlT8mIJwqNBw6CqFc9YY2OEuFoAhAlIxlg/It6fGY=;
        b=gInOhePJYl3d7frRpId0wdZ4racguNcFunFOcx9XOktxTbeRI7ua2ZEtLCGKYMLqoK
         YSve+c256eKsPqqJGxN+mSDfPl3LU706cVr7YHfMuTzgyA3h2yrjlxsdvowon/pCOVJP
         aLD7prbQWkVxyRcVV0K5BT90YuJ0e3CijhogEJdWKMqkGMZ7mzvKxKXioteGcxfrkrXU
         uUgY2ho+oIhgaOpdlMlx7pdHzRfpwIkGnCsx07w37O8+orYp7zowF8BYJ6qyGib8XpsK
         iExfbsqacmBHdWuFVYGCweS4GkW0jn0ikvgzrEK56fgMzOOLULbUHWxgrJiI39PeSFo5
         pIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uxzlT8mIJwqNBw6CqFc9YY2OEuFoAhAlIxlg/It6fGY=;
        b=JUohlQeGHdiDNXyzC6iQLSOqJSEcUqnPtrifYnD3q6KXvu0gWtjgqvkSmhnKf1uTs0
         NAc2KrwsLHinRyLHruvdf/eD1LlW7XMpZ1hp/skXPjyJomLQBxe5xkQE0tx5S3mFnJMR
         rmBUN5VjPPLoTIwH9m1fdWCk2UBeA6aMFIE4bjyXZykKWPI2CFjRm+b8ye0h3EAg4GIw
         9dKpfhne/J5xtomont26Y6VF/z4lzviZMKugjhjoHqTp9iy0f/3Yjale2HeGmuLIAiUl
         lP2yx1Sp6mUK/L4Bi6CQPHzE0X3rnOmhnhqtthk3s/j0V+RoGd4yBWexpdGEDwzGU98s
         qfzA==
X-Gm-Message-State: AMke39neXMRsL1hqhZUCo6b0XBMGzrunePDT6imkL+rz8DA4mcGyxrMqLuNQjsWKsfwwEg==
X-Received: by 10.28.134.67 with SMTP id i64mr874343wmd.5.1488328901531;
        Tue, 28 Feb 2017 16:41:41 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 61sm4337169wrs.29.2017.02.28.16.41.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 16:41:40 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: vc04_services: Removed unnecessary variable
Date: Wed,  1 Mar 2017 02:40:59 +0200
Message-Id: <1488328859-6925-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Removed unnecessary variable and used instead the parameter
that was already defined

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 2815387..ff0a1ff 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -755,9 +755,7 @@ static const char *msg_type_str(unsigned int msg_type)
 	void *context, void *dest,
 	size_t offset, size_t maxsize)
 {
-	void *src = context;
-
-	memcpy(dest + offset, src + offset, maxsize);
+	memcpy(dest + offset, context + offset, maxsize);
 	return maxsize;
 }
 
-- 
1.9.1


