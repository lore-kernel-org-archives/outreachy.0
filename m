X-GM-THRID: 6258678911053332480
X-Received: by 10.182.75.196 with SMTP id e4mr11350887obw.36.1457212239813;
        Sat, 05 Mar 2016 13:10:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.68 with SMTP id u65ls564486ioi.22.gmail; Sat, 05 Mar
 2016 13:10:39 -0800 (PST)
X-Received: by 10.107.12.213 with SMTP id 82mr11421222iom.18.1457212239005;
        Sat, 05 Mar 2016 13:10:39 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id y20si2204857pfa.2.2016.03.05.13.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:10:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 124so56237328pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3L5xRKE3bAiQmhairYt3ceb3zvQ1w5EKIQB05Ljr0qE=;
        b=qK+/IZG0gZYJigQ8eAXC3OAupzGK0GfmRqdNuP/Bml495ZF7nvqyz24Fn1IFbOAf5j
         TkyFXC7ybK7a6O1SBz6rxMsRA/fSRW244SEj1teOlE4qHFAFQCeFpWHQ8GNH01hsvQ0P
         LhcxLz3DBWmSFjrCbPqOun9hZu81Es8+r53lQd4Hu1aqIfYs2+1+96OqYbvfXdkEqp+I
         NdJr1Yrc6UGdkBZuTyATnNaUxFZ1skaMTNxDMrIOK91ZDfwDV8QbynvpK8OWAG4lUNA/
         wOD3Qs1y930vlznVnPsNayNTGMX/dbosXVcEysPwlZ04/Lbd5izm37gu4kM90BCNKojU
         TCyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3L5xRKE3bAiQmhairYt3ceb3zvQ1w5EKIQB05Ljr0qE=;
        b=FDKvBhCB05e/vcLDgtt8mIzKMOjXpHjRh3/DMBimDKefQyWwUZL/hVfEPaa6k1+J87
         JVg06qGwsi8sj6vx/PQGTjY1/mY2O/k+bMy6fKuMw6OJJCxvi/dx2jqVmSLlB6y/LtEl
         1NOr1gNX27gmAc7W8vSF6IYPW2hiEYn7CEs80PlTOkdVRdj/t4Q/411niSAkcQ+p2Kp3
         hVfL3ZSSKTIVu3Z+DId8bhxF9L0wBms4mh7zWvxiPL9RBumni7u1fhxGjqeC6VfefbGA
         tYhXteiSozymN8bivvhfh2b+bVVj/xQPw2F73cN3RsfuVcb6h+D/Kzn3UQzOC3C7SjkI
         pOFA==
X-Gm-Message-State: AD7BkJIZhKrkc39jXombNZhCSysUj0rQLORuPPVfxASw31zTupyePR9FyEjy+uA74EG46w==
X-Received: by 10.98.13.216 with SMTP id 85mr22106539pfn.143.1457212238848;
        Sat, 05 Mar 2016 13:10:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yx4sm14325599pac.5.2016.03.05.13.10.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:10:38 -0800 (PST)
Date: Sun, 6 Mar 2016 02:28:19 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Remove multiple assignments
Message-ID: <20160305205819.GA22644@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes multiple assignments by factorizing them.

This was done with Coccinelle.

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/speakup/main.c | 30 ++++++++++++++++++++----------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index eb8d65a..201a968 100644
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
@@ -1998,10 +2004,14 @@ static u_char key_speakup, spk_key_locked;

 static void speakup_lock(struct vc_data *vc)
 {
-	if (!spk_key_locked)
-		spk_key_locked = key_speakup = 16;
-	else
-		spk_key_locked = key_speakup = 0;
+	if (!spk_key_locked) {
+		spk_key_locked = 16;
+		key_speakup = 16;
+	}
+	else {
+		spk_key_locked = 0;
+		key_speakup = 0;
+	}
 }

 typedef void (*spkup_hand) (struct vc_data *);
--
2.1.4


