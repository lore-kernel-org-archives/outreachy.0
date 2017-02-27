X-GM-THRID: 6390781740145704960
X-Received: by 10.200.37.21 with SMTP id 21mr5497455qtm.55.1488209789444;
        Mon, 27 Feb 2017 07:36:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.113 with SMTP id p46ls1049522otp.28.gmail; Mon, 27 Feb
 2017 07:36:29 -0800 (PST)
X-Received: by 10.129.67.35 with SMTP id q35mr2767951ywa.51.1488209789098;
        Mon, 27 Feb 2017 07:36:29 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h130si3161624pfe.1.2017.02.27.07.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:36:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so2102804pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LAEtjAQA09kP6Ev3g/+KhpMpPhvb2Qd7uhJx3EbuaZs=;
        b=Xzx5qQOsce4o29wRE7fRsF5Y/irPw+4y5WcTob0vWArBlZOAogtnu79bqBMmAqSsj5
         cW9XUuVLjSFLZOba1Bte7vSxWdKvW5psm3Qat8J70cgHoJTrjMRQZ9XBEaPlGZzLjux7
         4GzYoTZ6xSUuWbb6UrU9VErXi6iCmyD7kCWPCpEvaen19q5UeMUrohupWyXeDUa4zVEC
         9DKwDWPqpQ/+vxxVz+g4BSzstiyws0jJt2rPPBs2/sdXxPEo2YrBwTzfefqT0YnLmGzc
         8ygJ45X6MXbips06KlchbnYzbePu/JtV5dLAHokbRXGzbuOJ1R7/EA5wfcZ11l1a9BXT
         PEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LAEtjAQA09kP6Ev3g/+KhpMpPhvb2Qd7uhJx3EbuaZs=;
        b=kJeR9sWcyTspQqwzdDA3PoG2EqUFR509lFecwtpq3Kuj/GPh2X1dzFSISFoFmo8o6A
         dCMpWZX8/0PZEM6yycb73rwApFoKfPlHyhPobtpQW8Qia7uEFGgC2UJGfgVTKZFQA5Vw
         K2KH6sq61aIkNxuA/sV5UjXXMsh4oX7NuXaaTkQzCG/kwuZyISZQDoNS+XUIkRNJ0hE+
         harBbDDxDepIvjDB2WVUcqpE4u3RQGamsezcU9+Mfsj/In0+YRITWsgL97KtMD5CcljA
         VZLy8cmOdoyW9Zd3jLeF+6rgPUqsKgX0BqolozrTSuJBR4G1OwWy89zVZBujb82CARK4
         eEKw==
X-Gm-Message-State: AMke39k8xi9d+UvTf16UHtX15w0qObZHn6xwjEuMXAvCOsaBmIqofmZYX5UT7ll4mF5rcw==
X-Received: by 10.98.200.5 with SMTP id z5mr21941699pff.0.1488209788879;
        Mon, 27 Feb 2017 07:36:28 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a2sm31420556pfc.72.2017.02.27.07.36.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:36:28 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v2] staging: speakup: Clean up if conditions
Date: Mon, 27 Feb 2017 21:06:17 +0530
Message-Id: <20170227153617.21264-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line
---
 drivers/staging/speakup/keyhelp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index c373762..4d00bc2 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && MSG_FUNCNAMES_START + cur_item + 1 <=
-		    MSG_FUNCNAMES_END)
+		if (ch == 0 &&
+		    MSG_FUNCNAMES_START + cur_item + 1 <= MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
 			cur_item--;
 		else
 			return -1;
-	} else if (type == KT_SPKUP
-			&& ch == SPEAKUP_HELP
-			&& !spk_special_handler) {
+	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
+		   !spk_special_handler) {
 		spk_special_handler = spk_handle_help;
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
-- 
2.9.3


