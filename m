X-GM-THRID: 6254572936145928192
X-Received: by 10.129.72.199 with SMTP id v190mr33942298ywa.44.1456256242036;
        Tue, 23 Feb 2016 11:37:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.168 with SMTP id yn8ls1142046obc.21.gmail; Tue, 23 Feb
 2016 11:37:20 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr34409316obc.29.1456256240690;
        Tue, 23 Feb 2016 11:37:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 12si4028715pfb.1.2016.02.23.11.37.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so121201654pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=W6WLlAUHARW3l9NV5v2bV2EnL26r/XueZkuOO1Yr58s=;
        b=Ubhc3BZhyA9L+j+RK3sbHB9HXx2DLqu4GKQZjst7XXHNFaurKHpC5jpffaWliKvGif
         de9gUcUIIprRhaf/W5dzGWrp450h2mmgVKJPXGgAj2Q6NJ6P5XdjxtHJfX+D1yQNbnrD
         q3RfJghqa3+Cu05IBWol/Q1GBg03dbpTTwT2h0SKANfAO+/77JZ+UmtBvQKOoYxw8P31
         luUhwNIM7Lx59CDjyYZAXZh+lTUEPiOQGS0n6qcQuIVvG1D4yRE9UfvtcJQbU5RFDzNc
         WzxQJlPWPKewz9gGSwVy/0qQL2vlKSj87qfxDGtUBv6dxvS3C0hxQ0l0hpsy8p5VD1sQ
         ZF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=W6WLlAUHARW3l9NV5v2bV2EnL26r/XueZkuOO1Yr58s=;
        b=cDqzJdnviHhPPVzU8m0i0dcjp3VIvl/Z48hWsPksm2kquOK0o2VSvGWe7y5ctabxrd
         SGMmxk+MK1sAV2qZ2eGBxV4B8pvjkY3fzCmWNf1VQv2MZqs2DPrrDc1O06vxVrYsdbNL
         SCQWjKguGp9HUURL8zJLrmtHARLCPd1kStBHdgriOcpn91MplkcaNlMukUQK/W3eNWp1
         AbUCfTwQNuFlZV7gC3g/e21FPby8xFipOtQubR8kd55zIXYNlHJvFJ1eBoq2w8QPt3NA
         8WJwIW1Gs8N7s1r83gLKJeCUnXtiZ4oFdMyxQs3ZvSHmajCA8HdnxW+u8SG6FpLFA0NR
         D7fw==
X-Gm-Message-State: AG10YOSfnu+NOQ+mniK9N92Fn4udtT8BBrVD4xp97fBweDzkUleXHYrLg0M9dWzULfmrkw==
X-Received: by 10.98.80.80 with SMTP id e77mr48757927pfb.126.1456256240526;
        Tue, 23 Feb 2016 11:37:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.185])
        by smtp.gmail.com with ESMTPSA id t12sm45942382pfa.54.2016.02.23.11.37.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 11:37:20 -0800 (PST)
Date: Tue, 23 Feb 2016 17:07:28 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: sm750fb: Remove leading and trailing whitespace.
Message-ID: <20160223113727.GA2778@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove leading and trailing whitespace.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
*Corrected Commit message.
 drivers/staging/sm750fb/ddk750_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 33e092e..b3c3791 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
 	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
-	if (enable) 
+	if (enable)
 		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	 else 
+	else
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
 
 	setCurrentGate(gate);
-- 
1.8.3.4


