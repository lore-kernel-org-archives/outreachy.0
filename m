X-GM-THRID: 6210059285862285312
X-Received: by 10.107.33.139 with SMTP id h133mr6718777ioh.1.1445937911738;
        Tue, 27 Oct 2015 02:25:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.103.161 with SMTP id fx1ls1813112obb.44.gmail; Tue, 27 Oct
 2015 02:25:11 -0700 (PDT)
X-Received: by 10.182.230.197 with SMTP id ta5mr32358560obc.37.1445937911379;
        Tue, 27 Oct 2015 02:25:11 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id fa8si4055570pab.1.2015.10.27.02.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv9so226903129pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pa8nwto183rn/dC6qGuHMPlPI9jTKxPWigXyimmDJfE=;
        b=ZB7t0GcEwRjd5vov4km3x6dKNVg/08BPX0z75Nr0G72fZhpAjwY3FA+rPWvGxVHvxT
         t8IGwDnhgT82NniG6RWmwSaRKgiIkckBKhx+N747uCAfhb8QoyoS7xHCf1YKSzlzAbK0
         wOkWgi+pZWzc3sQ98IAmghQ9JxOTh52XaCsPFFDQzurZMvXJG4OfTC5OmWFA6aqihfBT
         qyJP4frJnh8svwsWajaBJHkzGWunWnNlDNqcqYa281Lhi+F9ULdh4UacVA0QMyK/VjXS
         hI/77aZFSp0hArFzaFO+v1JKTLy+IRIf3mS+YnGQPazxcrbSSyf5ZIaDl9mOJfGGakII
         XzsA==
X-Received: by 10.68.135.1 with SMTP id po1mr27659055pbb.23.1445937911277;
        Tue, 27 Oct 2015 02:25:11 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id eg5sm38616753pac.30.2015.10.27.02.25.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:25:10 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:55:15 +0530
From: Sirnam Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: panel: Removing multiple blank lines
Message-ID: <bc5959a4e2b99459639017dba20457f0a04c84df.1445937649.git.theonly.ultimate@gmail.com>
References: <cover.1445937649.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445937649.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue

CHECK: Please don't use multiple blank lines

Signed-off-by: Sirnam Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 030a0cf..11a50f6 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -576,7 +576,6 @@ static int keypad_enabled = NOT_SET;
 module_param(keypad_enabled, int, 0000);
 MODULE_PARM_DESC(keypad_enabled, "Deprecated option, use keypad_type instead");
 
-
 static const unsigned char *lcd_char_conv;
 
 /* for some LCD drivers (ks0074) we need a charset conversion table. */
-- 
1.9.1


