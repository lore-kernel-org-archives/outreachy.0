X-GM-THRID: 6339007883422728192
X-Received: by 10.66.235.3 with SMTP id ui3mr5602984pac.137.1475920176375;
        Sat, 08 Oct 2016 02:49:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.182 with SMTP id s51ls6961425ota.14.gmail; Sat, 08 Oct
 2016 02:49:36 -0700 (PDT)
X-Received: by 10.157.32.234 with SMTP id x97mr5880819ota.97.1475920176038;
        Sat, 08 Oct 2016 02:49:36 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 80si2871528pfw.0.2016.10.08.02.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hh10so3959927pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=f4j27EoISgPxA2xfj071wgPg4rl72pmp9hhSg3Z0xg0=;
        b=BHOsOZLsVtsD4BOV/hD2x8TbufjmOqXRK2KgUGRIeuEn0IxMlGJZlU3bAAjPz9ATwj
         weYy+bFe6cWxFHi7JrPbn0S9qmTMzFrHrWOpyghPr+mW5AYIl4S3WGMF4O/wdFiw6sdA
         8kTGjfMfZhDI2+4V/+ticoHBJ43duIPxD0OF8zZYYe29hAglA4wwggPJN2/S1DbUNahK
         NVRfeQXKv47XuEWFMw6wC5L221V1/hx6quYNFxgsza1x9XnoeTO4XolRxGLXPvfe42FD
         ASdCaI8plYex/kUh789keYgUnJS/FmjUawTGTvhDxod3VtEau3/4ZNzjArPXpKM1nNvP
         fliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=f4j27EoISgPxA2xfj071wgPg4rl72pmp9hhSg3Z0xg0=;
        b=fO+GRrG1e1zyrgktFuI9pEVjY4g4QmjqirHY5KJcooK9sS2qL1M2yHId78rLYOtovc
         VBnkf/IIne7NGE5wy3Y3Z4KZ38dzFerj/mC58C1FGgCmaIcGqfmmTQhPKnGzFZTKkjkm
         ddwrPWYW281pufdDpozCD2VY1Z+/7MdogxiS1xkNcvORRSIPH/pv14JlcrnM+qo6s9jM
         6YM15fKcLoQPzuSu1iC/8sUKJ7CAnPMHlX6uMazDxQ0ASC/0UAFv8ItDqFxz4Mb2w80E
         iXP1PHHRbbX/JRIcVN2NSIYe+J8wGnjng8mvPNqSNEu2NOfJozO+w0UnZ1XDJhvONPBZ
         0JwA==
X-Gm-Message-State: AA6/9RkBe1p0sOyfhI13yKjedZyw1ziiaLr9xh9A5clTYBtI7XcydaIrYCUGn6rWP2IqYg==
X-Received: by 10.66.194.197 with SMTP id hy5mr6536455pac.68.1475920175854;
        Sat, 08 Oct 2016 02:49:35 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id b77sm20012920pfl.25.2016.10.08.02.49.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:49:35 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:49:32 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 12/13] staging: wlan-ng: renames ASL_currBSS to avoid
 camelcase
Message-ID: <20161008094932.GA14225@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased variable ASL_currBSS to asl_curr_bss in order
to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 6acdbce..e00ebf3 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -456,7 +456,7 @@ struct hfa384x_downloadbuffer {
 /*-- Information Record: commsquality --*/
 struct hfa384x_commsquality {
 	u16 cq_curr_bss;
-	u16 ASL_currBSS;
+	u16 asl_curr_bss;
 	u16 ANL_currFC;
 } __packed;
 
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index bcf2133..e20517d 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -373,7 +373,8 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			    P80211ENUM_msgitem_status_data_ok;
 
 			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
-			qualmsg->level.data = le16_to_cpu(hw->qual.ASL_currBSS);
+			qualmsg->level.data =
+				le16_to_cpu(hw->qual.asl_curr_bss);
 			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
 			qualmsg->txrate.data = hw->txrate;
 
@@ -1948,7 +1949,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 
 		pr_debug("commsqual %d %d %d\n",
 			 le16_to_cpu(hw->qual.cq_curr_bss),
-			 le16_to_cpu(hw->qual.ASL_currBSS),
+			 le16_to_cpu(hw->qual.asl_curr_bss),
 			 le16_to_cpu(hw->qual.ANL_currFC));
 	}
 
-- 
2.10.0


