X-GM-THRID: 6394100888766513152
X-Received: by 10.46.71.15 with SMTP id u15mr2040457lja.9.1488742625801;
        Sun, 05 Mar 2017 11:37:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls1335283ljv.35.gmail; Sun, 05 Mar 2017
 11:37:05 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1820712lja.18.1488742625303;
        Sun, 05 Mar 2017 11:37:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id 82si14987wmg.3.2017.03.05.11.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:37:05 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so19307757wrg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rz4+XVkj6Bu0QB1tmvCWOK1xRaXXjavBFl/7TEFVJnc=;
        b=oBkKGSeXpDzthFz9MDanPzfnGUUoj68GCmfD7iXoT8+cL6owEeJoQpCBsR8DJX009G
         a/WYatnk34/qtSYA7QhY3+2OaIDkwrsj2fiGw3uC6+vybOzn2EugPP7IcN5G+L6w38p7
         XALytPXJn/gAOb0gWD8noF8+3RdseQWpBJ5B+hB/8XUeM5o/xHoftyZbnvu7UqgBDglz
         zeymy+iQ0WS5EEzMpNgpIp78OfssEqAEptEuZErIs8IBD//tLgjlDQxCmFiFzHzwo1g5
         lOYZb3K89k8iKt/vlNdDu107SNLnz8uCF2ga7z2fGughrC2H733If1e0Y4/P2vJO3Jiu
         Nkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rz4+XVkj6Bu0QB1tmvCWOK1xRaXXjavBFl/7TEFVJnc=;
        b=WBiDbZeNLxNmeOkCVmey6J2FVKrcO9ndFCIWe8Pkg4xyDrrCROGtx4T3Wl1mmj8PFe
         JnnK6FyQo9e/JfkXoLCfFh9GkeM+a/rl8RihxlDPeZHZFcNpz/0zv6PnvchIEaF3MM4W
         HJovEh4SoUN3swxmyys64KZAh4HQ95inI4mxgx/bLBHEd0hIgDZqZAmBOsKv3e3a5ufs
         S9rJYlj8A17+4awyV3mEVwausA7DEhD2iY6/l5dGxwlAStZGAD2kXUG7ifI1AsqgpxSa
         EFCmlqn9U7roWjkQEbUgK00XFeXjATAHrOC02wLQa8RgQO27DRwR6K89LfgOV0OGSois
         prHQ==
X-Gm-Message-State: AMke39nHJtfjI2lR6vnQ3fLyhUUTo+vJuBdoMH5WslN+5avCNf+WtIMCtKvfjTcmLLUd9A==
X-Received: by 10.223.162.205 with SMTP id t13mr12292207wra.155.1488742625092;
        Sun, 05 Mar 2017 11:37:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:c85a:3772:cb0c:b839])
        by smtp.gmail.com with ESMTPSA id x1sm23908356wrd.63.2017.03.05.11.37.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:37:03 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/3] staging:speakup:keyhelp.c: Remove unnecessary else
Date: Sun,  5 Mar 2017 21:37:01 +0200
Message-Id: <20170305193701.20390-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the checkpath.pl WARNING:
Else is not generally useful after a break return.

Deleted the 'else' structure.
Deleted extra tabs which remained after the 'else' structure was
removed.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 44 +++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index 2ef7370..0e0efc46 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
 		return 1;
-	} else {
-		name = NULL;
-		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
-			synth_printf("%s\n",
-				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
-			return 1;
-		}
-		for (i = 0; funcvals[i] != 0 && !name; i++) {
-			if (ch == funcvals[i])
-				name = spk_msg_get(MSG_FUNCNAMES_START + i);
-		}
-		if (!name)
-			return -1;
-		kp = spk_our_keys[key] + 1;
-		for (i = 0; i < nstates; i++) {
-			if (ch == kp[i])
-				break;
-		}
-		key += (state_tbl[i] << 8);
-		say_key(key);
-		synth_printf(spk_msg_get(MSG_KEYDESC), name);
-		synth_printf("\n");
+	}
+	name = NULL;
+	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
+		synth_printf("%s\n",
+			     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 		return 1;
 	}
+	for (i = 0; funcvals[i] != 0 && !name; i++) {
+		if (ch == funcvals[i])
+			name = spk_msg_get(MSG_FUNCNAMES_START + i);
+	}
+	if (!name)
+		return -1;
+	kp = spk_our_keys[key] + 1;
+	for (i = 0; i < nstates; i++) {
+		if (ch == kp[i])
+			break;
+		}
+	key += (state_tbl[i] << 8);
+	say_key(key);
+	synth_printf(spk_msg_get(MSG_KEYDESC), name);
+	synth_printf("\n");
+	return 1;
+
 	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
 	func = funcvals[cur_item];
 	synth_printf("%s", name);
-- 
2.9.3


