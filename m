X-GM-THRID: 6250070785112670208
X-Received: by 10.31.157.213 with SMTP id g204mr43775411vke.14.1455208003440;
        Thu, 11 Feb 2016 08:26:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls1494070igc.14.canary; Thu, 11 Feb
 2016 08:26:43 -0800 (PST)
X-Received: by 10.50.50.208 with SMTP id e16mr15608115igo.12.1455208003057;
        Thu, 11 Feb 2016 08:26:43 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22e.google.com (mail-qk0-x22e.google.com. [2607:f8b0:400d:c09::22e])
        by gmr-mx.google.com with ESMTPS id l85si540771ywb.2.2016.02.11.08.26.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:26:43 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) client-ip=2607:f8b0:400d:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22e.google.com with SMTP id s68so20766411qkh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 08:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EoIpOEnX4YkfJXz6CrPaQfa4tTWm757gL4WlZx/8T0E=;
        b=Ptvz/dwf0Fo7ruVzR1ZlWlz15uh2x5t3kS2KugpOT3d49ATs526Wbq3XMAbymES95K
         8jKAtanGuj0gudgKIZ47wHkB9+17qNH6SNQYzILfTD6FGucuFo6Zlh6MibjrBPrciIXm
         ecVeiyjGIQ8NjDpFuZedr9Deju0VUUZRj2hOm22rg/lk8QIQkotgdyBv28VZulY4tqq4
         nFJ4Sa4gtbvTHTjHjX0qC8vI1kI7eEXjEYkvYThmHRjZNBCB/xH2Wo/xvDYGqjiAgyQ3
         8FOkJFxVjJrGti8iZrbr25V2bCOv9mIgGsgRwuRoQiQw3iuybz9dDmvhcDugGOzu5VlE
         3qxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=EoIpOEnX4YkfJXz6CrPaQfa4tTWm757gL4WlZx/8T0E=;
        b=AIenXlqUsq7btzDs/4uJvDnc60UF4cS6JntR+7dF9q3dYI+FY45kMMrlrPykKBAXT2
         SMe3vlPObdu5Us5dxUgr7nLdYBbfpWvt8okdWD3Pu7v5+GabG7ruIfKFiybp2kW1wE+j
         zEQBDyX3mnYokc3uFIzQan+djHF0o+MgiU6mxlM9i9hMl7f+bUbJmbLgSt/6dya62CyS
         cc1jQ+OV2QDQDbbMBuICkrtjjT001uhueDVm+Ie+NET7xwSBo874X+WXy1WskXKsjm4D
         T4+PFkR8XN9Iq8jqzJ4/XcKNiVg92smMOGQUf4o6xsNf2xcYCEfnaafFQ7uuJ3KqK4eH
         56gw==
X-Gm-Message-State: AG10YOS/u1FLuGKiGqO+hRc5ouWFtj0jFKdXT1cd3clHRcm8mWwWbf0o6uyc7Ta7du2CAA==
X-Received: by 10.55.48.80 with SMTP id w77mr35339174qkw.7.1455208002892;
        Thu, 11 Feb 2016 08:26:42 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id z10sm3616233qhz.5.2016.02.11.08.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:26:42 -0800 (PST)
Date: Thu, 11 Feb 2016 16:26:04 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: goldfish: Remove unneeded parentheses in assignment
Message-ID: <20160211212603.GA4216@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments as they are
not needed. Semantic patch used:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)
Reply-To: 

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/goldfish/goldfish_audio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index 364fdcd..8ef2d02 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp, char __user *buf,
 		return -ENODEV;
 
 	while (count > 0) {
-		length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);
+		length = count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count;
 		AUDIO_WRITE(data, AUDIO_START_READ, length);
 
 		wait_event_interruptible(data->wait, data->buffer_status &
@@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip, struct file *fp)
 
 	if (atomic_inc_return(&open_count) == 1) {
 		fp->private_data = audio_data;
-		audio_data->buffer_status = (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
-					     AUDIO_INT_WRITE_BUFFER_2_EMPTY);
+		audio_data->buffer_status = AUDIO_INT_WRITE_BUFFER_1_EMPTY |
+					     AUDIO_INT_WRITE_BUFFER_2_EMPTY;
 		AUDIO_WRITE(audio_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);
 		return 0;
 	}
-- 
2.5.0


