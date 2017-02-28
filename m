X-GM-THRID: 6391810462293426176
X-Received: by 10.157.9.238 with SMTP id 43mr233192otz.140.1488264057810;
        Mon, 27 Feb 2017 22:40:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls182139ioe.47.gmail; Mon, 27 Feb
 2017 22:40:57 -0800 (PST)
X-Received: by 10.98.211.137 with SMTP id z9mr138196pfk.34.1488264057003;
        Mon, 27 Feb 2017 22:40:57 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f7si146698pfk.5.2017.02.27.22.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:40:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so525313pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 22:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WwoqzK2BY/Io4LzqIZ4CiTEYja2tfoZsZRTlChP2JDM=;
        b=I8WQDEhgQkmDbnUlHLItcsn3XDXjrDuI2HHS3ZGO7QoiDyURd0E+zgQ0TB7cmcKHdZ
         CJhBqe8CX0m5sxs3a+ymjSpupTaE6QopTIXm0jbnBA0nE2x9zzNlTmt7DO143dLWAbf7
         T+ynSSLUqDii2FpKXsNCF3Qo0uEtdtBtfPPdL+3fktOWpRStJRWqWJceXh/gdvwxH8vc
         QYagatnZgLcPWfSkfxLyFVFirg/5xStAy2PAPBK7ED3Kx6U6DBT+iQA4gjxexgZGa2OD
         MfNqxbAi0hgoTHpOW1iIfv2gRomgrb5SU3QHlP1IqeQuGORcsv5WNdIR6GkGT3xjd7uc
         NzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WwoqzK2BY/Io4LzqIZ4CiTEYja2tfoZsZRTlChP2JDM=;
        b=g/WfM7OzrZX7SpFyK/z9dPj7oO3sbx3J1v5Gd/uH8hGIi8wuq/a+DAnIqkJlf7oWAA
         XWmaqdm81dphahythdJFPkB8tr4HErQgMk8fWMcIeAQU31Ie3+VmrlKgMN9gl5pUsYOV
         LUzEuTR5KQ/YsJt8cWjmQd7ggZYHZLs9+nfPTsUJTDUepdZsCo3SS1X9nEQcMX9v1egp
         Uxh2rKRA8nZzOIv65rWS+OYgKijivuOYpy52n5dKBbc9K0h9FUv/qrTZzmkjHh1j+GJ3
         ejlCj7CLgZfu1x22uB0i30JQkC2VhXYjsQnzReYFWfC9gfP32uyaCnCZLaZ4C1FnMhI8
         jANA==
X-Gm-Message-State: AMke39m99l+qQFyL/miD639xw64rfotYfJWNAVj3gRZyz+FG/FDe7gwWmh6xf0FEVJmZXg==
X-Received: by 10.99.158.2 with SMTP id s2mr902956pgd.116.1488264056807;
        Mon, 27 Feb 2017 22:40:56 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u78sm1607436pfa.101.2017.02.27.22.40.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 22:40:56 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2 v4] staging: speakup: Clean up parentheses
Date: Tue, 28 Feb 2017 12:10:42 +0530
Message-Id: <20170228064042.30034-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Align next line of print statements
to the right of open parentheses and
remove extra parentheses.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---

No changes from previous patch.

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


