X-GM-THRID: 6210537290712743936
X-Received: by 10.141.23.137 with SMTP id z131mr36627847qhd.7.1446003835892;
        Tue, 27 Oct 2015 20:43:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.36 with SMTP id q33ls4781813qgd.62.gmail; Tue, 27 Oct
 2015 20:43:55 -0700 (PDT)
X-Received: by 10.140.234.135 with SMTP id f129mr37703492qhc.9.1446003835317;
        Tue, 27 Oct 2015 20:43:55 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si4617268pab.1.2015.10.27.20.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 20:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so242271964pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 20:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xMMS9lajKz/Uq55Zq2umeGJZL4E0nZHmN/1WWk0MZbE=;
        b=JBRb73jnIWougN8YEQJbqtRDgovrXw/fpP70/8kxyhwywQ7fPHKCj52VxvA+GMSrmm
         cW7oqj8GtPKCbcvXL3uhAqlJ/6Sq4Wa7kAQzfQEtsKNffR++NPj6qeRGTmfKfjFYrYjI
         /HVoozS84xxJp/iQTPOwuO7iIuml75u/UY3uGTOBz1XPF1s5j5hb9r9umIgVJbcPD335
         4F1ROqJphZGQ/oW+m/9xf/oma1TaGie4EfqEdRViUokSSuqJNAqRQpSGtNeRBd/6nQKM
         4iaM2yjRjdrnTVLJdxA/Z+wr5E0iwlHebihK7QJOmKdriu6XC6OkK/O4a14VdSTx0AFi
         TlyQ==
X-Received: by 10.66.220.100 with SMTP id pv4mr32338927pac.46.1446003835088;
        Tue, 27 Oct 2015 20:43:55 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.204.253])
        by smtp.gmail.com with ESMTPSA id k10sm42247257pbq.78.2015.10.27.20.43.54
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 20:43:54 -0700 (PDT)
Date: Wed, 28 Oct 2015 09:13:51 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH 2/2] scsi: bfa: Replace struct timeval with ktime_t
Message-ID: <5acb9a010438369d26ce6be07b8ae90974ed24f0.1446003130.git.amitoj1606@gmail.com>
References: <cover.1446003130.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446003130.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038 by replacing it with
ktime_t.

This patch changes do_gettimeofday() to ktime_get() because
ktime_get() returns a ktime_t while do_gettimeofday() returns struct
timeval.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfa_defs_svc.h | 2 +-
 drivers/scsi/bfa/bfad_im.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_defs_svc.h b/drivers/scsi/bfa/bfa_defs_svc.h
index 638f441f..e7acf41 100644
--- a/drivers/scsi/bfa/bfa_defs_svc.h
+++ b/drivers/scsi/bfa/bfa_defs_svc.h
@@ -1454,7 +1454,7 @@ struct bfa_aen_entry_s {
 	enum bfa_aen_category   aen_category;
 	u32                     aen_type;
 	union bfa_aen_data_u    aen_data;
-	struct timeval          aen_tv;
+	ktime_t                 aen_time;
 	u32                     seq_num;
 	u32                     bfad_num;
 };
diff --git a/drivers/scsi/bfa/bfad_im.h b/drivers/scsi/bfa/bfad_im.h
index f6c1023..b37fcba 100644
--- a/drivers/scsi/bfa/bfad_im.h
+++ b/drivers/scsi/bfa/bfad_im.h
@@ -131,7 +131,7 @@ struct bfad_im_s {
 
 /* post fc_host vendor event */
 #define bfad_im_post_vendor_event(_entry, _drv, _cnt, _cat, _evt) do {	      \
-	do_gettimeofday(&(_entry)->aen_tv);				      \
+	(_entry)->aen_time = ktime_get();				      \
 	(_entry)->bfad_num = (_drv)->inst_no;				      \
 	(_entry)->seq_num = (_cnt);					      \
 	(_entry)->aen_category = (_cat);				      \
-- 
1.9.1


