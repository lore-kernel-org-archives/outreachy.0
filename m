X-GM-THRID: 6394452495080357888
X-Received: by 10.46.77.69 with SMTP id a66mr2730945ljb.11.1488824490946;
        Mon, 06 Mar 2017 10:21:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.193 with SMTP id g184ls782531wme.6.canary-gmail; Mon,
 06 Mar 2017 10:21:30 -0800 (PST)
X-Received: by 10.223.177.213 with SMTP id r21mr580994wra.11.1488824490124;
        Mon, 06 Mar 2017 10:21:30 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id l138si74595wmg.0.2017.03.06.10.21.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 10:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so15131050wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 10:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=g91qc5EGXcK8IhcJXqvFNl4bUaJNG9gzpt0Uee5j7JOrs173fImjZS8O0zoo6318K8
         7/unNsgRlI13AxInMOxG6W5SWhM2Tq7v4hluFQHOgTjrR8zbR10hqttcutE8CMm4lAC0
         XZPnJD3dID2IMjBfZsgCR30kCXUFlLpnLUNKflcLK+5Io27P+TQdZSVnFy6y3/7r/5sW
         tmcovx32pO4vxzzkTSdPxD2ZNC//PknaxwXYIb0GRU0kIsAaRuHfvbfpuHUMmAVT63Je
         biCEzFwnG+y7YT9Fgpd+1nENzLOjgcsoVs/8xl9QlFFH3M4sB2m4VtsNHtLoN4i4rfkh
         fgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=e35AGbyL0ORygPgXbpDfQxMUh4ZmcTZEW4nhdjlxAMZIDrtKTk20O20xiCgbpJY0WH
         cSrclPzCNa8FfGoGqAEyaFtH98TBgjIJuJBXPkRAruVNVUvB0CTWY2J4I+kho1wEs1xV
         fYA1HFPAkELcxzuJIzjfLvP4TxJid2W7wzSK2eYJJT5N6JpFwNH7SECrml1vDwO4gede
         HM80Siqt8Oy2Y4woVzHhvnnicK2Tmpnx3aAsylih5bX6CRdSU8ZAvA6UtT8pII0RshVb
         bQe1T6swjRag7XUNXAAd6soCcLWuJtzKWnsrH/GFeCmdlHdNhaeHJz8B6vTQa30ETlJi
         fFIw==
X-Gm-Message-State: AMke39kuRhcx6zGzB8zmQNORNw2bRrYWtA3HUCI3AoAdEdLbeho9LIPEF0a7+W00dFqYgw==
X-Received: by 10.28.145.3 with SMTP id t3mr15095889wmd.47.1488824489947;
        Mon, 06 Mar 2017 10:21:29 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id w97sm26572136wrc.20.2017.03.06.10.21.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 10:21:29 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 1/2] staging: speakup: keyhelp: Add spaces to align
Date: Mon,  6 Mar 2017 20:21:26 +0200
Message-Id: <20170306182126.3043-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add spaces to fic the following checkpath.pl issue:
CHECK: Alignment should match open paranthesis

Deleted a tab and addes spaces to align the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..f5156bb 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -117,7 +117,7 @@ static void say_key(int key)
 	}
 	if ((key > 0) && (key <= num_key_names))
 		synth_printf(" %s\n",
-				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
+			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
 }
 
 static int help_init(void)
@@ -182,7 +182,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		name = NULL;
 		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
 			synth_printf("%s\n",
-				spk_msg_get(MSG_KEYNAMES_START + key - 1));
+				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
 			return 1;
 		}
 		for (i = 0; funcvals[i] != 0 && !name; i++) {
-- 
2.9.3


