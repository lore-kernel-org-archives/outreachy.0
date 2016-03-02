X-GM-THRID: 6257548049124425728
X-Received: by 10.13.242.134 with SMTP id b128mr21919072ywf.28.1456948939666;
        Wed, 02 Mar 2016 12:02:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.85 with SMTP id 82ls593203iod.2.gmail; Wed, 02 Mar 2016
 12:02:19 -0800 (PST)
X-Received: by 10.50.154.2 with SMTP id vk2mr1333038igb.9.1456948939129;
        Wed, 02 Mar 2016 12:02:19 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 12si5599999pfb.1.2016.03.02.12.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 12:02:19 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id a9so16683179pat.3
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 12:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TyC6VGV6uT0Njb0WC18u3lsIh2B7mK1Wl08Cb4iAQrU=;
        b=MfteLIxq9Wx1aw8z+X6sNkyBNPjwbthKNC4u5N39XE5xXGPlBCrOx44ofdja69W7ip
         gXpV5a2RQm/DWA+0AYbeuL96QOEg6bzdyV3O1HLgHRCt9S/64O+cHgFgpZQXrhpNxfpR
         UiYsajudFuSIRvrexmoXAYHqDJ+5kKvmuEFDMZBvf1BxpnTeWh6Yf7XvjTlEF1Xv5PgN
         lvG8a2o3fvi+zizTL9g1U442DijFWmSjS8nLb3WWTDtaO4j5fdUVTPUQUb2ORBHTn186
         UB+6V055Rhv6fYXMPm3ag9mk9TSNeeKakH2uYyGV42scxa6jFTPRi1ufFrOIApFTPHZL
         roiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TyC6VGV6uT0Njb0WC18u3lsIh2B7mK1Wl08Cb4iAQrU=;
        b=i7k9/zJgd8pj49Npsk6Dh000gg9qNPoEh8iMsjzzrbTOq5o0vJbwO8r+8oz/+7n5+O
         EMvRMgsP+a5UubHm/T45Mq9p5VJ5unvlfSccTgF9ZcyQ4FJoxlO2ZU3Vpf+SdaQyEXsK
         N611gHTrbuQjCGXCpLNuduKVg0Zq6zEy71sv2D/5VUDs26lKunsyjhBEN9rmTzb3mlHE
         4B9cAu0kkK6YdEPkapDsztYgQIhPKu/FoIPLVIk3I7frTSaf2xu8UkTVd+vbaWQCDBwj
         iCqNHT3TeQNhorxMRAWf8xMY2qg/JKB0Dg03JVmQ3Qf0/OC4nGe+K+HpeqP+Ay8qYsgD
         CW2w==
X-Gm-Message-State: AD7BkJKQxcQqDnJc+zfwYu/LEbNmBWYQQoKHXKr2zRyGccPfzlW4yh5JYmBvjn7R21h2ug==
X-Received: by 10.66.226.238 with SMTP id rv14mr41346861pac.41.1456948938858;
        Wed, 02 Mar 2016 12:02:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.195.191])
        by smtp.gmail.com with ESMTPSA id x88sm54911994pfi.66.2016.03.02.12.02.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 12:02:18 -0800 (PST)
Date: Thu, 3 Mar 2016 01:32:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: Remove unnecessary test in if
 condition
Message-ID: <20160302200213.GA16098@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary test on `rc` variable since it has already been
tested previously.
Fixes following smatch warning:
drivers/staging/lustre/lustre/llite/llite_lib.c:1331 ll_setattr_raw()
warn: we tested 'rc' before and it was 'false'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index b2e8475..f251803 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1328,7 +1328,7 @@ int ll_setattr_raw(struct dentry *dentry, struct iattr *attr, bool hsm_import)
 	}
 
 	/* RPC to MDT is sent, cancel data modification flag */
-	if (rc == 0 && (op_data->op_bias & MDS_DATA_MODIFIED)) {
+	if (op_data->op_bias & MDS_DATA_MODIFIED) {
 		spin_lock(&lli->lli_lock);
 		lli->lli_flags &= ~LLIF_DATA_MODIFIED;
 		spin_unlock(&lli->lli_lock);
-- 
1.9.1


