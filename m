X-GM-THRID: 6250928232324923392
X-Received: by 10.31.154.65 with SMTP id c62mr9042070vke.8.1455407643405;
        Sat, 13 Feb 2016 15:54:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls1208259obc.22.gmail; Sat, 13 Feb
 2016 15:54:03 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr9211651obz.20.1455407642996;
        Sat, 13 Feb 2016 15:54:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by gmr-mx.google.com with ESMTPS id g136si1585679ywb.5.2016.02.13.15.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:54:02 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id s5so44268228qkd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jp7WQD0EnAMZkAtGASKFqq2R8gkk/I74r8EAW4JSYcU=;
        b=jg9YO4o5I5N943a9kXMhqOzgpl8MYOFyUfLljDwozL2S4acq+cKLqzj4tEFzqlMw4W
         wIsWshNsyG9TAJL24abAmpuhbpyLHENPLCGnmk0kNOrsvfhAr5aWoFeUcUEyZYCXmBWi
         qni0oW0RuSPVZv0NmgnOjrSl4hQR+o4oO8WUJV2VUdjW2UjNcS71LzmEQBLUNIbb+Pva
         b72b3IjNjwaReMseGR3B9mJgWRIUh7mx6slUFIfVTP8ht8F22BFL8db2uaD2Qxc8D/3r
         KcBIDdjlnupDC6dAgW7NjBilRGvFrTX05wa/KnSlCNIhJ6sfKFryiioZIOwIvFitYnB3
         rCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jp7WQD0EnAMZkAtGASKFqq2R8gkk/I74r8EAW4JSYcU=;
        b=d4h+EypQLiWrSydDNg5Mw6wr0F7CZxW4KoBS7ruNxzp6HjT0tjKI8Vke3Abmo+G23/
         5sbial2RRVyoaUG9DbU13XUTqm41DTrE1Y7GX9GwEnYGMrErEumTrH+srQsAGKpwK7iC
         O5kQdBYUeTw5d/MhRQKw0Q1hQGxVGJV4kIied4v81X9EHF2CMgjqk45hZcrqYZbt4HJR
         UkxI3PBTwp+wrTLjNJ6uxa5KuI4krz2XTelOF3VlBQJWYWn+F9yHkc25DIBmfPVY4cxH
         n+PM0ph6kzrfvJ00YqcR2NSVBd7rpg94JrcJlB9KvoZrVaI3pV0mWrfevny6qUW7VYjz
         +Y4A==
X-Gm-Message-State: AG10YOR35IV0on27koNH1quW7Mu6HrGuSUtVrpA/VTkxteu4uHaNOpXtt9FM8ezF7EiQ/g==
X-Received: by 10.55.76.15 with SMTP id z15mr11291892qka.32.1455407642831;
        Sat, 13 Feb 2016 15:54:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id a66sm8360506qkb.20.2016.02.13.15.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:54:02 -0800 (PST)
Date: Sat, 13 Feb 2016 23:53:23 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove useless return statement in a void
 function
Message-ID: <20160214045323.GA25999@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the return statement at the end of the void function as it has
no purpose.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 5570707..472fd7f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3853,8 +3853,6 @@ void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
 		if (result)
 			PRINT_ER("Error in sending message queue scan complete parameters: Error(%d)\n", result);
 	}
-
-	return;
 }
 
 int wilc_remain_on_channel(struct wilc_vif *vif, u32 session_id,
-- 
2.5.0


