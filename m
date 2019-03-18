X-GM-THRID: 6669766114403155968
X-Received: by 2002:a24:330e:: with SMTP id k14mr10427178itk.39.1552925937449;
        Mon, 18 Mar 2019 09:18:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls5679682jaf.3.gmail; Mon, 18 Mar
 2019 09:18:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRQlnD5VqKsEr+ZNixRaBDlwCdt2XSSUXhchUfeyfEXQcvvryM9JzZKxN/TXXAUBO0iexp
X-Received: by 2002:a02:6614:: with SMTP id k20mr10855121jac.24.1552925936395;
        Mon, 18 Mar 2019 09:18:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552925936; cv=none;
        d=google.com; s=arc-20160816;
        b=W1JQxnT/5DC3+fgL9reKKV6ZAGYSijUImvQtPIfP1PUzsHQ/pxsySztMzVzbBPwRdT
         eG4mVwTybfpJp/lsdykh+Y6ocLXt8PWtzSoP5zhBNM1bxMQQKWzHPVS9cfz+mdrhUS29
         6rlVK5LFfVdmZuT8Nl0cA2Loxb47kogM0JIcO4mgiuf3n448Ay/Peqpg9TkHRw+ZMqB3
         n/2JGlOYO+tyGo7VEIyc/uX81p4f8gcOI7ie2Od8mOMW4I+4tKdltUISrHFzF4JJpyei
         ZhMKh6y+l4pfYAPDi00nInt4Qa86a081hmkuUvy+IZWWrCn9AmqRbQLNuZBxAfQNYKMc
         sktA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3LegTOwCn5p9FKZQ9Y3WAW9vpb++gBC4Bdcf+WXTJqM=;
        b=wvLCHr8//ywVke9Bj8P9ZZLUckXmoGOtWlUOyKR9UsdMPdhjY0ctQIjM3VR6sHGT7h
         YJUY7KckcsDKCLBPy0nhOCcJUo+4e28FiVEo/zhzVTYyLcva5EH+c2N3S7UTJWLnGUA3
         3Figc/+des66vpmEIJxRJo3AbZPvT6djJEFoz8C5mbCo71d7Al61Q0BP7oiDjKJenWbw
         tdq0Uc4aWVxU791jyiWmQ0BlJPcyMP1OHz/8fqOOdgx91R3uJsdI1icB5c3kZwNhy0OT
         28pWNkAgyFiMENO9BKra4Nat7c/UINcBGYDjhXxq63CP76541yBO6t1jlvzwBtSwG/Uw
         vh2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CIn/EnQS";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id f13si555137iok.3.2019.03.18.09.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CIn/EnQS";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l11so11710724pgq.10
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 09:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3LegTOwCn5p9FKZQ9Y3WAW9vpb++gBC4Bdcf+WXTJqM=;
        b=CIn/EnQSpBEvKKUeIF6BQU5Q2OUEzH32ykAceVVT+wpXzLyIAMEXh3RM6KRIzZHZJn
         Pk+XKxXLWa+wsZXDtcCVMcxekWX/3IYVVWkHnfbVeZNNEuXnPmzZsJ4arX9PGd/Dyhvk
         rrF3bK9Ggafn5ygKQjwOwspPkGRMe231wCLnZ5Xi0NdY0JctVfbrv5RpPHVlRpwRDUHP
         9blgg57ZqlGNGV0e8pmkDJM34UWv6W2YAMvZsoo+rW+PH//zkNk70vlDFJb7vLG7079c
         oB7a8VWRoFnqRnzmya/XB2FvHERy8K0Iqa1/Cf4DdC+XHDQndTOI9RLzxidK/BtQud81
         AF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3LegTOwCn5p9FKZQ9Y3WAW9vpb++gBC4Bdcf+WXTJqM=;
        b=S5x0WTQJlwc5ieqM6lpeTA9FqQGk7xOwED0ea+iPylyuoZWU2FUHMUbixhVfqmeYqh
         l3XFoY/CJPKd2S/6yZ4hQC3sd6XOZmsHIG3h02yH1ZYql17Mfw1x0x91/jsCaw20qT0G
         ApI4xwkpv5qQkUVr7cXqOUtn/aDObculLjBDKQyGYtrVRQ2nnJzwoNoPj9BLEZb0CqAo
         FDTVkKJdoFNleAv1Dnpzmca6kvzEW1CVAaVY2PEcschCkmmaSC/yoKSuucqbP7GsKU22
         8ty797l8WkpPiwEOV1JlKqNILM7Gr/uuEWTJQJH0kTc+pzogoDXhK5KhY4KOaI6YlEh7
         w+xA==
X-Gm-Message-State: APjAAAXlVOFny/4YB07wbgkhfJ9aZuLkzWqd/fDS1QhUJ+0UALMJebQY
	59qLnpvVDu1kNmEY/l6eRhATBj4PL9o=
X-Received: by 2002:a63:c04a:: with SMTP id z10mr18763738pgi.115.1552925935819;
        Mon, 18 Mar 2019 09:18:55 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id o2sm20304141pfa.76.2019.03.18.09.18.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:18:54 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: gasket: gasket_sysfs.c: Fix string split issue.
Date: Mon, 18 Mar 2019 21:48:40 +0530
Message-Id: <20190318161840.3182-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Concatenate a multi-line string constant into a single
line.Issue found by checkpatch.pl.

WARNING:quoted string split across line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Change in subject line.
Clear log message
 drivers/staging/gasket/gasket_sysfs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
index fc45f0d13e87..a2d67c28f530 100644
--- a/drivers/staging/gasket/gasket_sysfs.c
+++ b/drivers/staging/gasket/gasket_sysfs.c
@@ -223,8 +223,7 @@ int gasket_sysfs_create_entries(struct device *device,
 
 	if (!mapping) {
 		dev_dbg(device,
-			"Creating entries for device without first "
-			"initializing mapping\n");
+			"Creating entries for device without first initializing mapping\n");
 		return -EINVAL;
 	}
 
@@ -233,8 +232,7 @@ int gasket_sysfs_create_entries(struct device *device,
 		i++) {
 		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
 			dev_err(device,
-				"Maximum number of sysfs nodes reached for "
-				"device\n");
+				"Maximum number of sysfs nodes reached for device\n");
 			mutex_unlock(&mapping->mutex);
 			put_mapping(mapping);
 			return -ENOMEM;
@@ -264,8 +262,7 @@ void gasket_sysfs_remove_mapping(struct device *device)
 
 	if (!mapping) {
 		dev_err(device,
-			"Attempted to remove non-existent sysfs mapping to "
-			"device\n");
+			"Attempted to remove non-existent sysfs mapping to device\n");
 		return;
 	}
 
-- 
2.17.1


