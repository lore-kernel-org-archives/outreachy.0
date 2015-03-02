X-GM-THRID: 5841740627968
X-Received: by 10.182.29.3 with SMTP id f3mr26387907obh.16.1425277464547;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.34 with SMTP id sb2ls862177igb.10.gmail; Sun, 01 Mar
 2015 22:24:24 -0800 (PST)
X-Received: by 10.50.26.40 with SMTP id i8mr15471393igg.8.1425277464289;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id gb13si106278pac.2.2015.03.01.22.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id fl12so5952137pdb.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 22:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WgkAJUtz3SZIRr1tc2xbbCI/dNtr8RW9gcO9YtxNvsw=;
        b=ykTVxnHU5eFroN0/g9jnKeduKfVoL009C5EPNv5IczoV5KqTcxvSAsAyLxExFnhA7e
         VCIqmZDsFXNPnCoJBEs4ugWZh172BKYRI1O5Z3gNWS05LsCtScMczLybw3lNy7e6morD
         VfQGj7XIS2/VRQxW+QR2KAZXNg+/RUIL4ohFlPBD5wLwl7kuY1bVhdfwjUD87Zpk95AK
         MKLFNZ//8yf2WQ7IrVbcRLa4/MtvE6Pe3ed6O1WGC+Z7qhHaudeN8c8R3ZqO110Crm2w
         FiXK42PWPKzYk4EI+92aVh7OgNo8O6gnvXxvy/GBUu8jgO8xjrYwvZo9emqVj+3Z0a5i
         tcMw==
X-Received: by 10.70.46.230 with SMTP id y6mr7666720pdm.96.1425277464175;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([183.82.106.99])
        by mx.google.com with ESMTPSA id zs8sm10879427pac.9.2015.03.01.22.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
Date: Mon, 2 Mar 2015 11:52:54 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: rtl8188eu: Remove redundant if condition clause
Message-ID: <78424de094126cf4c12d3fbc98ccbc6de07f52a3.1425276736.git.vatikaharlalka@gmail.com>
References: <cover.1425276736.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425276736.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Clause removed as !sim_bitmap is always true.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 2af3013..2bbdcca 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1025,7 +1025,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
 
 		if (diff > MAX_TOLERANCE) {
-			if ((i == 2 || i == 6) && !sim_bitmap) {
+			if (i == 2 || i == 6) {
 				if (resulta[c1][i] + resulta[c1][i+1] == 0)
 					final_candidate[(i/4)] = c2;
 				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
-- 
1.9.1


