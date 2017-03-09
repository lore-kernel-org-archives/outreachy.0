X-GM-THRID: 6395412283312308224
X-Received: by 10.46.76.17 with SMTP id z17mr2682929lja.13.1489100030926;
        Thu, 09 Mar 2017 14:53:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls829450ljt.24.gmail; Thu, 09 Mar 2017
 14:53:50 -0800 (PST)
X-Received: by 10.46.33.163 with SMTP id h35mr2836604lji.17.1489100030702;
        Thu, 09 Mar 2017 14:53:50 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id n128si26017wmf.2.2017.03.09.14.53.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:53:50 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so13148760wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=I7pO0wlOAh6xkjLi2K+u64wnRUkdag0Qec5PDti1sMk=;
        b=iLskC+V+/ypkYiweL2E9kZGHKKZ/BxncUaDaKn5KfNdx0sUChgAKuhO9VcrQSzOzHy
         eLwv1NerdA9fAcWscqsXP7NcpqGkiDMWTTS+RB+ELWAmtji6ZDfGIacymoWb1uLy8TWQ
         a3uFsR0xE2/hjZ90otHseuJKinL/vJicRPMe97muiZ/4SOdWRS81S2lHLzDPEIRO55ri
         NjYBIpK+V7XlCFNBEhta7EEerrm5MuYsAnMsHphDeV3VJCCVW45VaGMcqnuCZkcKLW+D
         S7EmF6elo0NpTV6JKB9DxBbmAhsQnGyamWVIsKrQ8wX7VVvsUUH52nG7JZJ6lXWAdLkZ
         BZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=I7pO0wlOAh6xkjLi2K+u64wnRUkdag0Qec5PDti1sMk=;
        b=RAIdDiZlGGwfL4yElG25Q/FhyXHNmbfPB+gjlJyFJ3S5vgQtXb8VieOPI34KacLe2L
         +R8UFbTRsgVTbEf54v8EIXVtScJbRJYB/I+OJFmv5w+A6PBSfS7B40rEN++4poDUYZdR
         lr+1dd4iRe2sdBzLB/2gsmOIYJ6dR2QZyHBppnlod73hIO8HFOCy+8SA7vEZm2zuF/mB
         5oyBYgWLHmkBH4fZheIDwPacTBWK6wcbwz6PNf3JcnLf/FOUbVEyQzYQrtC/USaIS2jJ
         N1+50xmWoNepk0WkpGMBv9Olf54C1nulibWgDt2kH3DcnP2p1mU/+3xnNQ8zOi3H1lJT
         FQ3A==
X-Gm-Message-State: AMke39lcopZVUEbHM3IC4Qr8sYsIFYw5otSw6s9X+3k9dfq7rUJ9I6sMd4dcZPLDn9uBkw==
X-Received: by 10.28.15.142 with SMTP id 136mr31705954wmp.66.1489100030511;
        Thu, 09 Mar 2017 14:53:50 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id h3sm10007241wrb.6.2017.03.09.14.53.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:53:49 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 2/2] staging: speakup: i18n.c: Refactor conditionals in spk_msg_set
Date: Fri, 10 Mar 2017 00:53:44 +0200
Message-Id: <89a7e1067f4868fa5ef02ae94c32b6aff37b529e.1489099212.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489099212.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489099212.git.narcisaanamaria12@gmail.com>

Reduce the indentation level in spk_msg_set and remove
unnecessary return variable.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 44 +++++++++++++++++++-----------------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index a8326db..7809867 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -541,34 +541,30 @@ static bool fmt_validate(char *template, char *user)
  */
 ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 {
-	int rc = 0;
 	char *newstr = NULL;
 	unsigned long flags;
 
-	if ((index >= MSG_FIRST_INDEX) && (index < MSG_LAST_INDEX)) {
-		newstr = kmalloc(length + 1, GFP_KERNEL);
-		if (newstr) {
-			memcpy(newstr, text, length);
-			newstr[length] = '\0';
-			if (index >= MSG_FORMATTED_START &&
-			    index <= MSG_FORMATTED_END &&
-			    !fmt_validate(speakup_default_msgs[index],
-					  newstr)) {
-				kfree(newstr);
-				return -EINVAL;
-			}
-			spin_lock_irqsave(&speakup_info.spinlock, flags);
-			if (speakup_msgs[index] != speakup_default_msgs[index])
-				kfree(speakup_msgs[index]);
-			speakup_msgs[index] = newstr;
-			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-		} else {
-			rc = -ENOMEM;
-		}
-	} else {
-		rc = -EINVAL;
+	if ((index < MSG_FIRST_INDEX) || (index >= MSG_LAST_INDEX))
+		return -EINVAL;
+
+	newstr = kmalloc(length + 1, GFP_KERNEL);
+	if (!newstr)
+		return -ENOMEM;
+
+	memcpy(newstr, text, length);
+	newstr[length] = '\0';
+	if (index >= MSG_FORMATTED_START &&
+	    index <= MSG_FORMATTED_END &&
+	    !fmt_validate(speakup_default_msgs[index], newstr)) {
+		kfree(newstr);
+		return -EINVAL;
 	}
-	return rc;
+	spin_lock_irqsave(&speakup_info.spinlock, flags);
+	if (speakup_msgs[index] != speakup_default_msgs[index])
+		kfree(speakup_msgs[index]);
+	speakup_msgs[index] = newstr;
+	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
+	return 0;
 }
 
 /*
-- 
1.9.1


