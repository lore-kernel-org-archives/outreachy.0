X-GM-THRID: 6254878931463176192
X-Received: by 10.129.78.66 with SMTP id c63mr35458253ywb.8.1456327487091;
        Wed, 24 Feb 2016 07:24:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls111553igr.10.gmail; Wed, 24 Feb
 2016 07:24:46 -0800 (PST)
X-Received: by 10.98.72.199 with SMTP id q68mr37007999pfi.14.1456327486545;
        Wed, 24 Feb 2016 07:24:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id yd9si447182pab.1.2016.02.24.07.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 07:24:46 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id c10so15065417pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 07:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=n5iGN4M3uSenndBssbEtVOTAWnBCqJV+YgdktebB8Xo=;
        b=oxwiu69mBE8qlbWhvJtbvw9dcWgyBQrF0k5N07+1jF55jsh2XNLjLQqIXMyD7Uau00
         9MAozLosts9mcC0eZ52QYlD8/F9j0lOB18h6c1lBfYNUmwadnUdaGwWl9O8FVBb0SSAh
         Sw+gheoXxzsVbuT7fTTWCirNYoWexGUPEzq2GIqjXfeIgOlIaEbb6Rqz+sGtq58e6Wjb
         bhSovVm3JKNvRL8BE5NURWq79pI+oKwTSfIvFN9GKJTfeY+ipkczjlNTyFf3XftC8JHe
         yDvnkF5bj/rs2iVR7clAUw2+72styqAYKq2xXAmQjdF9YOtexjVL4wREP7WltJVAAelG
         XFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=n5iGN4M3uSenndBssbEtVOTAWnBCqJV+YgdktebB8Xo=;
        b=ItukXPpsXoOYoZNwkVaNIqslPI3IiCx2/vNtcGzR4xjMRC1vDr60HjVCQsJhcv3vUF
         k4SQkL7r2mGmInFQzikbYSmhHBc0HT0/zCrRgaFUibMsNl5BZpqHey8Xe8r5FQSmKJOH
         lHcF+fSAVUZdDNKcE5X5BiCbVHcq/sLDcS/s/an+YMIQT9cR/TYd97HYePcYe5i29mTf
         PiciTZJP81EVSHV98lrta7diqya7azM+o/yUU7uEICAKTYm/mYEIfePEratGo49QAMZN
         Fv7PWd/mfW0RKDKabtmTUsq5FSg0/3Bs1P6tYQJnGFQ4FNbCbnBnJ7jitY6xPmCJdgRN
         8Jyw==
X-Gm-Message-State: AG10YOQ1iWGoa7HOhM0ccwFXLjyq6iOyvwFjtNFFkWwG6/gn26FeK+mslVsPSedTnS4UaQ==
X-Received: by 10.98.32.5 with SMTP id g5mr55579457pfg.74.1456327486369;
        Wed, 24 Feb 2016 07:24:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id p9sm5876670pfa.11.2016.02.24.07.24.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 07:24:45 -0800 (PST)
Date: Wed, 24 Feb 2016 20:54:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Remove unnecessary test in if condition
Message-ID: <20160224152428.GA30208@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary test on synth->alive since it has already been
tested previously.

This fixes the following smatch warning:
drivers/staging/speakup/synth.c:182 spk_synth_is_alive_restart() warn:
we tested 'synth->alive' before and it was 'false'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/speakup/synth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/synth.c b/drivers/staging/speakup/synth.c
index 01eddab..4f462c3 100644
--- a/drivers/staging/speakup/synth.c
+++ b/drivers/staging/speakup/synth.c
@@ -179,7 +179,7 @@ int spk_synth_is_alive_restart(struct spk_synth *synth)
 {
 	if (synth->alive)
 		return 1;
-	if (!synth->alive && spk_wait_for_xmitr() > 0) {
+	if (spk_wait_for_xmitr() > 0) {
 		/* restart */
 		synth->alive = 1;
 		synth_printf("%s", synth->init);
-- 
1.9.1


