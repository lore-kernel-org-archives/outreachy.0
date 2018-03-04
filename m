X-GM-THRID: 6528628385749401600
X-Received: by 10.80.243.7 with SMTP id p7mr3265258edm.1.1520154600126;
        Sun, 04 Mar 2018 01:10:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls6678814edc.0.gmail; Sun, 04 Mar
 2018 01:09:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELvmQ84YhvqOAn36MJUXAR7P7R6cWoEBkezfW9CXrIB8jOf2IK9i4CRLVlwtTU96oJPfcQa8
X-Received: by 10.80.243.7 with SMTP id p7mr3265254edm.1.1520154599351;
        Sun, 04 Mar 2018 01:09:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520154599; cv=none;
        d=google.com; s=arc-20160816;
        b=AIWocT7OofC3HezGZDY3xUudt365TsX60k/TEGIeGpkWFG0exPWE8YJ2FCaOPyTfqA
         LTPZAcmm/tD6A3D1LAgbFIxVQILBljgCRI9FlcxFcFD96aAtGvTs08/0QyxM+vQ/3Vna
         TCJcnTxLp0fKoPLc+lmbnNOx5YZgOcJop1pWbKmgIfel1myYlJT1WwwaDsTB5qPyV2cQ
         eJPFKF/YTzbJ3RMcAO+HI8DlJNVHssITrGQ3mO9cc6EFOopR+uIxDlQEPTqSs+XLIutQ
         QmEkO0LxScdi9KaKeFn8jfAz9f2cl0InvrK0oaGcwImKb9b1088rp+8cYKMlY3wyuD00
         6fPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=SCcJ6DqH2cD5zmiyKiIDEzlTRg9cJjqEEuTX8lSM45A=;
        b=quqblzLDy0K6OsHgGJ09vyh2AWu9Eof2YSKjIZ106UKt0Lmbf/rR6xXITRCtthFvQ9
         rmtaiSULXoy2UlrRrfoQ7UhZfBr4eaikCidby49G5PoULtAekvLUvDTfnKAaqO0htC1Z
         24A0THkHMnHbuSlveyqq/LqCQz7b36g86Tj6D9Fr7xV0soCiW2ABj1dzwDz4OHq9IRB8
         OYbivE8OZglacopsSHZ6WiKvbuktAp7BEMfbtpwZueYn1lWU3ZrY1eQGIxQc9BEXe2Lo
         N7BF6g55MeDrtDjND3MBwC4wNgW+xLCU7TZnTauOW8fIBYxXNA+nX2a8wUmZK92+3vZK
         5Kww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lb1laue2;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id f24si506284edc.0.2018.03.04.01.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 01:09:59 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lb1laue2;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id p104so14181387wrc.12
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 01:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=SCcJ6DqH2cD5zmiyKiIDEzlTRg9cJjqEEuTX8lSM45A=;
        b=Lb1laue2UxhCoa6jM4Z0/EQDgBE92kABtAv1mdBqwVz6+n12eBoVAx+39C/gCq2wC2
         353CRKlMnEUN++L6RNOWtP7pnswQJAfOdttRsZ5FQ/a3XaqjrhcKOPdkQj6PmPcKwGXg
         7Ls8ACTVTuuoBV/TSCMqxvUdOCX73MeqENdcfd7TEKu06Vm84r9jsL42lljMt3rs4RBJ
         o7pRQ7qqP8ckS2u8D14JrItxtEFwCjzU1a4qrUyw3KsUKPanDLDvJokbN69fV6UGD3Bo
         G0S47/FfbNe3j0VbwF47QyMDOXoBrvuQ6DUTTVQJPxWYgbg4haG8TaqBK24veGITWojW
         Jh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=SCcJ6DqH2cD5zmiyKiIDEzlTRg9cJjqEEuTX8lSM45A=;
        b=j4xhVgyyg7RfkkJvlclSAtOXkW5qGCG4temMQoe/Mv8AuWGvRBfadNSz1/6TSBIbYa
         Q3ydHzWnnvdk0uHQdUDSjUkUPaayqJN+nwpSDIiO8jB2msBu//uAKvCr6yxLQzzulKyw
         eY3i881xcbgw6Z/RQIoxEhsWxl+up1S5em8Q9GzhFMai7lZu7SGvm2qH9e6y9CENbfnu
         er8zu8US+EpBX25zqOwAjahf7dkgTDwycjRaMghJXX788x3oWRo2JRPt84en4rRsegk5
         +X0x9ZNqgdEWexa/0LcQoUQp9Eh7bdpcam7kbZk3UABRyw+PKzlMFZP8A9Ftd+9Vx+eB
         47pA==
X-Gm-Message-State: APf1xPB4Eiubj1McVzzf+q2xU+mE7pb/ceb2AzrgJqtU0zFHJh3szevt
	UAxRB7mmAWlLChmAfJ+yFWYULkYV
X-Received: by 10.223.131.38 with SMTP id 35mr9446746wrd.197.1520154599053;
        Sun, 04 Mar 2018 01:09:59 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id y1sm7871635wrh.80.2018.03.04.01.09.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 01:09:58 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: lustre: obdclass: Fix comparison to NULL
Date: Sun,  4 Mar 2018 11:09:03 +0200
Message-Id: <2af5f92fecc211d04770d19600874f3345f97200.1520153895.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>

Replace comparison to NULL with a 'not' operator.
Issue found with checkpatch.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index e1f4ef2..64cc746 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
 	struct dentry *entry;
 
 	/* Disallow secretly (un)writable entries. */
-	LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
+	LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
 
 	entry = debugfs_create_file(name, mode, parent, data, seq_fops);
 	if (IS_ERR_OR_NULL(entry))
-- 
2.7.4


