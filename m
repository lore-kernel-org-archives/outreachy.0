X-GM-THRID: 6339007795957858304
X-Received: by 10.66.17.137 with SMTP id o9mr5259833pad.124.1475920161657;
        Sat, 08 Oct 2016 02:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls2555523ota.26.gmail; Sat, 08 Oct
 2016 02:49:21 -0700 (PDT)
X-Received: by 10.31.58.20 with SMTP id h20mr6096334vka.15.1475920161245;
        Sat, 08 Oct 2016 02:49:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 80si2871528pfw.0.2016.10.08.02.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hh10so3959927pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V8shGunmybOj+gSL45pDJdjkSHt8KQQqKK/B5QeePwM=;
        b=JviGVmQNTV5myFw7ywDTphQq8e5YYiiQyXFZRAjmyNSXsIA6Dpa1u1RDsyNe4ym9xp
         C3TOvVk9MzzU+SqGUvYFJYW/WQi6foQSzfN1p8mxSL2ILc+Yn+VpQylPO4NNnK9Dl4gY
         aR8kddqANEGwJQlZ76vbWAta6pU7n68ActUZ5kmHG+Md5jH+WshPrvM4McAcuo0eMee/
         ZZkIBhndQkJ/mcQqT2jLANmZWRnKVBsyFynHvsQFQds3aQTbN6ov46rt2Q15nf980KBI
         qCWr/AncUMJGwAY3ShAA+nz1qw4XVFn8RscXzw8KWn82uD7ajt6+yZ9eD8KcROeMpMIB
         moRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V8shGunmybOj+gSL45pDJdjkSHt8KQQqKK/B5QeePwM=;
        b=WlMzQJw5jhHv9wyfqqfdJAZi1t5S5op9worSA90JWhkaBHV9Z8UozwOuk590WRyzAM
         GZZsJfeXSDVDp4MzErub002vSW/6br0pXz64los/q6D5Z/84B4OmOB1Q9NzswE5Bzel+
         4MIixSoMB5t55kOYb95GreGcp2LzJO3J7CgMzQ0oahKJ0Gc77CWRFNnibFFB9AvCMb6H
         o72gNOjSIuvxympZbMjG3oWtZkgT1lAXoCCHXy90ulYacvyxla/nTcn+Dr1NM8RIZ/bn
         cv/cAMoLxxqOsiF+1csz8Dp931AiMLm8HLOZ/0LENUIVWIz7owddJFJIudAWfv9VIrXQ
         CGaw==
X-Gm-Message-State: AA6/9RlUlizinJe6nXyslgdoArHF5NEEbSCykeXr1+pITqOXUgPJR3YwDczF2FEv1esjNg==
X-Received: by 10.66.221.162 with SMTP id qf2mr7547296pac.144.1475920161028;
        Sat, 08 Oct 2016 02:49:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id d19sm19994870pfd.59.2016.10.08.02.49.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:49:20 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:49:18 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 11/13] staging: wlan-ng: renames CQ_currBSS to avoid
 camelcase
Message-ID: <20161008094918.GA14057@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
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
index a838f9a..bcf2133 100644
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


