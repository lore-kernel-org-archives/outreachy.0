X-GM-THRID: 325933072384
X-Received: by 10.66.164.164 with SMTP id yr4mr234089pab.42.1424278366117;
        Wed, 18 Feb 2015 08:52:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.13 with SMTP id g13ls145457iod.2.gmail; Wed, 18 Feb
 2015 08:52:45 -0800 (PST)
X-Received: by 10.66.65.109 with SMTP id w13mr248544pas.28.1424278365922;
        Wed, 18 Feb 2015 08:52:45 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com. [209.85.192.178])
        by gmr-mx.google.com with ESMTPS id f2si2580641pdg.0.2015.02.18.08.52.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 08:52:45 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.178 as permitted sender) client-ip=209.85.192.178;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.192.178 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so2357327pdb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 08:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xIRD6m0xeBInfAZAkala8T/XeOJZNAvOJt/bHIe5F10=;
        b=m1bwREFA/20bmYJ7mvb9t5Tgf+PrrPXGaLt9n046I8Tr03ihUoSzb0QJ3lJ15VUUB6
         8/JhNcqN56kPHbrdguh6ZtrAOFoaTcMWAsGaGKbgA5RPdpaSsksyKaa4iHRQT5SNwhhg
         Nd0zOcZWLOY48dZ6W2UiUkc9d3RBGHtSI+mLzhYRFDeiutnR7pwkz+pP6Jr+bXFn2tBj
         JKvTzdoyEsmZgZ+rtA+/jrbOAs9pbZWk9dWdwAkJyFhau05BLIFVhrCYEd5AVjuDrji0
         B/sK3KDxXw83jRvv3rzxer7+x7pzNSNry8pyK4C33RGdhmpxBs3dmSKorj1Hf5bJNcS5
         p87g==
X-Received: by 10.68.132.67 with SMTP id os3mr208452pbb.1.1424278365825;
        Wed, 18 Feb 2015 08:52:45 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.95])
        by mx.google.com with ESMTPSA id ib3sm21127633pbc.41.2015.02.18.08.52.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 08:52:44 -0800 (PST)
Date: Wed, 18 Feb 2015 22:22:38 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: media: Change data value in setup_timer
 function
Message-ID: <84f01ca026b83879a92f6c9d6190d5050499885c.1424276915.git.vthakkar1994@gmail.com>
References: <cover.1424276915.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424276915.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Here, data value 0xabadcafe in function setup_timer
seems like a nonsense value and timer handler function
is not using it anyway. So, change it to 0.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes in v2:
	-Add this change as a seperate patch
	-Here, I could make a private structure for the
	 driver to hold the various global variables but
	 that would be a major change and may be need a
	 lot of work. So, I am proposing a simple change
	 here. I can go for those changes if Greg thinks
	 its good for this driver as I don't know the goal
	 of this driver.

 drivers/staging/media/lirc/lirc_sir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_sir.c b/drivers/staging/media/lirc/lirc_sir.c
index d1ada8c..29087f6 100644
--- a/drivers/staging/media/lirc/lirc_sir.c
+++ b/drivers/staging/media/lirc/lirc_sir.c
@@ -683,7 +683,7 @@ static int init_port(void)
 	}
 	pr_info("I/O port 0x%.4x, IRQ %d.\n", io, irq);
 
-	setup_timer(&timerlist, sir_timeout, 0xabadcafe);
+	setup_timer(&timerlist, sir_timeout, 0);
 
 	return 0;
 }
-- 
1.9.1


