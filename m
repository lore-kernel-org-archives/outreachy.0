X-GM-THRID: 6392269007149334528
X-Received: by 10.13.226.145 with SMTP id l139mr1448675ywe.95.1488316119295;
        Tue, 28 Feb 2017 13:08:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls2008900otl.41.gmail; Tue, 28 Feb
 2017 13:08:38 -0800 (PST)
X-Received: by 10.129.90.215 with SMTP id o206mr1487647ywb.101.1488316118947;
        Tue, 28 Feb 2017 13:08:38 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si219990pfk.5.2017.02.28.13.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 13:08:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id x17so2980661pgi.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 13:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FXTEAmRPDRJXO8zFdRsU8xvHwpA0TRmRWVgi7jZZhnA=;
        b=Wv8xfK9z29YYh1QGPNpdfgut02uqYqqiwC6CrJYfyqaED+GnZegAAd5U8t9c3h+Vuh
         OZToTMUUbE3pUIbSUyfo9esk6X3zCfAvAS06PgpHUqgGqpQOlhe5kt2sKhlTac/Mxz4w
         qELKm/3DZ10NoWrMgF5uX+iVlulx/SjcPFTiNQcsBFfAb+TTPtOt3PdG2LS1Gi7Od95U
         fvZxeSN4+wLwO5Fcm0L7Ia0qrkhD9GriF7T2TNAfWdtgPl6hryMPr2P0432wAQBm+GIJ
         HwCowDQLG50ohk6WQ8vCj3QpkFSLJMkBTQtoL/q1uXWLW7Y2uQ3WtOH3O9ZsJS55TxtV
         yXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FXTEAmRPDRJXO8zFdRsU8xvHwpA0TRmRWVgi7jZZhnA=;
        b=MZGjFLK1c5u8a/2erUcTmhKBVPfrPcGrvPmsP/gMIQTUmMFF7owqAteLdiwYJrVFJ+
         1lfc+f5Ncpspho1hz0Pv0uGLmtUz9fC9/9EcZDBHo+VsHAYEbTIJMFNZCIDrLgZRT4o4
         s6xHaCOvBDq2FICCGGmmutix00T8csUK6XBKnZIEl4mqRh7C8YJMUqHc3akl56Ouelaq
         vNX8tHxTQz+LPHabiiUw4I0BXOfSfKajrgqgj0pIaYvnhUAABFXvLDGVf26VUkonSnoh
         tNIOroCZi07oiv7622sCjmJQBgI+wipVaovTsK49sYESIu3rB73jdtUo7P/JUcTdzjs7
         XRxQ==
X-Gm-Message-State: AMke39m8eta+kJQ8JxAv1sY8cCc31wy8WCQSMPhfzrQDB2Ug+b7R1KQtQ1X+Id1p0wNB3g==
X-Received: by 10.98.27.204 with SMTP id b195mr4659821pfb.154.1488316118721;
        Tue, 28 Feb 2017 13:08:38 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r17sm5998000pgg.19.2017.02.28.13.08.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 13:08:38 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2 v5] staging: speakup: Clean up if conditions
Date: Wed,  1 Mar 2017 02:38:13 +0530
Message-Id: <20170228210813.9110-3-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170228210813.9110-1-sreyamittal5@gmail.com>
References: <20170228210813.9110-1-sreyamittal5@gmail.com>

Found by checkpatch.pl
Logical conditions are on the next line, useless parentheses present
Clean up the if tests by

* Put logical conditions on the previous line
* Line up the tests

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

Changes in v5:
No change in this patch.

 drivers/staging/speakup/keyhelp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index f5156bb..4e6e5da 100644
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
+		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
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


