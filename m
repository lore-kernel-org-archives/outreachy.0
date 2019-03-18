X-GM-THRID: 6669620815232761856
X-Received: by 2002:a0c:b91c:: with SMTP id u28mr8376649qvf.45.1552892107566;
        Sun, 17 Mar 2019 23:55:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls6296796qvb.4.gmail; Sun, 17 Mar
 2019 23:55:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzcPy7xJw6jNMetrk2Lo1AdcMLXk44sSYZ0cfSLB1bcbJY3rsNLlA6mAYXOcedABQyAnEbc
X-Received: by 2002:a0c:c685:: with SMTP id d5mr8879668qvj.17.1552892106929;
        Sun, 17 Mar 2019 23:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552892106; cv=none;
        d=google.com; s=arc-20160816;
        b=PmyZXqjPdhHiW0Bm9Moi+2MIAcdw/0V6JlKYbofnyD/svGYFUJMHUb062krI4ld9ru
         H6ipGIANZYAfCirRomSEgncqdGLovw2AZ8ibcPnjwfkUlYjuzAIa8Bms205FyoIyh/Aj
         AQ2JLBp8FfhgohWUm7ni7+WkH7SoEc1WTmZWUAgzHYCQY/ScYWGkL5ZOZYIVBe2WPiBZ
         vBJ+3pADzHCv06aMEji7OVfv1RbC84Lfn0B+HoLTUApoIpi/b8npf0Tyghu4YS6DBrGh
         0xOa/Pvp2DeCRujjP1nUcpCOwp3OFaKxFeC6hFv5KNG1xpHbtqK13FsZG0SxDXNibetC
         x7sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QEKzwJMC4V5vgfbh2EJZTJwyyYoUkNjXfXNitqpLmGE=;
        b=ctSa3cgwV6CQOC7KCNGj4iSS7GX2YHJeBsj/fJMLXGdpf64Cl3YuFY1dn8fnJLWgBQ
         IoSYwCo5qq41OdOqzPhNEfcSZxqJgoIBRUM2bWUIYd6EqU+PQkvcZU9L5r2YcIXqhpCB
         4ubre0cvrYHw8/+8Cp29yITTGBh8IpNOqi0/yZ3mv6C4htFITWTOjI8VSLXqlmLkQYhn
         ecO7ygewtH+WesLP40P3cbi7/L9a866DTCVFr2ZZTmMxjXHTm2YZhfFx9yEsYjMss8Pj
         /FRcYs8/0P+HlZK+pM2h+bEqAN+44U6Xfm1D0XsXiw06BGm6dfRoGFYQ2BS2Tsyr8sJR
         6w2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPuSWL+W;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id m1si508290qtc.2.2019.03.17.23.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPuSWL+W;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id a22so10701144pgg.13
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 23:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QEKzwJMC4V5vgfbh2EJZTJwyyYoUkNjXfXNitqpLmGE=;
        b=jPuSWL+WPGLCVZ0LCqQ3DUy6+U3bLZvptnVj/y2fCHrb8ucnfNbVq0wXCQVLJ/Hwz1
         pxZhU3MS4qdT9b6zc78q9arl2vbEe1EgGRve+sCwEC59IICjlxsJKinn+57i9QKHrZXl
         TTXp665zVxo5dFrm9IRiyMCWf/Gpo2yM1SCFZlu4to8WWC9TdMkPS33UdOSEZ/AQKYqE
         acLWt7nu93vkyLPXHf1KgAXCiusQ4VfDOwwyXdCr1oWmeRoCYvyLWRre3uawezgwYXMp
         haxZfRtN1BJxq/f3qBTblnoNQhSSAP7HmDE0A/Ug9Lx/h+ofD6e9PGGLcZ8PHga8WeN/
         MXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QEKzwJMC4V5vgfbh2EJZTJwyyYoUkNjXfXNitqpLmGE=;
        b=CipAXsxauNZacdCQ0ZwW3Y0U6XMZ9xYA56Jl4tn19u4zQEQV+mY7eEaohGaNEFOOJA
         BY58vhedNKVxscr2Qlchlu5g9T3kvNsOzw57cKXDbgOmNsktT7Zlv8yp4UarjvDjJo9o
         VkrYwyO6zQLbn2wNH7oN0Dheo+GMJtk9Ywj6yhBk+BFixLSMdHin1Lb+IPjXCxEoMatq
         Cglifb0mv8p8J/8G8DuSc7NXmp3zt9xipzaeiwdjDwRFK6ERmQvU0/G8KfL9pTDK/Ics
         OB5F4b4QNNLY/StGZ08NTES5ZmtQM6MKdoTsVSLBSuZkd4hmOE5fQDMMWUa3DYTyLr0I
         15Vw==
X-Gm-Message-State: APjAAAVQ/lZ+JWOy8g9z67ADbq5zszM0Wxfy/W6PAqF8NxDE+HwMDVOL
	aerOU+qPSSWV9YK0DWZuuuq5CSKo
X-Received: by 2002:a17:902:403:: with SMTP id 3mr18447432ple.48.1552892106299;
        Sun, 17 Mar 2019 23:55:06 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.100.132])
        by smtp.gmail.com with ESMTPSA id n65sm3288812pfb.160.2019.03.17.23.55.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 23:55:05 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: give comment
Date: Mon, 18 Mar 2019 12:24:48 +0530
Message-Id: <1552892088-20069-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Comment given to struct mutex lock; in file named as
drivers/staging/greybus/audio_codec.h at line no. 75
This object is being used in audio_codec.c,audio_topology.c files.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/audio_codec.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index 9ba09ea..31e857f 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -72,7 +72,7 @@ struct gbaudio_codec_info {
 	struct list_head module_list;
 	/* to maintain runtime stream params for each DAI */
 	struct list_head dai_list;
-	struct mutex lock;
+	struct mutex lock; /* protect critical section for audio gb */
 };
 
 struct gbaudio_widget {
-- 
2.7.4


