X-GM-THRID: 6339007795957858304
X-Received: by 10.129.89.84 with SMTP id n81mr6660848ywb.23.1475915265182;
        Sat, 08 Oct 2016 01:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.23 with SMTP id j23ls2416059ioo.15.gmail; Sat, 08 Oct
 2016 01:27:44 -0700 (PDT)
X-Received: by 10.66.167.198 with SMTP id zq6mr4826797pab.96.1475915264791;
        Sat, 08 Oct 2016 01:27:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d11si2703093pfl.2.2016.10.08.01.27.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so2519508pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=C+ItuVO+f7eLDRoDEyLvroSuDmMqmm4CtvwoE5R36Xo=;
        b=IKlKRR53GgmlTGmGzYGMmz7nHGk88fqFI8H6/wTsM1AaQnyq24KDu1+BoWGw607OUo
         baklw2e4/XHuWohB1qbrr9HMtKLJYGqFqeetQT6rerZxUOIuBQ/qklXnOyOOJQMMfESi
         ASbb+bSw63W29PqkGCA5dSt4GD4Czq1Q6TKAnDXutY6GN8ejqEkAi1kgEbgvk0s5uD0R
         NnrR3V5kpKLnPfy6lm37x9BYICYCeFD3JjUnFp+cy/NglFJb3Hn92SH4g9VJtxhn8Z/c
         eJw73DChVT39u/XdsKu3/8vQ1bhHxyNjPDbNiCZkTqgWGzleJPNMtf8ntIVP1ClkgUsG
         GQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=C+ItuVO+f7eLDRoDEyLvroSuDmMqmm4CtvwoE5R36Xo=;
        b=cC1Xyrgk9ixq8DKSwuNuM0Rm046P+2yABu4EibFd3nB3TZYrQQo/geR+Q8MZLK93cn
         AyuXMF5ISbHX4nKOI+SbVI1am+bqpg6tF/eEagn+Je8zhkzvMBG4p6SNvD6+PgX/SZqO
         UQXbBzH6v0rowsabmRu7fd5IEIq643XAa1JCeJPsRE7hTSml+PlLA8k2fkAdOQujQgev
         pryFPCxtmpGEVg8/9fOR2BPygWJOViH3KFtcnAieSpZfazllK7qyzqOafJUzwziTvnIm
         SCjL0UHsp7pxS/otpO6M706RHaqnGrWBQcvOB2fq3LtP9W5WIsLR3pcepCaEDAT9sSRn
         AmYA==
X-Gm-Message-State: AA6/9RkLF/Agaa3RQBZ3/M755PcqrUiZYHKrztVSRZn19soFhP2qHfkE+8fWFA0/zw8kxw==
X-Received: by 10.98.3.67 with SMTP id 64mr34787040pfd.14.1475915264611;
        Sat, 08 Oct 2016 01:27:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id p7sm36442760paa.3.2016.10.08.01.27.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:27:44 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:27:41 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 11/13] staging: wlan-ng: renames CQ_currBSS to avoid camelcase
Message-ID: <20161008082741.GA9504@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased variable CQ_currBSS to cq_curr_bss in order
to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 19d1c06..6acdbce 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -455,7 +455,7 @@ struct hfa384x_downloadbuffer {
 
 /*-- Information Record: commsquality --*/
 struct hfa384x_commsquality {
-	u16 CQ_currBSS;
+	u16 cq_curr_bss;
 	u16 ASL_currBSS;
 	u16 ANL_currFC;
 } __packed;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index bb75a92..12fac7b 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -372,7 +372,7 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			qualmsg->noise.status =
 			    P80211ENUM_msgitem_status_data_ok;
 
-			qualmsg->link.data = le16_to_cpu(hw->qual.CQ_currBSS);
+			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
 			qualmsg->level.data = le16_to_cpu(hw->qual.ASL_currBSS);
 			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
 			qualmsg->txrate.data = hw->txrate;
@@ -1947,7 +1947,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		}
 
 		pr_debug("commsqual %d %d %d\n",
-			 le16_to_cpu(hw->qual.CQ_currBSS),
+			 le16_to_cpu(hw->qual.cq_curr_bss),
 			 le16_to_cpu(hw->qual.ASL_currBSS),
 			 le16_to_cpu(hw->qual.ANL_currFC));
 	}
-- 
2.10.0


