X-GM-THRID: 6390781740145704960
X-Received: by 10.157.18.241 with SMTP id g104mr186409otg.9.1488211791893;
        Mon, 27 Feb 2017 08:09:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls2243789itb.21.gmail; Mon, 27 Feb
 2017 08:09:51 -0800 (PST)
X-Received: by 10.99.167.5 with SMTP id d5mr6449610pgf.127.1488211791181;
        Mon, 27 Feb 2017 08:09:51 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si3262527pfk.0.2017.02.27.08.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:09:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so1502241pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 08:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=e0KVCQ9SAnI/YhKYVWed52L2GWkNutaSxAOo6zjsEiIetHTUKmyqjrPS8JzWl0bMt8
         xGkKs+46MYQs1Z6gaCux+SxP+ig4GihY7wrTk0zvCvgM93PcvmnICieNYiPI/JB5kFbq
         pKbkArqK6dSBLNIp1mu+HRtQwyjoGaTTJzjOSZM8eNaYHpDkAl1kM8yMlaFTa+gchbTZ
         va+G1hNIxbQJDS87u3hie+ofj6YiOcqcjnpWRV7zhJAwV4mRn5ET5ysqd+HSXSiH/8xU
         ENOTtri+e1Hjo/LuMw2IofxC2oXnjlKbBoiuNur1RzunVtOo85rnxOM7DEGtBG4lHOjA
         kiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GezZ95BzTLpcj6dLFumzFM6aJp2iXh0WP9xRIA8XgCU=;
        b=BxNRFuOgLekQdxIZVGUII+BA78STDYjTMzTU53+9jWXnXaO8sJlpNqXJe2I2ckx0KA
         /lvrSU3Nah7+v3tfva5HbQB2t4rPUOO837WFxzRCPzs/ljHCAKykcTcSU2aW7AZeuHE8
         c7GVaSiqB5AhPKjiJXtkvmfjckT1f4kPrNakPu+5io6K44DoifYE+tese8stiFnL281k
         LkDAunyIKYZ3orEAAETZJqa2teLOlN0DuUeYMqnKbK/T+YJMov+Fxb2mSgWjPjH3k5DE
         Y7XguZ769/yjasD4aPvq1Q0oR2W55vvoK4lP9pipx8+oqMlvh2kP/6+4z7Td5OLKA3OT
         RMLQ==
X-Gm-Message-State: AMke39l7a3+pIXWGAhWY7gu/X5y6kcUoal4H/GdQ8lroSrLQtGcJClrb26vlBWO2Fv7gMw==
X-Received: by 10.98.94.2 with SMTP id s2mr21637057pfb.133.1488211790942;
        Mon, 27 Feb 2017 08:09:50 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p66sm31532205pfb.88.2017.02.27.08.09.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 08:09:50 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v3] staging: speakup: Clean up if conditions
Date: Mon, 27 Feb 2017 21:39:40 +0530
Message-Id: <20170227160940.24674-1-sreyamittal5@gmail.com>
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


