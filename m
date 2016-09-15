X-GM-THRID: 6330692191065735168
X-Received: by 10.157.46.36 with SMTP id q33mr8439160otb.40.1473979141543;
        Thu, 15 Sep 2016 15:39:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.19 with SMTP id x19ls1399955ioi.43.gmail; Thu, 15 Sep
 2016 15:39:00 -0700 (PDT)
X-Received: by 10.36.33.200 with SMTP id e191mr4159334ita.12.1473979140408;
        Thu, 15 Sep 2016 15:39:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1626703pam.0.2016.09.15.15.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 15:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so106623pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 15:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=aLzz8q2lZ4AjupdD+SwMuQZjzowPkp9NI3wqwoYcCz4=;
        b=lmJa2cHBxaN99HknKn1uCXQaaCAbWlIJrdO8poAaE3CMQSKi6rQQYBCrGMDCW2xpxI
         1TiWXTSw4UaNVC9//rn0d7gMgXIOkLUDiX0lBTLEW96qC950+zxq02MnNGy3T9UGV5bk
         NYBVQzH7pR+0Kol4QtuA0wFoR8L0EcGDJKGaaaBYQoAoBdhrlJMkMtFadH8GqOcYUzV5
         hvi/U3eo1QVOd3YNaGCdVBybBvV0NyJPsIdWIyY2bZReD1dtnf27KdYbjuqdmRhlq/ML
         JAajdpCJfI3mmpEWg+WU12EWasQefnYCczGvo7CWXlh8+fGIaqF4v+aBjrTFb6csxLQi
         VBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=aLzz8q2lZ4AjupdD+SwMuQZjzowPkp9NI3wqwoYcCz4=;
        b=Xo6395k5nu/exI1+gS+UhHx3WqTPah8SkQY0CTS3rr3zHB++6FQm92HaAQMnnoAnAW
         Lhmx5X76BNdlsS5Rp3n7g4tIY34q/XXcLXq9srCXkG3ogvryDB2Xh1hxWHN+mm/toSwM
         MUG/cxyTAHZmDR42GfZ78l3EHd2YnZW45evs5rekU0XgNYUT/zt5QG8V2Nc/O1vbA5W2
         XXMpmxz4U6SMQ5FtS0c14QFl/N91vagzpPOl0SmqTyutaJJTqWeTS4ztXKAw/FE+T7cL
         SeXQ1qbRRwtK5SRtq75Rp7hsL3phX/oZ4fkBqDqVmrTPG1Mw1IS37h6CTyv8K5CSh3x1
         JzEQ==
X-Gm-Message-State: AE9vXwNW6+aO4PLvVOcSB3I6lqzVtPERZtBgmdULrs523mSPnrAL5hawaeybzDrVVGCVuQ==
X-Received: by 10.98.223.218 with SMTP id d87mr18414251pfl.48.1473979140226;
        Thu, 15 Sep 2016 15:39:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h66sm47319967pfc.47.2016.09.15.15.38.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 15:38:59 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/2] staging: fbtft: move && operator for logical continuation
Date: Fri, 16 Sep 2016 04:08:11 +0530
Message-Id: <0c9368173fc580fd2a19d49253ad9182828a359f.1473978532.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473978532.git.gs051095@gmail.com>
References: <cover.1473978532.git.gs051095@gmail.com>
In-Reply-To: <cover.1473978532.git.gs051095@gmail.com>
References: <cover.1473978532.git.gs051095@gmail.com>

Move && up to the previous line, to fix the checkpatch issue Logical
continuations should be on the previous line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index 8267bbbc..ab1a31d 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -25,8 +25,8 @@ static void register_onboard_backlight(struct fbtft_par *par);
 
 static int init_display(struct fbtft_par *par)
 {
-	if (par->pdata
-		&& par->pdata->display.backlight == FBTFT_ONBOARD_BACKLIGHT) {
+	if (par->pdata &&
+	    par->pdata->display.backlight == FBTFT_ONBOARD_BACKLIGHT) {
 		/* module uses onboard GPIO for panel power */
 		par->fbtftops.register_backlight = register_onboard_backlight;
 	}
@@ -189,8 +189,8 @@ static int update_onboard_backlight(struct backlight_device *bd)
 		"%s: power=%d, fb_blank=%d\n",
 		__func__, bd->props.power, bd->props.fb_blank);
 
-	on = (bd->props.power == FB_BLANK_UNBLANK)
-		&& (bd->props.fb_blank == FB_BLANK_UNBLANK);
+	on = (bd->props.power == FB_BLANK_UNBLANK) &&
+	     (bd->props.fb_blank == FB_BLANK_UNBLANK);
 	/* Onboard backlight connected to GPIO0 on SSD1351, GPIO1 unused */
 	write_reg(par, 0xB5, on ? 0x03 : 0x02);
 
-- 
2.9.2


