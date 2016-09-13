X-GM-THRID: 6329663993990348800
X-Received: by 10.157.54.216 with SMTP id s24mr19643387otd.49.1473739741026;
        Mon, 12 Sep 2016 21:09:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.178 with SMTP id h47ls396593otc.37.gmail; Mon, 12 Sep
 2016 21:09:00 -0700 (PDT)
X-Received: by 10.200.52.230 with SMTP id x35mr18823902qtb.23.1473739740546;
        Mon, 12 Sep 2016 21:09:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 142si3153020pfx.2.2016.09.12.21.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 21:09:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so670405pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 21:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J0GWMLpmel5tIbOehvbTOJpoLdn7PahiIOoCT280C8s=;
        b=pWelaxuyNnPnBO4AD+swRfFNHQfUeS9Q5qsfSbDUnMkZtppFwj+mW9+oQH9I4JOQeT
         loxKaioix1VwKcDUR/PVXAuAfk/I25DZk8Ectvmb2E5wZ6mqn5qTEfDYftMl9HgR8zv7
         3XbmPS3nKDoCWd4BYOJoB7YclIIs2CZY+lSgUe4u17/af/La0ertbt8zm/CiE3uO+IQm
         zzttwOHJLJWYVdODRG7VJSkVT8qdvJh0ROjBVQi3Iz+jzlUUioE4e2yqXmrBUImdYlXY
         C860nv5LqFkEA61HlOyy+I6981C4jo4a00GVGCqpRy0J0WDq2EKK4g3Rg6Y3fYcP1iBp
         Bw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J0GWMLpmel5tIbOehvbTOJpoLdn7PahiIOoCT280C8s=;
        b=DR9gp+GbZWzQZ6PtrfK5QgRiZnwJffiugx0FDdk+ISMhG4AZkEBaeOQRbuuMuvM9cf
         XQlDO4pi/M81uKzNtiScdoHBx6Lae9rYPW7dBdylFlxO5n/s03SIeMNuRofLujiuY3Gk
         ZWKlzXZcJE0kERCCMU7ovXuxQ3iOPeLLetXSdeI1peFEg2RUJlAo4rEux7pDZEdYjOK5
         yPxYNrHpDTUxjvK/4gwy09xfVX71BPhny9eI9T49n8iBW43/mDkvmhOxvPx9gdcJz9L3
         ttwhb5AcwalUMIslrHEfrEEEVCuJKYgvcntQNg807tr0SI0lx4pd56RHxeCL7rqxyXkG
         R9KA==
X-Gm-Message-State: AE9vXwP4R2MoDwYe0rMZyXgPRiXV6T6q4fMplS0gZiaTaYQrKel6BJkovqj6BsW0jB1gmw==
X-Received: by 10.98.23.140 with SMTP id 134mr39662444pfx.96.1473739740342;
        Mon, 12 Sep 2016 21:09:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.94])
        by smtp.gmail.com with ESMTPSA id d5sm27615640pfa.44.2016.09.12.21.08.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 21:08:59 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: most: move assignment out of function call
Date: Tue, 13 Sep 2016 12:07:09 +0800
Message-Id: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Pull out assignment used as a function argument before the function call to
improve readability. Change was made by hand while the following coccinelle
script was used to pinpoint the issue:

@a@
identifier func;
expression list E;
position p;
@@

func@p(E);

@script:python b@
E << a.E;
func << a.func;
p << a.p;
arg_list;
@@
arg_list = []
for i in E:
    if (        '=' in i
        and not '"' in i
	and not '==' in i
	and not '!=' in i
	and not '<=' in i
	and not '>=' in i
       ):
       print "function: " + func + " has assignment at arg: " + i
       print "in file: " + p[0].file + " , line: " + p[0].line
       arg_list.append(i)
for j in arg_list:
    print j

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/most/aim-sound/sound.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
index 9c64580..e9d6b67 100644
--- a/drivers/staging/most/aim-sound/sound.c
+++ b/drivers/staging/most/aim-sound/sound.c
@@ -236,12 +236,12 @@ static int playback_thread(void *data)
 		bool period_elapsed = false;
 		int ret;
 
+		mbo = most_get_mbo(channel->iface, channel->id,
+				   &audio_aim);
 		wait_event_interruptible(
 			channel->playback_waitq,
 			kthread_should_stop() ||
-			(channel->is_stream_running &&
-			 (mbo = most_get_mbo(channel->iface, channel->id,
-					     &audio_aim))));
+			(channel->is_stream_running && mbo));
 		if (!mbo)
 			continue;
 
-- 
2.7.4


