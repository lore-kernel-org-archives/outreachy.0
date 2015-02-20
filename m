X-GM-THRID: 1600363954176
X-Received: by 10.112.162.135 with SMTP id ya7mr1561127lbb.14.1424469113433;
        Fri, 20 Feb 2015 13:51:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls186936wid.46.gmail; Fri, 20 Feb
 2015 13:51:53 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr1577365wjz.0.1424469113176;
        Fri, 20 Feb 2015 13:51:53 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ew5si199180wid.1.2015.02.20.13.51.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so5850264wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y9nqt6yeaRqoMt/AzDG5ItRaLbP63WWPKrwgxGhocI0=;
        b=XqYDCLv1eF6jKqHt6vdPIIesu91ubRwUMZis/2Yc1+9Vg4pXkjrsgZqSQFHgVu7GBV
         eul63phMbaoi4WzdFcRYbqWnkriRGPT0aF3+0It+Esskknl88S55s0niwrpwKgJI4pGe
         HA3qVXwdVn5LSTxEge6ktBQJG0DR7YPCuAYRZpqpkb0xLE1Pe/iX05qRRiQvvfBJsXeb
         C5mS3NblS1LWGqYfQzq1ooToNXJYD/6A2MhR0evyWmnAvwsb+x6A1JezSxna2NBQRnBM
         kcYzh8mTq3NgxZhYuYVaWkTVtCmQBhKHREpHiMAAu656PsEYilktg1RjFsar3+Apg6dV
         DyqQ==
X-Received: by 10.194.2.43 with SMTP id 11mr23088875wjr.104.1424469113098;
        Fri, 20 Feb 2015 13:51:53 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fs8sm4173556wib.8.2015.02.20.13.51.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:51:52 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Edit switch-case indent
Date: Fri, 20 Feb 2015 23:51:38 +0200
Message-Id: <1424469098-11379-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424469098-11379-1-git-send-email-aybuke.147@gmail.com>
References: <1424469098-11379-1-git-send-email-aybuke.147@gmail.com>

This patch fixes indent as the codingStyle
of the kernel recommends in dir.c
Fix checkpatch.pl error:
ERROR: switch and case should be at the same indent.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 2b74824..a5bc694 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -1910,21 +1910,21 @@ static loff_t ll_dir_seek(struct file *file, loff_t offset, int origin)
 
 	mutex_lock(&inode->i_mutex);
 	switch (origin) {
-		case SEEK_SET:
-			break;
-		case SEEK_CUR:
-			offset += file->f_pos;
-			break;
-		case SEEK_END:
-			if (offset > 0)
-				goto out;
-			if (api32)
-				offset += LL_DIR_END_OFF_32BIT;
-			else
-				offset += LL_DIR_END_OFF;
-			break;
-		default:
+	case SEEK_SET:
+		break;
+	case SEEK_CUR:
+		offset += file->f_pos;
+		break;
+	case SEEK_END:
+		if (offset > 0)
 			goto out;
+		if (api32)
+			offset += LL_DIR_END_OFF_32BIT;
+		else
+			offset += LL_DIR_END_OFF;
+		break;
+	default:
+		goto out;
 	}
 
 	if (offset >= 0 &&
-- 
1.9.1


