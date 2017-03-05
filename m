X-GM-THRID: 6394100250996375552
X-Received: by 10.46.1.12 with SMTP id 12mr300354ljb.30.1488742477365;
        Sun, 05 Mar 2017 11:34:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls1254248ljd.17.gmail; Sun, 05 Mar
 2017 11:34:36 -0800 (PST)
X-Received: by 10.25.160.141 with SMTP id j135mr1097929lfe.18.1488742476966;
        Sun, 05 Mar 2017 11:34:36 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id f7si798978wmg.3.2017.03.05.11.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so2659954wmg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=HHJCc0sJd0u0i+NUIb9Dk+p4RjPwdSIqT+1NxCnof9FyEEG4R9EPl3tfPd3gC3KLdZ
         ZupE4susz0vccIB7p6L/LhuX2BRs74S3Sasr39NAaa61OXTQ30ykYHC13+bFiWu1hh/e
         FHEERqkZu4ZgFO291Nn/X7YjVqf6rUmrTma14qLCfmhbyf+zWCEuDuBaKNkQpvsMrDAT
         On3y+2/pOYsYJT8AVF8F5nT88bcO6zAFK+Ei29cnNKoDiDtkd/v8us41oItjxK8B2HYK
         NO/pPzZVxsJ77o5a1oe4CBsu8pWFQ91rw5Ro8QOX0JxrlJfRK/QdgbVsqvyeNwfQtS34
         8GoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cv6wIGaYZo7WO3DaRPa7GzprHuwbcJx8DuYjqNQ8TLI=;
        b=YtDUthIS+5GsM3xXIEw3h3yW2Ts7o5gbCPQONnoniNfs2nvwZ1qT6wCcWef3z8+C5V
         VYr25Pbw3EzyWBaH8caJa/S0u0U35HLF8YKxiPFr8LPCw71t1cWE9SxrMb0WL7s1jT07
         ASA8Ri0PQGOMa2vZkSCF8NsTpkfVAQgDTVdlhMvSgEmdv2SnYVRMpqZE6jsol01FDPtc
         x+52j87XIjQqV7eAJ6BIPoICNgz5e9ibNyUHu3di3eEVoXx5VedZlu9H13zGsRqEn+v0
         k0t1QMNNZvrWnQIqfuDgiUGUSFyICo0RtmZ1m5aaX+rPuUCsepF8NUrqNF4qMSeq/aCe
         HUOA==
X-Gm-Message-State: AMke39meYpnO9sJXiwn7xldKfkHMJiuwC2GOwtT+RftAuqZN61z0hofyNpLoEbeWFABLoQ==
X-Received: by 10.28.59.193 with SMTP id i184mr10956212wma.97.1488742476783;
        Sun, 05 Mar 2017 11:34:36 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:c85a:3772:cb0c:b839])
        by smtp.gmail.com with ESMTPSA id s18sm11921827wmb.18.2017.03.05.11.34.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:34:35 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/3] staging:speakup:keyhelp.c Fix 'if' continuation
Date: Sun,  5 Mar 2017 21:34:33 +0200
Message-Id: <20170305193433.19962-1-diaconita.tamara@gmail.com>
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


