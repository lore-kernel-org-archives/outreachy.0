X-GM-THRID: 6339007957624160256
X-Received: by 10.36.123.143 with SMTP id q137mr762645itc.33.1475920191051;
        Sat, 08 Oct 2016 02:49:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls6472351otd.11.gmail; Sat, 08 Oct
 2016 02:49:50 -0700 (PDT)
X-Received: by 10.157.29.38 with SMTP id m35mr5887685otm.7.1475920190643;
        Sat, 08 Oct 2016 02:49:50 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id d11si2746998pfl.2.2016.10.08.02.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so3948102pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=edBY9FhaqqIKiPwGFhNSgl6rGlLXG+6kyH9tLOw+VLE=;
        b=w67tHak7Z2QZJRT6WTziS4+drIUIlgYijZR42gW15CASdCIVHmtAiutqRJvacfh7KH
         ZcddUR43cAca25u2JHqcZ/BEDCeXkZWVc89RkGvnQVWHcvZOzyQ23lIFrav1UZhUTPKB
         RS3GMt54TFpIvkDrVUKaeJRDbHR8GSbYUSm4ZeLsdoSSAtSbulqYaMlo3z/7XUwdB9MC
         s7Yvlmd0aNm3GBDrm8vi2tiT8DiKsZAujXsAq/8ZMSUYg8tROIQxLhhUS/w+NxyiCkBK
         eh83ytOxcfIzJglsp1jk2TcGmop21eW/DcGsWK+tc4lDwgfbd+XmoAO1gWQI5W4f4UTJ
         VkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=edBY9FhaqqIKiPwGFhNSgl6rGlLXG+6kyH9tLOw+VLE=;
        b=LvB8FJRUUbIg4gXcTZHO9ENfrMRpLywmMk4w7i7AcsxQfQ7sDVmTb0aK6mGS4qseer
         D2wNc6nDaPNJ/qC784vXo5gZdCGgTn3zpSf8BROm0EbUxdSFDioOiG+x3iK3Oe67VaIO
         OpJPLAnM1Bs+AOGW800mS/fHi8aYhowQZOZewBCbTEyH/vb/qlytSg4w2UdV/8CNPZPQ
         xKaghBSOxXIRYh5YmEtUiqUkmwW5+Z/ZIfm27Fz9RBZ0MWc4NZPzRevbZqgpDWeh2yRB
         g7oiotfsasYAn4HgcbgF4mY13dW48XF6SHcMu0H+nMG4xv4fxmTL4e7a9FadJ/gHunmS
         a0Pg==
X-Gm-Message-State: AA6/9RkKZq+mIRw/fUVlL+w9V0KmAgMtt8YRVtlpt+o/24UpJaWWvufVLXBBl86Y2pAsqw==
X-Received: by 10.66.63.102 with SMTP id f6mr10355648pas.55.1475920190455;
        Sat, 08 Oct 2016 02:49:50 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id m11sm20003544pfi.30.2016.10.08.02.49.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:49:49 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:49:47 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 13/13] staging: wlan-ng: renames ANL_currFC to avoid
 camelcase
Message-ID: <20161008094947.GA14396@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased variable ANL_currFC to anl_curr_fc in order
to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e00ebf3..612f928 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -457,7 +457,7 @@ struct hfa384x_downloadbuffer {
 struct hfa384x_commsquality {
 	u16 cq_curr_bss;
 	u16 asl_curr_bss;
-	u16 ANL_currFC;
+	u16 anl_curr_fc;
 } __packed;
 
 /*-- Information Record: dmbcommsquality --*/
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index e20517d..b10c93e 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -375,7 +375,7 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
 			qualmsg->level.data =
 				le16_to_cpu(hw->qual.asl_curr_bss);
-			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
+			qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
 			qualmsg->txrate.data = hw->txrate;
 
 			break;
@@ -1950,7 +1950,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		pr_debug("commsqual %d %d %d\n",
 			 le16_to_cpu(hw->qual.cq_curr_bss),
 			 le16_to_cpu(hw->qual.asl_curr_bss),
-			 le16_to_cpu(hw->qual.ANL_currFC));
+			 le16_to_cpu(hw->qual.anl_curr_fc));
 	}
 
 	/* Get the signal rate */
-- 
2.10.0


