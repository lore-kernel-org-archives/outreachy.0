X-GM-THRID: 6395412283312308224
X-Received: by 10.46.80.1 with SMTP id e1mr1894651ljb.10.1489047985299;
        Thu, 09 Mar 2017 00:26:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.213 with SMTP id l204ls95364lfb.9.gmail; Thu, 09 Mar
 2017 00:26:24 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr1687266lfd.23.1489047984759;
        Thu, 09 Mar 2017 00:26:24 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id b186si1994930wme.1.2017.03.09.00.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:26:24 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so6972275wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 00:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=23PemfSNkhLrqV0NBUz/1l9GYwWWoFCVZOGEGEHKmF8=;
        b=IlpdqB+yu8DImuc0YxV+kqlUy9qDbO5jaNklntlTrJOdy5GrEe8eamvvjpAzFRut0R
         ygaLBEhOluIy5UfMtUJhOU0PBwqdGiAV1unaAN9KPkjd4ezIR/3nNWCIpcy5fN52Y9LK
         mXpdJqDVzTIHqH28scdFYUOl3MrwlEAZoJb8Xxu7hWjHCjASjYypG0ZMEOHw0WaFYvrR
         juCdAsHMh7YyMU23mPWzF9S2ExwiR+pAG09mmP0F0R/iGr+3nHk21IDeibscxnrJxhmc
         +btzElYqworQmIfrtw2bV8VKK0NAcWM/KOoW+cNx/zC/rvz+iBEfl91KHVxzlWTnRTXF
         OoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=23PemfSNkhLrqV0NBUz/1l9GYwWWoFCVZOGEGEHKmF8=;
        b=lEODsKlcJMRIdW2angMMmVk8otlHZ0o8lvYeC2HYrtAHJ7WXPjkukXo4FN3VQxzfZh
         cnnhoZF854fCjrHzKkrDQcBFmmX8yyHYFNe56/AxI1CbSqmzkpxvksSnL1eZIpBHA0P1
         gXLLYqZPkhskaDqLFbaaMdm0VuSRBpi56DKRv8yXZ005xD7e1p5Lty3SSqKWeVIQwCSX
         Mz/UnvPCQu1A/geRpWjKXlmuAK8K3kkPDXnPdb7Jpp7sQBkQ2ANoiBI7zjDJjutcFUp6
         XVxofdMmvNFccMdjeyDhMzRg8pdyZuWnljxQJD5denzF7HuSJwEb4nf9/T9AkeYImlJD
         wPTw==
X-Gm-Message-State: AMke39nD9jqPeitgeaflVFfXNuM8MymUFiaKBYTfDPT7daAgaCqcU9kVzIye7/5OKbKuTg==
X-Received: by 10.223.177.18 with SMTP id l18mr9551132wra.96.1489047984540;
        Thu, 09 Mar 2017 00:26:24 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK.precis.pub.ro ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id j34sm7250304wre.7.2017.03.09.00.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 00:26:24 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/2] staging: speakup: i18n.c: Refactor conditionals in spk_msg_set
Date: Thu,  9 Mar 2017 10:26:14 +0200
Message-Id: <2f91d0d2b5d05a6be6191b3090507106257ae05a.1489047172.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489047172.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com>

Reduce the indentation level in the conditionals in spk_msg_set
and remove unnecessary return variable.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 44 +++++++++++++++++++-----------------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 00ffa4e..a5b343c 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -540,34 +540,30 @@ static bool fmt_validate(char *template, char *user)
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
-			                  newstr)) {
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
+	if (!(index >= MSG_FIRST_INDEX) || !(index < MSG_LAST_INDEX))
+		return -EINVAL;
+	newstr = kmalloc(length + 1, GFP_KERNEL);
+	if (!newstr)
+		return -ENOMEM;
+
+	memcpy(newstr, text, length);
+	newstr[length] = '\0';
+	if (index >= MSG_FORMATTED_START &&
+	    index <= MSG_FORMATTED_END &&
+	    !fmt_validate(speakup_default_msgs[index],
+	                  newstr)) {
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


