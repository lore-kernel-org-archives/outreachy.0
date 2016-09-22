X-GM-THRID: 6333092146009079808
X-Received: by 10.237.33.226 with SMTP id m31mr87qtc.19.1474538267603;
        Thu, 22 Sep 2016 02:57:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.80 with SMTP id p77ls223388wma.26.canary; Thu, 22 Sep
 2016 02:57:47 -0700 (PDT)
X-Received: by 10.28.67.132 with SMTP id q126mr231267wma.21.1474538265838;
        Thu, 22 Sep 2016 02:57:45 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f12si226227pfk.0.2016.09.22.02.57.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so3584657pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 02:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2AMIQAdTwb4qGZg/w8PbhMBoJFh20aHoGikcEvIP7bE=;
        b=jieNJML55ERALMvfF5O8IP1E8+DvuD9ofQPh/d0kufpmyfVUdayvWeybFjyqDjwuLA
         mncTPy/ubOa4mG5DSS2u5qOj2QpQqixXX7uGeEKGN0j/4AgRRl34XVIG984c4wgL9agJ
         w4vlRRMNWChH/gLjM/r1BHbhvSsThXt4aZ3pWTHrbZwwchc9utRwE4i+Y1oF02q9weuy
         PX1QZ+TPqaJdHciSokC7AbqN+nv6DxLX3HBs19vFXNuzHl51DurvCz/NZAsnjDWFDNek
         dqpbAVUN7sTJXaUYbH7H1f0Bcov/nHGLVn5bc1IpEwlIgBF6bhLNOZsqc77rnqz7gKiX
         VtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2AMIQAdTwb4qGZg/w8PbhMBoJFh20aHoGikcEvIP7bE=;
        b=FC+Ncx0KxlJVBXbtIc3k3zg310xyRqkbIOZX77+384YF+8fNWn7mRzA7mOSoq0MvIz
         lR8n+tKncYVVqf30Ev1CLlDt+ZsH9WMc1mGeIkmNB8zrICOQHSFS1dMKxMvEFk7oHPLp
         aeto72VBD5aXh+qrvoHXM8LEgDMe67hrk5718W6r6lcF/gRYSvVO9CaMGJ07xEMvxUJh
         FQm99uKyhgdKeraTOnqnxzxzELHPGBllX7pcL3tP+5E3LivR2r3ktcOZoU1ZHNW+ICuY
         Nl/LC+eydJk+kaQsPkmxYzv9LQxHmn/0JWUgUmcZ81VGV8oZLog/Oue6Cda8G8BwG9/F
         3Fag==
X-Gm-Message-State: AE9vXwNN1oO4pfWqV/PMhSKwgZZ5arzFLi3000rxzSxLgtybzcNNPfE4nJuaoDHKeBvxzg==
X-Received: by 10.98.60.153 with SMTP id b25mr1884504pfk.12.1474538256194;
        Thu, 22 Sep 2016 02:57:36 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([122.170.34.211])
        by smtp.gmail.com with ESMTPSA id bx9sm2728789pab.17.2016.09.22.02.57.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:57:35 -0700 (PDT)
Date: Thu, 22 Sep 2016 15:27:30 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, samuel.thibault@ens-lyon.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca
Subject: [PATCH 2/2] Staging: speakup: kobjects: Add space around the
 operator.
Message-ID: <d465c77bec1a1674b0d39ecaba1f843f4e5fb187.1474536835.git.bankarsandhya512@gmail.com>
References: <cover.1474536835.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474536835.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 7fedee3..4a78d37 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -251,7 +251,7 @@ static ssize_t keymap_show(struct kobject *kobj, struct kobj_attribute *attr,
 	}
 	cp += sprintf(cp, "0, %d\n", KEY_MAP_VER);
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-	return (int)(cp-buf);
+	return (int)(cp - buf);
 }
 
 /*
@@ -288,8 +288,8 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
 		cp = spk_s2uchar(cp, cp1);
 		cp1++;
 	}
-	i = (int)cp1[-2]+1;
-	i *= (int)cp1[-1]+1;
+	i = (int)cp1[-2] + 1;
+	i *= (int)cp1[-1] + 1;
 	i += 2; /* 0 and last map ver */
 	if (cp1[-3] != KEY_MAP_VER || cp1[-1] > 10 ||
 			i+SHIFT_TBL_SIZE+4 >= sizeof(spk_key_buf)) {
@@ -350,9 +350,9 @@ static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
 	} else {
 		shut = 0;
 	}
-	if (ch&4)
+	if (ch & 4)
 		shut |= 0x40;
-	if (ch&1)
+	if (ch & 1)
 		spk_shut_up |= shut;
 	else
 		spk_shut_up &= ~shut;
-- 
1.8.3.1


