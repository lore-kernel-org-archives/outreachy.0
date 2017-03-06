X-GM-THRID: 6394452629785673728
X-Received: by 10.46.8.90 with SMTP id g26mr1775006ljd.16.1488824521945;
        Mon, 06 Mar 2017 10:22:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls1509567lja.26.gmail; Mon, 06 Mar 2017
 10:22:01 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr2010697lfb.27.1488824521396;
        Mon, 06 Mar 2017 10:22:01 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id h198si76906wmg.1.2017.03.06.10.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 10:22:01 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id n11so15133766wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 10:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=bMH+e6C2it7+Ea5rbdAgedvMD6tP6CAbOmRfJeckmkuAiY/nuG5s4Vi5+Tm1PKzr7p
         lQ1u2X9lADXQOp85vqH7uRqPi5oOZkh5rJ+ViXK5IiwpMBilMcg8CzXhWQ/I/T0R+zac
         Kj8ftXgM1CSdQIw1PuDlE3CyN/c4YQJB0EVjeLjMx3LO0vGqNOt8NHqXSj326U3PS0KZ
         fBF2a1CAH8qhQRynNz0TfpPlJ6FiRQROClr1wFoBRiCw7jgbR+6egiKHLyxp26G97wZ2
         kg5yLP0MlOleVZNMlkDA8EQjtdTIgAuDPw/SYfjDB3w+xETRM64dUiA/335BMKhCwpkf
         mN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=gaLUQqLgN/L3xuT7XBQEt5NgkI4GzVk1+hFwz6etmsNVO9yUce8PpUBXGiwtxej34n
         aNaxPFeSP/0X86AK6j7xP23NjLxUIIotGCFx9CWpWmcGMrqW4TJm5hjn4g842fyRseJJ
         EuzZqczMCEl5ZvjuVhSWVd7pRRJGBJ83JrJV9teEfBFd1L5ifRzJUXIk9rSMAy8TiWMR
         rwuAEKcgtqf0iojsaPRb2brCdVpLQR11lHaDuQL3KNYWv3hvgRhqGpXuSPxL6XBQTv17
         f9WjhAfUBMphrHTeenKlB9OhgGi+iPRnL+iuJaXJ1DNEv3y8G/+lcVUSAkU8DWUrpgsh
         fZXg==
X-Gm-Message-State: AMke39loJgz3lzjrZ7V9Nt6rNnY3E5SSuU2jP3q53CZEoTAUVUuzjMz+N9dkR9BUuDwJVQ==
X-Received: by 10.28.180.135 with SMTP id d129mr14260399wmf.135.1488824521191;
        Mon, 06 Mar 2017 10:22:01 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id s26sm27957506wra.66.2017.03.06.10.21.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 10:22:00 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 2/2] staging: speakup: keyhelp: Fix 'if' continuation
Date: Mon,  6 Mar 2017 20:21:56 +0200
Message-Id: <20170306182156.3092-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the checkpath.pl issue:
CHECK: Logical continuations should be on the previous line.

Removed tabs to make the logical continuation on the
same line.
Added spaces to align the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..2ef7370 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		if (ch == 0 && (MSG_FUNCNAMES_START + cur_item + 1) <=
 		    MSG_FUNCNAMES_END)
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


