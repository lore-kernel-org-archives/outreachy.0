X-GM-THRID: 6203527091850313728
X-Received: by 10.182.28.73 with SMTP id z9mr9589940obg.45.1444371205751;
        Thu, 08 Oct 2015 23:13:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.230 with SMTP id l93ls1270767qgd.87.gmail; Thu, 08 Oct
 2015 23:13:25 -0700 (PDT)
X-Received: by 10.129.154.137 with SMTP id r131mr9653018ywg.0.1444371205160;
        Thu, 08 Oct 2015 23:13:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si3466pbb.0.2015.10.08.23.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 23:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so77355892pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 23:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LMLnP1NsHVTfkw4UVYA9H6+5weDNpR6eoxfrfyjmaas=;
        b=vNL9mNbKkV99J81AhabpENXDAQHyP/fBfUTI5a1rBb5PRjvqgdcMJdk1VmEoiMNzkV
         lYXCrjDnmHHsnf6gynqiM8Gyl8j9xhnpG0WxXotFt2LFidHmGsgPCYdYufP9uwr6BMgG
         PQ3piSzNjyN9rLQt1f4RR3vPO0F/7V8YbxxL7+Zodd7j40pe3KbI9YDLOHFbpde2aRmw
         kmN5vmOWaVJ7BFbIATpCGddnfKIO4NJqT9wKoIc+i5vL46ZMfHXxwib03ErEeiodhCqO
         WOfW8hAEeNOOXDNeQCQaT5rzqra9R4wiGHvIfMEeih6rOLLnqgYaVDOGBu/Ro5GUznEk
         Evgg==
X-Received: by 10.66.144.135 with SMTP id sm7mr13558583pab.106.1444371205023;
        Thu, 08 Oct 2015 23:13:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id iy1sm49071104pbb.85.2015.10.08.23.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 23:13:24 -0700 (PDT)
Date: Thu, 8 Oct 2015 23:13:23 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdmwm: move constant to right side of comparison
 test
Message-ID: <20151009061314.GA31693@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constant to right side of comparison test per checkpatch.pl:
WARNING: Comparisons should place the constant on the right side of the
test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 6e8dbaf..69f00cc 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
 		}
 
 		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
-		if (T == TLV_T(T_MAC_ADDRESS)) {
-			if (L != dev->addr_len) {
+		if (TLV_T(T_MAC_ADDRESS) == T) {
+			if (dev->addr_len != L) {
 				netdev_err(dev,
 					   "%s Invalid information result T/L [%x/%d]\n",
 					   __func__, T, L);
-- 
2.1.4


