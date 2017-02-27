X-GM-THRID: 6391810462293426176
X-Received: by 10.129.62.39 with SMTP id l39mr1293740ywa.61.1488211651813;
        Mon, 27 Feb 2017 08:07:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls5915932otb.24.gmail; Mon, 27 Feb
 2017 08:07:31 -0800 (PST)
X-Received: by 10.157.40.36 with SMTP id m33mr2378833otb.49.1488211651298;
        Mon, 27 Feb 2017 08:07:31 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si3416367pfd.3.2017.02.27.08.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:07:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s67so1495201pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 08:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UCMSTKpx7GMXhd2n7uaHhcGUwXipqvJmcQ2U0wHK/Cs=;
        b=dV/1Mn747/OzsrevXbTg0jc4o916GWtW9JZR9qA1ktHgiJFQBlhlmRDKXVdl8vWoR2
         DWAgNDPBjD5v4b7B+QnJDyeZ5LkrWI2opANd9Qrc462OQFWc1gY9xQMe2G3NWwkiZaYY
         3Vu5a7JJ0bK+sJ0VnZtBWjh/0VksccRxKvcUSTLbc6CoDR4MS+AuYQ+zZuNFukt8e+52
         NsOrMJ92BKGHoStknPCHCZ4GBhLLsNJjRstK3w4OQ6UWwDENTUv9qR/y/48An3zN6xwc
         aOgYDvo/y12OTa+Dn+MiJjkexxufgsRaHl1jxhbspuQKUn9RKkUFAyLx4s8zvFz8Nljj
         jwPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UCMSTKpx7GMXhd2n7uaHhcGUwXipqvJmcQ2U0wHK/Cs=;
        b=i94CkfudbWirjYiOenAdhzUl6RT4U4AK7Qe43HgJEaZJdyqbQUnQ4HpC0TEoyDTmtg
         saKikqQX3sE8wUdaH7pDoitWI6xcTBqBEQdZZNzWtyagY346MwmesZ6haB9+uqGxXiJk
         HYpLltMH9efpv/xqu4eRjKSevfVOYlOLrJaCagw0a80qim73v87bo9agIXm+Sdlywjk7
         sLsLGvl+qAXov3SruXZIIlf1hU5Rnx6Nbm9tO2gZRkmwF9btH90qTC/vReZX3vr5X/WZ
         WzIS+QEZK9PfyXoGCXVZIwtqVkdO6n+Z744vGV2ePdVfhncVzNV9Cd+eNLTMJJGIiAQB
         lnGA==
X-Gm-Message-State: AMke39m50jBRdAP/+MzLWAVlH/ynfQjQetDJJvkLqUKnFEezTRgrvUlv2+P1OQAnp/vtwQ==
X-Received: by 10.99.101.131 with SMTP id z125mr21491508pgb.218.1488211651101;
        Mon, 27 Feb 2017 08:07:31 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z4sm31630843pge.49.2017.02.27.08.07.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 08:07:30 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>
Subject: [PATCH 1/2 v3] staging: speakup: Clean up parentheses
Date: Mon, 27 Feb 2017 21:37:19 +0530
Message-Id: <20170227160719.24001-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align next line of print statements
to the right of open parentheses and
remove extra parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..c373762 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -115,9 +115,9 @@ static void say_key(int key)
 		if (state & masks[i])
 			synth_printf(" %s", spk_msg_get(MSG_STATES_START + i));
 	}
-	if ((key > 0) && (key <= num_key_names))
+	if (key > 0 && key <= num_key_names)
 		synth_printf(" %s\n",
-				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
+			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
 }
 
 static int help_init(void)
@@ -164,7 +164,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
 		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
+		    && MSG_FUNCNAMES_START + cur_item + 1 <=
 		    MSG_FUNCNAMES_END)
 			cur_item++;
 		else if (ch == 3 && cur_item > 0)
@@ -180,9 +180,9 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		return 1;
 	} else {
 		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		if (type != KT_SPKUP && key > 0 && key <= num_key_names) {
 			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key - 1));
+				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 			return 1;
 		}
 		for (i = 0; funcvals[i] != 0 && !name; i++) {
-- 
2.9.3


