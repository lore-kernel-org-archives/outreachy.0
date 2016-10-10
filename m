X-GM-THRID: 6339656404575453184
X-Received: by 10.36.81.20 with SMTP id s20mr2863622ita.2.1476066281600;
        Sun, 09 Oct 2016 19:24:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls8970806ota.19.gmail; Sun, 09 Oct
 2016 19:24:41 -0700 (PDT)
X-Received: by 10.157.2.38 with SMTP id 35mr7722557otb.37.1476066281083;
        Sun, 09 Oct 2016 19:24:41 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id x14si2297461vkd.3.2016.10.09.19.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 19:24:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id 49so3571317uac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 19:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nlml6uJ49QH3S/b2W7OO2GRFkFwYo9OPdE2mgT6lD5s=;
        b=GwtNCg1s5CkGCV+jKOOdGUhMbs7NzfsjoomHzCDPyK2tkArk9pR/J+94WgeQOADS3o
         IYhGBRqx3+PldadjkeOQuOJYJbe+6yE1am8W54CfRk7ywWLzwVrLconTP/iCK17hjett
         k5jQPbZuNJnHVEghZDTOqn+HF8RhEJHBdq7pqoIP9/TD0aeM+W91gi4MxQGCS4KZQV6n
         t+QenFeP9arLzCc332eDnnYSI34cqo4lFH2ToTkmbc6L1J4Azj0JiVxH/2hsshNYt1ti
         jyiFz8vMkS75kPeIZKBUlcHBQi+LjwzeBntFakcRW/BkvUIEmrF6SMYcHcecvHmS9O3I
         kUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nlml6uJ49QH3S/b2W7OO2GRFkFwYo9OPdE2mgT6lD5s=;
        b=KGWq3dzH/Ju56sKQyjQPtScAKjDGIimHCjuTPE+2DTIt+xeASdkaxoMNqZLjNJ/0k3
         0FT+PppXe8LMtoNpIWcdax+/cMjHP/bcog22EPceU/aNhBmcSM6bnZfO8LVjVvuYw5Ys
         nbZ5qEXAWbgAmIaBmbrE6/KhZmA6x/MsTpWCEhO/6i45Gv/936k7zfSuckFu+VqKz6CN
         pSqJJHF8bMIYQ37vHcW7MQzWu1JhC6zG2YNbVHV6JAjMgMGIFZyOJAU9ia+LW9erxU9U
         TFwd1QLCa+Ctw4+CmCTJEmyj0AwRWHKGdfYRHaHZ0qBrwJ7+EG/qN0C0o4oNPQZwsXmO
         nPOg==
X-Gm-Message-State: AA6/9Rl6XBvDwBfNIOCWmv4g2QUpXlba4TlevSHwTlNcCTmMryVqbArpWvfhdjZ3k2Tirw==
X-Received: by 10.176.84.72 with SMTP id o8mr20425590uaa.128.1476066280924;
        Sun, 09 Oct 2016 19:24:40 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 62sm4952047uae.10.2016.10.09.19.24.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 19:24:40 -0700 (PDT)
Date: Sun, 9 Oct 2016 23:24:33 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: cxd2099: Format block comments.
Message-ID: <20161010022433.GA1329@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index fedeb3c..c72c3f0 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -336,7 +336,8 @@ static int init(struct cxd *ci)
 			break;
 #endif
 		/* TOSTRT = 8, Mode B (gated clock), falling Edge,
-		 * Serial, POL=HIGH, MSB */
+		 * Serial, POL=HIGH, MSB
+		 */
 		status = write_reg(ci, 0x0A, 0xA7);
 		if (status < 0)
 			break;
-- 
2.7.4


