X-GM-THRID: 6390781740145704960
X-Received: by 10.31.152.15 with SMTP id a15mr135467vke.2.1488264252670;
        Mon, 27 Feb 2017 22:44:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.113 with SMTP id p46ls281831otp.28.gmail; Mon, 27 Feb
 2017 22:44:12 -0800 (PST)
X-Received: by 10.129.163.208 with SMTP id a199mr251149ywh.26.1488264252278;
        Mon, 27 Feb 2017 22:44:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f7si147993pfk.5.2017.02.27.22.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:44:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so403148pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 22:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NShqOYMpdRNBtDtEPOk1Yk805yhpiUpmTISqGTKD2ws=;
        b=lYflXbDAhu25zF9lA/edcSdT6D7LNGF/H3OSZ20BX0kAXdAed4CSQKGg5I5tOh/3Mq
         gujyoZ4GL5f+u0r6HlonpLTiHE5K9WhAVbwN53vts2g/qIMD51k26bWqszQnf227bclQ
         XN1jMxom6+dPgd0QOGU3lZ4wHBgrW/ZVZGMrvG5DmSTdggmtdC6D/zZI9Q6wch21Fqtk
         MLFlE38kYNnC7Z3JhHOpBtSv/V/XQ67B87GeB5ohU3HO2dQN/HVYS1h/FRx9tqa4qayZ
         pAeUF4soX9Lem+xQruZH/sfU2DwSSGnM7ANlh2ZnRaKLrHzGCCry3cYJzbcDqR2tKJoV
         X/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NShqOYMpdRNBtDtEPOk1Yk805yhpiUpmTISqGTKD2ws=;
        b=FdDkgxsQ79R9gMR9u01fK/Nhhyh2lYYecJou927C6NjPpfQEE8Z32WnE2Gpij7DsvB
         YlSEr63QBh2lB9ttDAmA8NY0+n6ZX8bdLUkx7VCf0734fWybcTSo4TmHlpM4mUIxWX6T
         dz7pbuyYOlLo/h3SM/4+y1nz0WuR9h/6fEoBAKBJK7IaucT/nBI/8PQkUwhlEGcOSYan
         BG0dZ1SjAcmiaB8u01Dh4NvtGABJfouQUhny8IY4rttYZxKib/f8cb/Egc70kdoN9AAD
         jhWLc7+L0GnS5vEwRg24rK3k09mD+od7LDA1ejtozt4Z4c5yLdFnqUkLA6pKRE7ZBNIf
         olJA==
X-Gm-Message-State: AMke39nVL+2xBqaYh7UETiqQg2caxvKcFmPHF4Ld1I4RoY35N1myDOa97mq15QJ5bOhsBQ==
X-Received: by 10.99.102.71 with SMTP id a68mr881040pgc.67.1488264252062;
        Mon, 27 Feb 2017 22:44:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r71sm1630179pfa.104.2017.02.27.22.44.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 22:44:11 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v4] staging: speakup: Clean up if conditions
Date: Tue, 28 Feb 2017 12:13:59 +0530
Message-Id: <20170228064359.30756-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

---

No changes in v4

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


