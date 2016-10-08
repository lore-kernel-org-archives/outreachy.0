X-GM-THRID: 6339007711067242496
X-Received: by 10.13.233.6 with SMTP id s6mr6595586ywe.63.1475920146053;
        Sat, 08 Oct 2016 02:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls7141080ote.9.gmail; Sat, 08 Oct 2016
 02:49:05 -0700 (PDT)
X-Received: by 10.157.40.151 with SMTP id s23mr6186443ota.124.1475920145728;
        Sat, 08 Oct 2016 02:49:05 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si2871143pfw.0.2016.10.08.02.49.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so2614408pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CaaR2HBOo8iYTRivxQrcrAdqnHR5tfVH37in1xsTOsg=;
        b=BI0gF8mPjaThzoQTKs6ElWtifTOpLdjhhTGfCaH9I0czLPaRTE/uXrfFtGxJlJCTPT
         d4jTSscxIS4/+Kxupxg/PJ4REVoE0mlRoiFFk+Pe0K/e6Mt1zfns3b33+KeJIS2iUKSk
         LDMQabPSGK+vg6FXRCQWiOAsHWqAtuMTaHocZDnaUIBQjFvjsvxjLM3Cx8++fZBCmBT+
         vDLCa1s7NJ+lcwO6MNfjTuGrIY52NWU5VdEsOKxdXakAwo4FiiLQelKa0pJaZFypGOY1
         z9WpFhBg+JgIcuW+7zRBA2wPI6hGWN8fI/7LD42x/J4sQQowkqWZ0EpcoXLOadmIb/YK
         9xLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CaaR2HBOo8iYTRivxQrcrAdqnHR5tfVH37in1xsTOsg=;
        b=dOrTH+5iolqJOdI1A9EAuMdtR9rkZs/5voM+H+fUaSe3vTGk5XziUPuRhXmUDoERfc
         7yLzFEaYZtTagIWucBuSz2TweS9K7C4c6/KlQM6FxpbYNUV2xhD6bMxK/JQoFNtjKv0g
         S+ZAGtXM+9VB8dkfV9RLAo6X202qkCGxJHasRL1hOTedBG8d2clvQae7QGhkVsTFCJ11
         RoVnO12jv3ReUUW6qYIJ3clBnPmdQHD8ENOCZdA/0Na3eebJBeNzyd6R7exIaZoOR+iM
         n3ISM4prZ7TZndTr/pKUwI30icQ70TsYeI7phsGC/DZGM8CJYkRkWJzmSW07zzs2zOOE
         CFQQ==
X-Gm-Message-State: AA6/9RnxLktbUD5s39hxq7TLa8HeKul/2YSOezhocSCNXCZ6gFhujMbHpCuPvhE7xXvsqg==
X-Received: by 10.98.184.26 with SMTP id p26mr36400927pfe.68.1475920145532;
        Sat, 08 Oct 2016 02:49:05 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id p77sm20004019pfi.27.2016.10.08.02.49.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:49:05 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:49:02 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 10/13] staging: wlan-ng: renames
 hfa384x_authenticateStation_data to avoid camelcase
Message-ID: <20161008094902.GA13887@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_authenticateStation_data to
hfa384x_authenticate_station_data in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index adbac69b..19d1c06 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -421,7 +421,7 @@ struct hfa384x_join_request_data {
 } __packed;
 
 /*-- Configuration Record: authenticateStation (data portion only) --*/
-struct hfa384x_authenticateStation_data {
+struct hfa384x_authenticate_station_data {
 	u8 address[ETH_ALEN];
 	u16 status;
 	u16 algorithm;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index b39ef74..a838f9a 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1550,7 +1550,7 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 					struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
-	struct hfa384x_authenticateStation_data rec;
+	struct hfa384x_authenticate_station_data rec;
 
 	int i, added, result, cnt;
 	u8 *addr;
-- 
2.10.0


