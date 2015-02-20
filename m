X-GM-THRID: 1627576598528
X-Received: by 10.112.162.135 with SMTP id ya7mr21928lbb.14.1424474070103;
        Fri, 20 Feb 2015 15:14:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls194517wid.5.canary; Fri, 20 Feb
 2015 15:14:29 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr40888wix.0.1424474069732;
        Fri, 20 Feb 2015 15:14:29 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id by11si417583wib.1.2015.02.20.15.14.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 15:14:29 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id l15so6043462wiw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 15:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nprUVxs05SYVk2lKOyi2KzVgoRAGGlzCTVkuqBhIaMU=;
        b=hf819dphY7b1iFkeIwF/ITcZFLbuzw8TQiCKJ3yVfzqlWfVrH5akvUCHrrF4yiVHWw
         IF7CyaVSXRVoOuU72BYvjAaXG64+nuC6CZi7emUcv/+WKEa1Wni7TrE5RugN3GyWgn4u
         HTx5mFVmKfYLV67saY2f725A/usgpdFKREJldzl1U9lmUvg1mBeOs9tcRZYa7WRt8lsW
         40VWS5qalChSVJDHNQnAaSL/4UjsUOYvFLuc3XU6O1ThsPoHh4b6UT+jJOhEytmMZssW
         bcPZe4CmstuzbDWhLR1HTgCc4T0MokXGm7zn26k877ZW1JOMWUBPaUoyQTIbeaLLuBoN
         EJfA==
X-Received: by 10.180.88.234 with SMTP id bj10mr491342wib.81.1424474069669;
        Fri, 20 Feb 2015 15:14:29 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id vq9sm44137137wjc.6.2015.02.20.15.14.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 15:14:28 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH v2] Staging: speakup: Remove unnecessary else after return
Date: Sat, 21 Feb 2015 01:14:20 +0200
Message-Id: <1424474060-16367-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in files of speakup
WARNING: else is not generally useful after a break or return

Changes since v2:
* "}" was added and was shifted to the left.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 67 ++++++++++++++++++++-------------------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 832cf00..99e16ed 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -182,42 +182,43 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
 		return 1;
-		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
-			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key-1));
-			return 1;
-		}
-		for (i = 0; funcvals[i] != 0 && !name; i++) {
-			if (ch == funcvals[i])
-				name = spk_msg_get(MSG_FUNCNAMES_START + i);
-		}
-		if (!name)
-			return -1;
-		kp = spk_our_keys[key]+1;
-		for (i = 0; i < nstates; i++) {
-			if (ch == kp[i])
-				break;
-		}
-		key += (state_tbl[i] << 8);
-		say_key(key);
-		synth_printf(spk_msg_get(MSG_KEYDESC), name);
-		synth_printf("\n");
-		return 1;
 	}
-	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
-	func = funcvals[cur_item];
-	synth_printf("%s", name);
-	if (key_offsets[func] == 0) {
-		synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
+	name = NULL;
+	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		synth_printf("%s\n",
+			spk_msg_get(MSG_KEYNAMES_START + key-1));
 		return 1;
 	}
-	p_keys = key_data + key_offsets[func];
-	for (n = 0; p_keys[n]; n++) {
-		val = p_keys[n];
-		if (n > 0)
-			synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
-		say_key(val);
+	for (i = 0; funcvals[i] != 0 && !name; i++) {
+		if (ch == funcvals[i])
+			name = spk_msg_get(MSG_FUNCNAMES_START + i);
 	}
+	if (!name)
+		return -1;
+	kp = spk_our_keys[key]+1;
+	for (i = 0; i < nstates; i++) {
+		if (ch == kp[i])
+			break;
+	}
+	key += (state_tbl[i] << 8);
+	say_key(key);
+	synth_printf(spk_msg_get(MSG_KEYDESC), name);
+	synth_printf("\n");
+	return 1;
+}
+name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
+func = funcvals[cur_item];
+synth_printf("%s", name);
+if (key_offsets[func] == 0) {
+	synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
 	return 1;
 }
+p_keys = key_data + key_offsets[func];
+for (n = 0; p_keys[n]; n++) {
+	val = p_keys[n];
+	if (n > 0)
+		synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
+	say_key(val);
+}
+return 1;
+}
-- 
1.9.1


