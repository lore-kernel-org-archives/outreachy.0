X-GM-THRID: 6389055061138341888
X-Received: by 10.200.46.185 with SMTP id h54mr340315qta.42.1487567802178;
        Sun, 19 Feb 2017 21:16:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls2669346iod.9.gmail; Sun, 19 Feb
 2017 21:16:41 -0800 (PST)
X-Received: by 10.99.222.21 with SMTP id f21mr7398292pgg.23.1487567801485;
        Sun, 19 Feb 2017 21:16:41 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si2033491pfe.1.2017.02.19.21.16.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 21:16:41 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x244.google.com with SMTP id 1so4181003pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 21:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lyLy9zxeOLJlTjOJ24n/xhKi/V8Gyqj8doyzErA78/g=;
        b=UBznN59aDx8jAIauqemMa7KmHqR99KlL2jGPOmAEvSb+jYEuLbkkX18IGTciIRA4f9
         HqPMy18TJR5R4Gp07nwZMVBmmF4Q4fln6KMOvYo0clnuwRQzggWYO+2cWXhoB8znNkRG
         uiGTFQIgBTHoZXJYwdIehboMZ8H3gFWZ9QpkavIiLqny1cyNL1VMJ3epTuIN0+SoWb88
         bEJGr09sfbX6BNk06h2c5yxMr5fLgwudjvIYeBRzp7NzJpLQQ+d/WIn69sS8Hc1gIF1S
         e/CBLf7PnRPjA66oUSBJQw4ijE6rCUR2MGoNEIRmK36Ujd1Hgj9lzZI+IZh44W/O04AI
         ARLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lyLy9zxeOLJlTjOJ24n/xhKi/V8Gyqj8doyzErA78/g=;
        b=ez40Y0KZRfDqHEDK4I2NaCJuZdWNJ3nY2yahczklD0XOKFjQ1F3JI66vKSme+2Ur/y
         jrZOBUTFwGE4pS3689DDluVGeVNuHJwaPbVrjpwCQ6Aq3XjSL/4CdGcv3I2J3tFAtNFl
         KlAtsBZ5I71C5yxk9ngpar+5keqHxC/cp9n2cZXdZxWhvQobG0fhZnNMP4DlOKi15+QY
         4TyPlgUqRN/yTukghigWH/bJ1OorVmrhe5/5dTIZrsFz+K138hKS68STS2YJ1lIDkKfC
         XcboCCkI7CbaHo2emM6VesVYy+cUuqZAAhownqYi04/2IjrXYLV0XfL6EBoyKLwL3MwK
         fhUg==
X-Gm-Message-State: AMke39nQW85IfxNJzWlUEG58H+/xzoMKV52/KnyVaCsufHzOQ78lfD4lLyPDTIxj7uhqftMA
X-Received: by 10.99.231.5 with SMTP id b5mr25639268pgi.80.1487567801253;
        Sun, 19 Feb 2017 21:16:41 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id c74sm31983139pfc.1.2017.02.19.21.16.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 21:16:40 -0800 (PST)
Date: Sun, 19 Feb 2017 21:14:29 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, sudip@vectorindia.org
Subject: [PATCH] staging: sm750fb: add spaces around operators
Message-ID: <20170220051429.GA3847@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add spaces around operators -, *, ?:, >>, << to conform to kernel style.
These instances were found with checkpatch.pl

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/sm750fb/sm750_cursor.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index b1651b0..dbc8bb1 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -111,14 +111,14 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
 		data = 0;
 
 		for (j = 0; j < 8; j++) {
-			if (mask & (0x80>>j)) {
+			if (mask & (0x80 >> j)) {
 				if (rop == ROP_XOR)
 					opr = mask ^ color;
 				else
 					opr = mask & color;
 
 				/* 2 stands for forecolor and 1 for backcolor */
-				data |= ((opr & (0x80>>j))?2:1)<<(j*2);
+				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
 			}
 		}
 		iowrite16(data, pbuffer);
@@ -165,13 +165,13 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
 		data = 0;
 
 		for (j = 0; j < 8; j++) {
-			if (mask & (1<<j))
-				data |= ((color & (1<<j))?1:2)<<(j*2);
+			if (mask & (1 << j))
+				data |= ((color & (1 << j)) ? 1 : 2) << (j * 2);
 		}
 		iowrite16(data, pbuffer);
 
 		/* assume pitch is 1,2,4,8,...*/
-		if (!(i&(pitch-1))) {
+		if (!(i & (pitch - 1))) {
 			/* need a return */
 			pstart += offset;
 			pbuffer = pstart;
-- 
2.7.4


