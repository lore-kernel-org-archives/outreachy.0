X-GM-THRID: 6393338025823174656
X-Received: by 10.157.17.29 with SMTP id g29mr4854310ote.86.1488716646380;
        Sun, 05 Mar 2017 04:24:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls113766otc.32.gmail; Sun, 05 Mar 2017
 04:24:06 -0800 (PST)
X-Received: by 10.129.82.134 with SMTP id g128mr4464250ywb.18.1488716646071;
        Sun, 05 Mar 2017 04:24:06 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si881431pfd.3.2017.03.05.04.24.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:24:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so4398470pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 04:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t4+0cIeaR79VqVfGBPrzuT3jC5/vhiCpfK7ewl7hr90=;
        b=s3QBx4xxx6wKSHOXCXQfHY7aCJuyL2ZA6Wv0e8FHFcnFo9BcUgyiHNusDzo5V4q3Jj
         I+W/ClSTm8bbNWluARRO20DNKpp9K4XXuTcvoafaD/n+V7GS4nUOEPeGqqw49VXic+VV
         qN+P59vSyQuId/sYQenYnsfsa267jGHsf7HqJJZ2/dDoV+F4x+jm8WurVNLgCLkkcCNm
         1rQ+ZTRzDlzhT20VWEXMJNPwbiHbbW4B2lEY9dnyEib/SiTZzv68p1m+W4K6xJxKg5+X
         J60aUYyqYVEABKwpe44LC49hbQLZpXE0qyVu2MU5LZ0BAPBxThidPcKjrBCkfL9kYjlO
         vVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t4+0cIeaR79VqVfGBPrzuT3jC5/vhiCpfK7ewl7hr90=;
        b=CUVSfkAeaiu6MH+RraEeC5qywfl2PYiSFgWEG2NYABAxsPArW/LRtlmKFNmin4ECJJ
         gDbb4u9+KlTWG63ZWMhjY4WX5+x+zt8NOPLslR6Z6bms65oRbPS7D4ZhjSyZHibJSYBH
         O05y2YiUypKU3+NlEuC4FqG5H5Jzm4Kxz0MWcYCg0XbRN81nrgFeRYFbbIWTqgMuAtax
         v4SNkiqtDvIWvIv6Yce1wcJ40CxKzMSxKy/c6pl73YnjEcVevbiA3NFX5LQUkgMiJJzW
         EZKfnwUe/2at641ihuE6dLfYctp5QmGrM+ACbyqPJv6mCYckmz4XrkL3c0VFfLccsh5V
         jtPA==
X-Gm-Message-State: AMke39mqGKEjpw9U2bHjWaWBI/m9oox5SnT/uTw5lSf/R4FJp/w+avNvGmHclSEQ0d1orQ==
X-Received: by 10.99.116.70 with SMTP id e6mr13931721pgn.135.1488716645801;
        Sun, 05 Mar 2017 04:24:05 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([157.49.7.225])
        by smtp.gmail.com with ESMTPSA id c11sm33551911pfe.68.2017.03.05.04.23.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:24:05 -0800 (PST)
Date: Sun, 5 Mar 2017 17:53:56 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: bcm2835-audio: match alignment with open
 parenthesis
Message-ID: <56dc8eb67e5d0fa0a37a8d634e8351003bb93a59.1488716526.git.aishpant@gmail.com>
References: <cover.1488716526.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488716526.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch fixes the following warning issued by checkpatch on bcm2835-ctl.c
in bcm-audio driver: CHECK: Alignment should match open parenthesis

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 .../staging/vc04_services/bcm2835-audio/bcm2835-ctl.c  | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index a4ffa1b..063e6f4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -107,7 +107,7 @@ static int snd_bcm2835_ctl_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+			       struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int changed = 0;
@@ -191,7 +191,7 @@ static struct snd_kcontrol_new snd_bcm2835_ctl[] = {
 };
 
 static int snd_bcm2835_spdif_default_info(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_info *uinfo)
+					  struct snd_ctl_elem_info *uinfo)
 {
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 	uinfo->count = 1;
@@ -199,7 +199,7 @@ static int snd_bcm2835_spdif_default_info(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_default_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					 struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int i;
@@ -216,7 +216,7 @@ static int snd_bcm2835_spdif_default_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					 struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	unsigned int val = 0;
@@ -236,7 +236,7 @@ static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_info *uinfo)
+				       struct snd_ctl_elem_info *uinfo)
 {
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 	uinfo->count = 1;
@@ -244,7 +244,7 @@ static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_mask_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+				      struct snd_ctl_elem_value *ucontrol)
 {
 	/* bcm2835 supports only consumer mode and sets all other format flags
 	 * automatically. So the only thing left is signalling non-audio
@@ -254,7 +254,7 @@ static int snd_bcm2835_spdif_mask_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_stream_info(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_info *uinfo)
+					 struct snd_ctl_elem_info *uinfo)
 {
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 	uinfo->count = 1;
@@ -262,7 +262,7 @@ static int snd_bcm2835_spdif_stream_info(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_stream_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int i;
@@ -279,7 +279,7 @@ static int snd_bcm2835_spdif_stream_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_stream_put(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	unsigned int val = 0;
-- 
2.7.4


