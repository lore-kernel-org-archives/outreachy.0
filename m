X-GM-THRID: 6394099894364143616
X-Received: by 10.25.193.213 with SMTP id r204mr1575108lff.24.1488742393443;
        Sun, 05 Mar 2017 11:33:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.196 with SMTP id v187ls277427lfa.52.gmail; Sun, 05 Mar
 2017 11:33:12 -0800 (PST)
X-Received: by 10.46.8.90 with SMTP id g26mr996398ljd.16.1488742392641;
        Sun, 05 Mar 2017 11:33:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p144si221723wme.2.2017.03.05.11.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:33:12 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so10692812wma.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=Ina0XxB13oloARSQQt7N11Alw3xp5GYS6R7etaJ3R8sHcHdn4ofGxalM/wxdf8BhSZ
         h6YExS70UlSSK5kLOh4t2aJoM2UHzxV06BCJddsVgMkShhMV0XHTn3gjxpw4iZQIbYNj
         yZ+fbBK9ckwbYhpXc7ez6xL8cUE1O/YBEuTGIhNyhImyW96kT5i+rr3WftcfnMvpvmfj
         vGUDnEmAz+quEGE23mH9CnOk+gaHYUSi/jrdP39K8kJvNiIa3cYrCXLDqOCU1Cgnlnmd
         2m0MRR76amdbCWsczdGyL9gQqvpEaW+NWABT8g8eumWz9VgH+0URElaqk9QFexVYDWmT
         lEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=q/MaV2e8RU6kLx49tXiz9V7kPGQKifqKhhHfp0Q4gJlPAtyqpTBm2HJgy8eoj+mYSs
         tV1FmPWY3rfS67D7XV80FVGzqw3x9zFL93MvHPjGcs1Wp9yWyb3mv6cUz4RbRjlQs/p2
         FxXkaB+iRdro2eoVLZq0ahdv6tDcIpYsbsIb1iQkEFQL2VHooVdih7W5dnpojLzV6fgT
         C4CFTb056xCcT5+ilfWfuFjzKmJEpBIopfHR/hlvb8O3VLMBtCKiZwsmvjqXx28dKNRX
         ZJFLP/TkxnVfVbBJcQ1SIiba8EIbr1wZZ2yLLuGf3HD7asdx3zHaUzTiKIE1VxPv3iGY
         152Q==
X-Gm-Message-State: AMke39ls5ynfz1qucXGXbAPlQ2OYiOL0jdT2udsrgSrGcf7eRagah94CiUJ0AmXFAcPHcg==
X-Received: by 10.28.72.193 with SMTP id v184mr10871049wma.105.1488742392399;
        Sun, 05 Mar 2017 11:33:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:c85a:3772:cb0c:b839])
        by smtp.gmail.com with ESMTPSA id q66sm11843935wmb.28.2017.03.05.11.33.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:33:11 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/3] staging:speakup:keyhelp.c: Add spaces to align
Date: Sun,  5 Mar 2017 21:33:00 +0200
Message-Id: <20170305193300.19697-1-diaconita.tamara@gmail.com>
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


