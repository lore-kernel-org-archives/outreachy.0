X-GM-THRID: 6390781740145704960
X-Received: by 10.36.53.212 with SMTP id k203mr4395664ita.30.1488210230879;
        Mon, 27 Feb 2017 07:43:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls12423695otb.8.gmail; Mon, 27 Feb
 2017 07:43:50 -0800 (PST)
X-Received: by 10.13.250.197 with SMTP id k188mr5946757ywf.167.1488210230502;
        Mon, 27 Feb 2017 07:43:50 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si3400527pfd.3.2017.02.27.07.43.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:43:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so1420774pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=XbT1Yyrd+IlK1d5mMKx3nla17dbq0bUo8Xawc3DHpsIV9+HIAuWbYmKHczSl8eESG1
         oIE8YVQnWHhyyUHaXbf9fKN4CO8I7FKdek7GDNRyTaW04yN2lYRhNakjablxqbtWY4l1
         6rZo7DiXSRezH4NYTtweQvWb1cngMVtjmQK1sRTkWNV7hbeHg1+4h/L7J4lvmQOoJ38E
         FCSIVjdpVQQImOx2NsY5Q5KN/ZiRgzIaVPoygdaXiOT06GOwT5lVVGlxrZxRRcO4W/Sn
         t87+3enOCcPhOx+ULv9ASD3zNOJamyhnet9xymhHfMYv23fdHbLLGyj6awt/PfzLU72x
         Edug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=kh+8HSulNplYU5mnokTYT6/7CK8yjq30i1uZ7glnWwP++cKCqzzNNqLLFN0zOZ0DwZ
         PkSZmS0HEoAVhsSMlKOTbfomjfIv/QtL6Btnt9Hlqyy7GF9rGsBdVMyx2JWgwvJrChUw
         3LRW7k/HfE2bEFw1O9J/lIxrcvXGgdoRsEE5Q2AMukhWLcu5YR4yfCAdQqzz9SEcZ1y0
         dNVEmKgb3J53xH4n20FPP+8owlRuzMzjvdgcBA7uzyfz7GF5MDz3H5OcY2ggXtNOSIma
         Rcd/e1p6Q07/DdHg9m2goE+a61mH1Ua95TRHS7YolJySvU09SdSFWGWt1W8AwqUP8EnF
         3NaQ==
X-Gm-Message-State: AMke39m15I6StI+eI27ae9HPOXL0EjisN3DAFmOO2xGKNYlFACbS4bkWbeMYtqnnWXCUcA==
X-Received: by 10.98.220.200 with SMTP id c69mr21491882pfl.60.1488210230296;
        Mon, 27 Feb 2017 07:43:50 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c2sm31475573pfl.61.2017.02.27.07.43.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:43:49 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v3] staging: speakup: Clean up if conditions
Date: Mon, 27 Feb 2017 21:13:38 +0530
Message-Id: <20170227154338.21940-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

---

Changes in v3:
*Correct placement of patch changes

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line

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


