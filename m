X-GM-THRID: 6669790779822571520
X-Received: by 2002:a67:788c:: with SMTP id t134mr11869336vsc.18.1552931680528;
        Mon, 18 Mar 2019 10:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls2819479vke.0.gmail; Mon, 18
 Mar 2019 10:54:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXMzQ4xJI9elZ09jum8qSxF8+97EIfyYMUh4a+/c25iStIO2CCc4tR/zhm8lGNwwZ684gn
X-Received: by 2002:a1f:ae53:: with SMTP id x80mr11886341vke.8.1552931679021;
        Mon, 18 Mar 2019 10:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931679; cv=none;
        d=google.com; s=arc-20160816;
        b=hNXwjYU0wCpVUmlPfSUcLvu7ARSzqag/CRcEDY/2UnHebLJFbW+9z44Vqbl+nYy8hb
         X79im8aTLIUvnG+k/swfyFRXwu4Bai1XAHLPiDXfXnqMAF0rUOHsXC9SYepIhsxK2l4y
         RxD5MllqrD2irvH9OAsqdPhkFffmstGmhEp1dGvmhqX0odeKwLEQrQ1DMDzR41C60aIm
         A1j80HqIUgwxn7r5kfKHgGYTqoBlNEOp8T1ZaxpoBzCnJLDMcR7D3I3W7NBwMkYAmjQ0
         9P4iD1BZ8EUzujRxeMABg5I1z9mJGOW7Ax5RWaLsErOd5+q0Eby7vtH/BG6ZisbMxERf
         LnJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=baK+ig9iiy+wSzosAZSBlxRQBYSfAuWLkWVcOHnul7E=;
        b=Xh3vh0Q8EqYpzY3mUqco95Ii5N5o9CPSGgkpiBMKshV5JzPzAhY86QSFZ/2W9t+E6C
         /OA+9WyqVrnU/HGUHcHYHaYPTWSkpamb6MX2nblRYSqK3fiIZyxq28he5BLuah+UUew/
         WbLtEAuXwqPvRbNt4zLkWAmaZjImGS3tucpAuUYAx08XHXPAIj1Y3LJENQJQ3vxaVIuy
         jlTgD0rVbKjQ4xO97M1f0eVgjQmBnspfGRwWk3ZSs4ui6n65x2t9GHLbLmXC3lgmcpiM
         yKfbqMBOMeKXIIE/1dg3zrX7zh/cpigP3NWm37Iuu1cFE93lwXXOXb0BaqobOv7Yw34A
         mMuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAZaPSVu;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h13si586652vkf.4.2019.03.18.10.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAZaPSVu;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id r15so9014645pfn.9
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=baK+ig9iiy+wSzosAZSBlxRQBYSfAuWLkWVcOHnul7E=;
        b=hAZaPSVulPgnhCAavYCJlimBrCIrSodchGG/IzBVdjFa878uhNrTVTdZOujzHYdG8D
         3xT4s4rbwa7VSpnc1Stc2QIAjBUvJ9H5D0iwL0jckJuU2bk6dWTAIxu3+DDLrrXhmsA3
         GqMXsJfn726xuUwfpMiTATn91iyzbNLTlCwDifjPwOFvcZyc9qHIieyjQZg9YZs7YIbA
         VQorAzI3FFG2WK58xFzE2E3za7VjXQT7TwWU7/Yh/TQaHIZn5S8vke0GvqZB/XqiZkvu
         8XvNMc356JkcWRsui040eVbxkO8AyM4P9oDKm+Bt00VUBCf1ARJK64MBSVW+kFIXelaQ
         MQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=baK+ig9iiy+wSzosAZSBlxRQBYSfAuWLkWVcOHnul7E=;
        b=B8+RqbVvAUkXibrhcOEIeppiQwmh5HRuKy6pxmp1w1mV+7M5T8ZQO5ZIp3Jtonednb
         VhyZdqdUhhmYLV9zgWAV8ljzVENS+bJih4EeiA+aq3ym86ESBZdym3GFX6w6foxpY8Jf
         bWeNgcC83dJ+li7ov4diNNcGHdB7XYsSAEC1BEFMb6oizCj83+LCNA6Bi1OiCSfxn2hh
         P+czlhhW4rqteYazQFOozRQlN8xXo9qEk/Rst3ZAFMfR2JhSRKQDM1+feRCUe+wgKpJ+
         ksKQF4HALOWuMfJwhwHbkFzVUju/u1+h5ccrD8K1XEmT4zwGMJm3bCFA05brt1Nsgp18
         9hBw==
X-Gm-Message-State: APjAAAV17k/9x1Pltkhq9IYaIlao5yIQb8F9BB8bd2K5Bmm+7B6CNsF5
	ZYo7x/0ehJ1tSsYDg0R3F04=
X-Received: by 2002:a17:902:a5c3:: with SMTP id t3mr21053481plq.293.1552931678130;
        Mon, 18 Mar 2019 10:54:38 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id f87sm15534833pff.38.2019.03.18.10.54.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:54:37 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: gasket: sysfs: Fix string split issue.
Date: Mon, 18 Mar 2019 23:24:26 +0530
Message-Id: <20190318175426.6507-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Concatenate a multi-line string constant into a single
line.Issue found by checkpatch.pl.

WARNING:quoted string split across line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
Correct the subject line.

Changes in v2:
Fix the subject line.
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


