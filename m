X-GM-THRID: 6339007883422728192
X-Received: by 10.31.169.22 with SMTP id s22mr2068086vke.34.1475915285183;
        Sat, 08 Oct 2016 01:28:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls1990122itg.16.canary; Sat, 08 Oct
 2016 01:28:04 -0700 (PDT)
X-Received: by 10.107.183.151 with SMTP id h145mr6010544iof.61.1475915284733;
        Sat, 08 Oct 2016 01:28:04 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id d11si2703281pfl.2.2016.10.08.01.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id qn10so3847483pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dKT43XocADik2ofpAx02+7oDfv0RPnlbdSiPDIlwgrI=;
        b=uVCvgJwVdKp8KDYD1VRRH99GpB7sXy+QC9gcUbQg1td2nkiIFAHsEeRV+w6VEI6D+9
         h/qOn5MuILNSpUhdmpJXV5yvHHgJFvOg/qUHKL1xeT0yyw18vRZi1KTEy6Rx47mzJsMb
         4kE02GeMrkUoPALZkNqolBcBd3hTpJ3drXroyqpNPDSIyGgpFgEOA+Vl/ukUrBJo9UNK
         ZtR2IeP0ax8TkWw0tcp13k9Ep/tOVw4y1YugDaBJBi9AH1erNkWahHzfiu537wvXoKCo
         JBELpWRSRzxmnhgekQPfZR/u72gtMEA3e9p8N3ifykL3e1kMIjJxT+ku2rZjVVNjab4Q
         Vo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dKT43XocADik2ofpAx02+7oDfv0RPnlbdSiPDIlwgrI=;
        b=HlRpk3LuJHLUaYciU1hKnRPJ8zreUAr6bON5kjrNRKQeW6nBL99U9E0GnWTjyBizAf
         13ru+CqbjbAKPyZ42gG8Yi4BXgv7KvjTitOix+qeyrssFfR9gl4hUySPb5Ed+657SsmR
         JBidQ65jBSUhHgqX5GkoNPPAF2yLJaDPMNyiZip6+rkNnTOJfBnzTYfZX/xBh/nfL6GW
         JGLx/Yq6e616GRbk/XoGR9ISxy3UIXvU6qKIf4g4SlLSBkVWC7s5o6o9yng1RPj47VVi
         fyjDHt3BCcihXhEzzZ0s6jWy2HIgWdN69ZyNxkKvuzsdI8HjMT4a8VQgzptc9dldkphe
         SvTA==
X-Gm-Message-State: AA6/9RlSFURwGdu0fZI6tCGcwOzFs4Hj08SZcF/DfDNY+p5zjzrhvzuP524DOX9ZhZzy1w==
X-Received: by 10.66.191.166 with SMTP id gz6mr36501260pac.8.1475915284552;
        Sat, 08 Oct 2016 01:28:04 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id aa6sm36399783pad.46.2016.10.08.01.28.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:28:04 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:28:01 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 12/13] staging: wlan-ng: renames ASL_currBSS to avoid
 camelcase
Message-ID: <20161008082801.GA10694@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
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
index 12fac7b..af75f6d 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -373,7 +373,8 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			    P80211ENUM_msgitem_status_data_ok;
 
 			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
-			qualmsg->level.data = le16_to_cpu(hw->qual.ASL_currBSS);
+			qualmsg->level.data = le16_to_cpu(hw->
+							  qual.asl_curr_bss);
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


