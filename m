X-GM-THRID: 6254727985287397376
X-Received: by 10.107.198.137 with SMTP id w131mr37513070iof.9.1456292342802;
        Tue, 23 Feb 2016 21:39:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls2790386qge.78.gmail; Tue, 23 Feb
 2016 21:39:00 -0800 (PST)
X-Received: by 10.140.40.239 with SMTP id x102mr7606937qgx.23.1456292340953;
        Tue, 23 Feb 2016 21:39:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id u66si162471pfa.2.2016.02.23.21.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 21:39:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id e127so6366537pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 21:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Pq5iQI4juUeHiiTPuDr8McTT1EgqrsMHsIh0rnCYkEc=;
        b=ePdBwH9TGsCJqcDn+gzQ6CusputhdhcyemNeFCp2Yd4OEKyLGXHAjloHv1QetUxfmh
         wTQ1siyazMcxNzGJPItIxgyh4IqpTj+YCxkD0FosFkYqxKnmFtfRuc3UayzCLqv7kuHv
         q/ryl0KKnr3eBSe9qanruSGjFVjMkzF+S7iSHBrAMhGqZN5AqTt8F8c32ZtMsiYrPuvD
         lBdOyIR5EOPWY+SbDI1xXfHID/iJ97qcIKHB6vJYu+cZDaXinbgb8prmXk8E+xMWkTDC
         XPhEl/Y2b7tUNp/8noJHvoDbcyedSr83Ro1oRbSHMUHShGn0lpyjRs+/8YwRNp1nO6Jb
         MQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Pq5iQI4juUeHiiTPuDr8McTT1EgqrsMHsIh0rnCYkEc=;
        b=CIgviYkWVUgtn3hZP98qYBRPt/V+6UlpAcTB6ntvpjdBzJCsfXelHHtfzC0PhvhlK7
         50B5tyULYwoq220W9c4+8WXxt9zvdmvzmUh7pUxu7kGlzgupAPK1weEpEzxYw8XIbHZb
         KaIhZGeDxy4BkeBnGsu/co/5FFpw4vpq+CrqLZZVwneowhhBLE86JMuecFb0a49JXx4E
         4xFQRelgqmWAVEB0xQRELlbmMvG6WZobyYOt637yIn6khXRKL54GLaZKj1Yn/+SnIY4E
         D1ueUxT0yEDx4axvPeyjqO5QcS0C+S5Vl+vT1tpdtQA+4fCZMraq2PfeNhVU+24XEZKl
         FAAQ==
X-Gm-Message-State: AG10YOT2eFr7diGpxSsU3aearqpBRA8V26GaTtWKIWgze10fIYGCSvFDybSermCgx59Lcg==
X-Received: by 10.98.87.80 with SMTP id l77mr52035938pfb.101.1456292340771;
        Tue, 23 Feb 2016 21:39:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id 19sm1536442pfb.64.2016.02.23.21.38.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 21:39:00 -0800 (PST)
Date: Tue, 23 Feb 2016 21:38:58 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: remove multiple assignments
Message-ID: <20160224053849.GA8495@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove multiple assignments by factorizing.

Coccinelle semantic patch used:
@@ identifier x,y; constant z; @@
- x=y=z;
+ x=z;
+ y=z;

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/speakup/main.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index eb8d65a..a87224c 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1188,7 +1188,8 @@ static void do_handle_latin(struct vc_data *vc, u_char value, char up_flag)
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	if (up_flag) {
-		spk_lastkey = spk_keydown = 0;
+		spk_lastkey = 0;
+		spk_keydown = 0;
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return;
 	}
@@ -1662,7 +1663,8 @@ static void cursor_done(u_long data)
 	if (win_enabled) {
 		if (vc->vc_x >= win_left && vc->vc_x <= win_right &&
 		    vc->vc_y >= win_top && vc->vc_y <= win_bottom) {
-			spk_keydown = is_cursor = 0;
+			spk_keydown = 0;
+			is_cursor = 0;
 			goto out;
 		}
 	}
@@ -1672,7 +1674,8 @@ static void cursor_done(u_long data)
 	}
 	if (cursor_track == CT_Highlight) {
 		if (speak_highlight(vc)) {
-			spk_keydown = is_cursor = 0;
+			spk_keydown = 0;
+			is_cursor = 0;
 			goto out;
 		}
 	}
@@ -1682,7 +1685,8 @@ static void cursor_done(u_long data)
 		say_line_from_to(vc, 0, vc->vc_cols, 0);
 	else
 		say_char(vc);
-	spk_keydown = is_cursor = 0;
+	spk_keydown = 0;
+	is_cursor = 0;
 out:
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 }
@@ -1862,8 +1866,10 @@ static void speakup_win_set(struct vc_data *vc)
 
 static void speakup_win_clear(struct vc_data *vc)
 {
-	win_top = win_bottom = 0;
-	win_left = win_right = 0;
+	win_top = 0;
+	win_bottom = 0;
+	win_left = 0;
+	win_right = 0;
 	win_start = 0;
 	synth_printf("%s\n", spk_msg_get(MSG_WINDOW_CLEARED));
 }
@@ -1998,10 +2004,13 @@ static u_char key_speakup, spk_key_locked;
 
 static void speakup_lock(struct vc_data *vc)
 {
-	if (!spk_key_locked)
-		spk_key_locked = key_speakup = 16;
-	else
-		spk_key_locked = key_speakup = 0;
+	if (!spk_key_locked) {
+		spk_key_locked = 16;
+		key_speakup = 16;
+	} else {
+		spk_key_locked = 0;
+		key_speakup = 0;
+	}
 }
 
 typedef void (*spkup_hand) (struct vc_data *);
-- 
2.1.4


