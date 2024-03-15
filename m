Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6CB28E3E
	for <outreachy@lists.linux.dev>; Fri, 15 Mar 2024 13:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710508003; cv=none; b=W68hXDo4S5GiNYR3GetnpN5Qtai/G99sHEUN/N9a9Y/0KTOuVgB75M96qIuHC0Rr0M6/BCNtaw+b2IZKg1dDYxcZwA11PKDS3t8VK/bQGtRX4j2sTmngbSVI5kAO2jcYDBIoX84yb3+0kIFpelz39dVVBO64PQ7XaTeY3SheiVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710508003; c=relaxed/simple;
	bh=pAuOxrGJjw+WcXIsvKFpQEfMzj7cwcNiaJNToVzH3Qc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ff1aOPQQ1o5iXzEWVTx1JgZ5vJkWQp+MPgtS8TwKBt0gvEKTZYmeZFhwqKNHZiLubUw4+KA1ZQvUlKcept8y3zTPH2QRStregBo0wO3ro06IfYOMsvDIRf3SbFfKe1N4/ZBbt/+xhTCFzaMJDr0UnQ29vYEWSXYl19OZRZBxpgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BPqfOPGZ; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BPqfOPGZ"
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e6aaa2f02cso1803709b3a.2;
        Fri, 15 Mar 2024 06:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710508001; x=1711112801; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1NY1O0ew0W7ggm7j9xxECvAoyGcWbE8/Wq9boK0lbYA=;
        b=BPqfOPGZdtRfVHOWHiQMtDzEz6+8XmHKh4eDnFx0rqQXxSy6/zJrhJeqE5SNVRhu1Q
         3siEreaV568nlK5On2p2Ubw0dd820zO0ugDA+HOCsyTV2/hda89LMVAHcXADjrCB27Mx
         CNSptsQZvnl1diLwNm3g8IrpXaUZU9H5BjCPfUCgZ/n2/2zD/a95bNT3HfFFp68ekVVQ
         y/rd8hvuSrfRZb9huIOtLkUkZQE1jLbgxfPJ85PdVlZA0uEu/ortljEoJRxEtGUU3Oqn
         1QUykNCf819hoTQQ3w448XdENT68CPorlk0uyIxE52fMXoPVDzuopc+DDGnXnRCza0ba
         qosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710508001; x=1711112801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1NY1O0ew0W7ggm7j9xxECvAoyGcWbE8/Wq9boK0lbYA=;
        b=puCD9qoERzdHBt+xStWKa1CsAN2dKzwlocffjxkRa733MUsR5/hxCN8GktlZFFibJR
         /W1phKnMKrLs8gxX14k71viOwM2zeHmGKVOz3TKYi48O5+c0YX/WB4aN81PteeGejgIt
         QaPsx6DDESF69zTaizkBujww/5RKGj7U6bnGZJWyhfXPzhK8i2MU/Kt1gJtTuS7m4kOL
         mkgbnCs9+lI0AW95yc2eCDLJosKk/o5GJVSLv/ZkGhigys/85CFzPt8QmWatoUCF1XZq
         Udii6uSD5ggXERw8UNV9FSA4ZadrYfmkToIK7WkhWQLP+rH25AksP96t23k38bZ7TE4e
         wPGA==
X-Forwarded-Encrypted: i=1; AJvYcCVKVKaKrBvcUuYlPu9/VyMtWNGz/KTwbeyApsytNmAZ4dmOtkVUelSIqhRXYXrYVCYNF75i8qql19LJVCqjHJMZ9KaQI66pcA==
X-Gm-Message-State: AOJu0YzCbuqd9uN5HAdEp38ymq7ghCthi6qnLUPyPNfdfhZDbbthAnXR
	IxtusLkWnHPVYW8bONVdzgc9DU6h+zaVuir8c3NMtEaID9kT4eXcmysUtPx+CqYmKw==
X-Google-Smtp-Source: AGHT+IHp3wY7HaOB/AXDMYPVMVe0FLS60qkHQi/s9HluWJwdOEJAqeMHDfX/YkdOWLYIGINrsaasnw==
X-Received: by 2002:a05:6a20:959a:b0:1a3:18be:9b18 with SMTP id iu26-20020a056a20959a00b001a318be9b18mr5058987pzb.26.1710508001267;
        Fri, 15 Mar 2024 06:06:41 -0700 (PDT)
Received: from Ubuntu.. ([160.202.10.71])
        by smtp.googlemail.com with ESMTPSA id i3-20020a056a00004300b006e56e5c09absm3408220pfk.14.2024.03.15.06.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 06:06:40 -0700 (PDT)
From: Chandra Pratap <chandrapratap3519@gmail.com>
To: outreachy@lists.linux.dev
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Chandra Pratap <chandrapratap3519@gmail.com>
Subject: [PATCH] staging: sm750fb: Replace comparisons with NULL and 0
Date: Fri, 15 Mar 2024 18:31:11 +0530
Message-ID: <20240315130400.11540-1-chandrapratap3519@gmail.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace '(foo != NULL)' with '(foo)' and 'x != 0'
with 'x' to adhere to the coding standards.

Signed-off-by: Chandra Pratap <chandrapratap3519@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 04c1b32a22c5..4537f007a810 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -926,7 +926,7 @@ static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
 		goto NO_PARAM;
 	}
 
-	while ((opt = strsep(&src, ":")) != NULL && *opt != 0) {
+	while ((opt = strsep(&src, ":")) && *opt) {
 		dev_info(&sm750_dev->pdev->dev, "opt=%s\n", opt);
 		dev_info(&sm750_dev->pdev->dev, "src=%s\n", src);
 
@@ -1147,7 +1147,7 @@ static int __init lynxfb_setup(char *options)
 	 * strsep() updates @options to pointer after the first found token
 	 * it also returns the pointer ahead the token.
 	 */
-	while ((opt = strsep(&options, ":")) != NULL) {
+	while ((opt = strsep(&options, ":"))) {
 		/* options that mean for any lynx chips are configured here */
 		if (!strncmp(opt, "noaccel", strlen("noaccel"))) {
 			g_noaccel = 1;
-- 
2.43.2

