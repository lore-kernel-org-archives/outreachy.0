X-GM-THRID: 6394683262663393280
X-Received: by 10.46.32.216 with SMTP id g85mr2356803lji.8.1488878220131;
        Tue, 07 Mar 2017 01:17:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.66 with SMTP id h63ls1608904ljh.5.gmail; Tue, 07 Mar
 2017 01:16:59 -0800 (PST)
X-Received: by 10.46.7.80 with SMTP id i16mr3026140ljd.5.1488878219244;
        Tue, 07 Mar 2017 01:16:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id e72si272915wma.0.2017.03.07.01.16.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 01:16:59 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so17689137wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 01:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7rwhY9IxUc+qcEg1FrrcKmFCb5fJyxnrxxEGVO7hL4k=;
        b=dImFR6kLR3IvsV949MzRicpFtp+rUoVK7uL5fdz+ER51/Qd7Mfnfilw1DQqaGmbkIM
         IIoBg4xNJSW2g8dpAf/vTSoKHEQeoTpQkV9JfQEEM4rZq41FHWda8t2EC2BRp8pcgALg
         wHDuSrasRSLCIwJ5GHMcmWzCs1pJEyMWlL3W7mYL8qXvGWiHOd+WV3XR0Qio9J07iwwD
         OoYUW+0LcfiBeqo75xBOzcVg1vtdIm8BROUO9emlZuEyEJsy2xDwA+DZkkawbmxrxjeX
         J2nChfEWQWVS5qn9ndmcIvHsjBoS/3tQzs9Z/OCaU5eiBja45KyjSG/ohPX2KGKJMJlt
         9K0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7rwhY9IxUc+qcEg1FrrcKmFCb5fJyxnrxxEGVO7hL4k=;
        b=ERwNzMj0AZ1lZpDkxDmDG1GyDGcdux7sQSufgqbqSn+ov72PheJQGKtDMtMwkwt75Z
         OBI53h8v2i+OIyuP5Mulv/VyD5lxyN9Xj6LQOnRZUwEP41SNju36kAb8jCdgx0ygDyVQ
         PCKpkY+d2quyfLCwwGCEgMvxFRomvfeyKRhXtIhq+LVMjMTMGWkr8FqijWVkaN4EcVwh
         7trJKJtzRI0k8MYjlAzGg0E/3c4DvoRvQPGIHdzRlE+brNha/1o7g0Mmq3joLraZI86X
         TV0Ld/00fpQy4IlO8ziRa3h78bhxPW1E2KjeMlRVuc6Z5hCUApEXmbXXCmryJcmUQ/34
         ulQw==
X-Gm-Message-State: AMke39nXAY+fC63soke8ea7bEirbitWjUxODDPXcu31NcoBEKPct3b+5RaebwoGge+rZHA==
X-Received: by 10.28.130.212 with SMTP id e203mr15937794wmd.104.1488878219012;
        Tue, 07 Mar 2017 01:16:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id d1sm30332732wrb.62.2017.03.07.01.16.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 01:16:57 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: speakup: kobjects: Rearrange if statement
Date: Tue,  7 Mar 2017 11:16:46 +0200
Message-Id: <20170307091646.13717-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the checkpath.pl issue:
CHECK: line over 80 characters.

Put a part of the if statement on a new line to have less than 80
characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index cd8eb12..a032932 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -106,7 +106,8 @@ static void report_char_chartab_status(int reset, int received, int used,
  * This is called when a user changes the characters or chartab parameters.
  */
 static ssize_t chars_chartab_store(struct kobject *kobj,
-				   struct kobj_attribute *attr, const char *buf, size_t count)
+				   struct kobj_attribute *attr,
+				   const char *buf, size_t count)
 {
 	char *cp = (char *)buf;
 	char *end = cp + count; /* the null at the end of the buffer */
@@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when text is sent to the synth via the synth_direct file.
  */
 static ssize_t synth_direct_store(struct kobject *kobj,
-				  struct kobj_attribute *attr, const char *buf, size_t count)
+				  struct kobj_attribute *attr,
+				  const char *buf, size_t count)
 {
 	u_char tmp[256];
 	int len;
-- 
2.9.3


