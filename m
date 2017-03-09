X-GM-THRID: 6395412283312308224
X-Received: by 10.46.1.12 with SMTP id 12mr2714781ljb.30.1489089224823;
        Thu, 09 Mar 2017 11:53:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.26 with SMTP id t26ls112380lfd.48.gmail; Thu, 09 Mar
 2017 11:53:44 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr2476763lja.18.1489089224286;
        Thu, 09 Mar 2017 11:53:44 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id e72si1146765wma.0.2017.03.09.11.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:53:44 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so9144579wrc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lbfQsxb5fdsp7SlucnHGf4ARP3XYusSdEcmB0DZppCU=;
        b=fq/85XnjfsiSPi6CGYV8OwE0kVTuroCLUSMREVl8S4caYTT4FyAQIl2eZeiPMhObQv
         mFrM+vvyQb5dRW3PVy3uy/iiQs86HiPd9IbPAQkxKHbe115WOl1/3MVPQkCMS7zmHgaK
         at0LuNwQnfi6y/Tqwx6yMgClzR7ZFAe2P35z/OEzEiHmqToSMGAyULnre3Cda+Jv8iho
         pLQk9OdI4OOXZzd7aoEKo26m2qDmWi/qqEwiybAe0f5VTzydbrVH2RMrYGeFWvdafMl0
         hDmUO79a/CIeZGuFWRN7gCY/iuWVYCr2rjMxTb9t4cqLz79WtL4dwJ+OJxf+eqQGw/st
         TsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lbfQsxb5fdsp7SlucnHGf4ARP3XYusSdEcmB0DZppCU=;
        b=UyY8KhjR6PphUiQaJ+S1JauaIfG/mzlZXYdSN06Cwa288LWLb+MW73KJkN1byyBAw7
         N2VFwMuVqLU2ClTTPYPO2F/IqLEwDYClMIqL294Slu86vkLD9+iC5OCOYOMCR9xV7EXf
         EW+0r88s1DzMR4Q9J6jkxlYeHJ9GTcRA4u6RgyhU2BdJDric4om72q7gaN4oBwnynFIm
         0yGr8mFkc5djUTErnkaUqJk5mgPIo80vLzuHnm+xvVDTX8aSUbPEG8QhYRaP9ngcVevs
         SX3au60PH0nX3uYzNiSGy/hUeXVW+qioijzpn5sUHjvXq1iqkVqlcmx/DC/mqRm8BoiB
         l/BQ==
X-Gm-Message-State: AMke39lKf5lDDWxvJ0zomP2DAjssmeWPcz1B2M/2VRez+x7Wfr25e7VIwvfzWZ1Ltdvjmw==
X-Received: by 10.223.177.18 with SMTP id l18mr12514381wra.96.1489089224096;
        Thu, 09 Mar 2017 11:53:44 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id i203sm9992896wmf.12.2017.03.09.11.53.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:53:43 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 2/2] staging: speakup: i18n.c: Refactor conditionals in spk_msg_set
Date: Thu,  9 Mar 2017 21:53:38 +0200
Message-Id: <d6c314abf11ac3d83332c5cd56b2b65babf1c25c.1489088501.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489088501.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489088501.git.narcisaanamaria12@gmail.com>

Reduce the indentation level in spk_msg_set and remove
unnecessary return variable.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 44 +++++++++++++++++++-----------------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 522d719..180dee3 100644
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


