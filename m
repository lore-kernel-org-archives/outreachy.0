X-GM-THRID: 6394452495080357888
X-Received: by 10.25.196.68 with SMTP id u65mr2617292lff.0.1488874966786;
        Tue, 07 Mar 2017 00:22:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.135 with SMTP id q7ls166464lfi.33.gmail; Tue, 07 Mar
 2017 00:22:46 -0800 (PST)
X-Received: by 10.46.84.69 with SMTP id y5mr3202536ljd.21.1488874966398;
        Tue, 07 Mar 2017 00:22:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id l138si207696wmg.0.2017.03.07.00.22.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 00:22:46 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so17436477wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 00:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=k6Es63UC3qzD5rhw8/3+cBqHyYCxk1oeJkg04nv4aEC3WQxnS05ZVUiYX1YT3GTrQ+
         XqZESLc474C6o0HFq4L4SN8gsIMfv77/r4jnF4RcGEeLQKymLCWbKrpnROIhEVJjNKOo
         7f+TWGoDws1MG7eLSc9kTqctFguAklXj4ChFwakw1pI3PScgb3X9vUqH095fDvBk0GjR
         KpB2LT6Pls9TINV9BOZFSLnozibPj01W6k5n5K/eUitFRrzbZWcZVIdjywlQvd7LdZ5H
         i7iqBjsx5fqBz0Q6nfw65t28UwHwZR0fumTNJODefO4iB4iGKMrNeNmBofAwL3VdanaU
         wIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QnzVBDXZv+EUE/CSFaM5jR1z7qQx1l7UM5riq/d4TzU=;
        b=mF7b+2gfOd1Dtn9XkgXPkX2iyAe9rNTCUINtvIKGHCe1rC4G0I0/H2bovX3MVjoEZn
         Oo4WxxllH+buGUXtz4ORgdEqo9p3EGln/GGvuxJyidMazJea1nm4hpYk73bCSRG9qUn0
         +4Q6qMgzWj8HrCTQDpbhIQletsvX89q66jWoiC+rxDb6vfcZg9HN/gOt5iu6GEz/Mmh+
         Fs7BtEI+T7X3FfiAv+wNzDNBu5NHrDTVuwPiCvlqJvbSCP1LDDTCJLVhWACjfuW0kiI0
         Jadpl3Qhw05zlP/PCCVrUnbXOT4nsku53cchlXTSbPeAfs8XdEAwOs12whGsRy/vwQ/L
         kt3g==
X-Gm-Message-State: AMke39ltgIbg7ycTgQ6/Gsq8jC81s4NTC4hFiL4C6843F5xQ0rnXy9bD2BCreYIH6nukuQ==
X-Received: by 10.28.203.197 with SMTP id b188mr18152273wmg.110.1488874966197;
        Tue, 07 Mar 2017 00:22:46 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id x69sm17931119wma.15.2017.03.07.00.22.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 00:22:45 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 1/2] staging: speakup: keyhelp: Add spaces to align
Date: Tue,  7 Mar 2017 10:22:41 +0200
Message-Id: <20170307082241.13079-1-diaconita.tamara@gmail.com>
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


