X-GM-THRID: 6390781740145704960
X-Received: by 10.99.181.11 with SMTP id y11mr6147517pge.83.1488208481191;
        Mon, 27 Feb 2017 07:14:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls13723584otb.40.gmail; Mon, 27 Feb
 2017 07:14:40 -0800 (PST)
X-Received: by 10.129.79.19 with SMTP id d19mr6326319ywb.19.1488208480831;
        Mon, 27 Feb 2017 07:14:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2946486pfa.4.2017.02.27.07.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:14:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id x17so1340198pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 07:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=N0Ci9n1aNSDtHKLGeoGav5iLhVHfsI073npxso9YLPo=;
        b=SrqWeQpF1/7jOd4EPkdts8z9qPiwMMNxYwmhP62A87IQ+VIVjm5NYjm9X/ObhCN2M/
         kCtjxd3eM7vRQAh4IBhRLVdD4BWJ81vZ3+fCJwNl4pPMVF4Fx8IeJBk+91MCV1pIq6GL
         1i7hgICvkt8fTCcWVPy9MGkV7y3wfkG7Kxri2X9IvPzDjHXFwvPU822DNh0p5W9oAByy
         tYvaPV4bnDyGQtDdbIZg/t2PN0N0h3BO5ofPMVcSFADF90EeGoaE36cFSln/oqqB9cBR
         7x4LDWMK957OLRFdMCPPr1re5qSxZzd/iKEx6XhrVjCD2LylIVBiCPZn1FdpJciuaPJ6
         a/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=N0Ci9n1aNSDtHKLGeoGav5iLhVHfsI073npxso9YLPo=;
        b=aK0x0IYgyGemrmdMImRywtXfgJCtnZVyWnA/9b+F44i+oB2zV9H5xYmUrzkA3eMheJ
         eoA8OBdmVDvh+F+Ay4im83xCRs6R/Vb/qmcMAeK550qVVHb/iqm6GkMuw134PLpv4ftc
         ON3pl4gH6f733i/ArVy14uAmVBgHCqnGTz5SChbG8znvSG6it2kE87tlUC8gwIU22Go4
         zixiifleuFnFoSuoaeNefHDn/AnXOG8nQykCRaUnaN36OByOCXR+V/9y2HwgHv3XoOiB
         mMQHhWM2nnZUAPMwYfKX7NwmPc4WpVtZvS1zLA9z51Gm3Vqdre0m17EwVPqpXM0OhWzF
         nsdQ==
X-Gm-Message-State: AMke39mOen+cfbsiwxdUW3enIglAnF646qqVqI6n1iYhcAyGDf1H6GAgv9OUjPwqeG3pvQ==
X-Received: by 10.84.143.203 with SMTP id 69mr24711571plz.68.1488208480621;
        Mon, 27 Feb 2017 07:14:40 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x65sm31287921pfx.115.2017.02.27.07.14.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 07:14:40 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: speakup: Clean up if conditions
Date: Mon, 27 Feb 2017 20:44:28 +0530
Message-Id: <20170227151428.19063-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Remove useless parentheses
* Line up the tests 

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>

Changes in v2:
* More elaborate log message
* Fit MSG_FUNCNAMES_END) on the previous line
* Fit ch == SPEAKUP_HELP && on the previous line
---
 drivers/staging/speakup/keyhelp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..ab56a1c 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		}
 		cur_item = letter_offsets[ch - 'a'];
 	} else if (type == KT_CUR) {
-		if (ch == 0
-		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
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


