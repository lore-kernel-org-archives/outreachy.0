X-GM-THRID: 6528797740675104768
X-Received: by 10.107.213.11 with SMTP id m11mr6778083iog.121.1520104180954;
        Sat, 03 Mar 2018 11:09:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.150 with SMTP id p144ls968620itc.9.gmail; Sat, 03 Mar
 2018 11:09:40 -0800 (PST)
X-Google-Smtp-Source: AG47ELth3mPusb5mFC9hDuW6/BdhKLyhUJcLOc4aTM5P+dxr9dru8+QqHXNxu3MAGZBcgtvGx4wM
X-Received: by 10.36.6.199 with SMTP id 190mr1210949itv.28.1520104180069;
        Sat, 03 Mar 2018 11:09:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520104180; cv=none;
        d=google.com; s=arc-20160816;
        b=AYUT5GIIARV1DAgywupVmyp1xmDc+hxZacETZEPNv0dp05sj3RQS+VZMC6WIuSWsts
         aWu9KIZQ3MOsvLjfU9s2nI1ONQZ5ZGAs8+Ie+jtbi3rgI8ZwvNLIRufZV0+myoBG9du6
         JyQ0xWR6Uf8tOd3pvW90NS2CYoWvApf745/oU3t/m24vyd6wxIbLuAtj2owx40mEZbbR
         o34JUKvYIGJLUO5OkEoitFtEOBqg9nJ7S7MA1jgbOgVLPMTDbmv1ei73UIU2/tyTnkHj
         84Ov72tSe3hv10kaOISx98wKBgvIo30PHwuxPa6mxedjo31gSG44ix94mzj0QgEHMdn+
         YjIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=KqX0CRvQ+2lrUvS/nMVrULclm15qXffNN1dR2NrXn7M=;
        b=txIKy+nwAwREivq4QJB6F8RIK7a0asl7X7vIVrEkqHghbnFQoNqKxrzvRPHWl8jWKk
         qt/hZQlHKX0Q92lV67KWySp4oCXAV3DdyLfikrpCA8hU8w5QvPo1CnnFONlf58s+EOWS
         V51f8i29vi48ViwHA3kkWu44r7EZyM5qmZoFVeN90v6173YK4m9ROLJ50K6GsfR9+oey
         AdZgXTex4euk12+6Xk+Z10UMwAidaeR1NF/GzXNBNOKx2Fsj9ZqvEetnk0j5YwEfoLHu
         sEfCGjPAescIEdm735QWRaHxnpiu0GknMpzsTG4jKW7dHDy6BJTAfbJVHm37vO7MYgtk
         61iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sdRqIPXF;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f20si240814itd.4.2018.03.03.11.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:09:40 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sdRqIPXF;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i133so5155034pgc.12
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 11:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KqX0CRvQ+2lrUvS/nMVrULclm15qXffNN1dR2NrXn7M=;
        b=sdRqIPXFtAZu4jtlUDxExkZewkMhj4vBcbAV4Nb6wNTjYXBIhrXjonC/ZpYhbeHAZU
         icXxiLzDCszEbNWkOU8AlghETFCrPvhKSozAkLJjSCUtsTPdmjvFJoUetbU90beLQyaH
         cPXBpz+edJZx02RK3X30tZ85Fb1a37TzP2sS/vZBtbsgBXh2va1akdp35giZvnrcdSuO
         kGfJegWIAnF6WUxbD3XEGPBt+/rO2J1GozbHGSFtqSInA2ttlDwa6nnnsJKwkP01Y/+u
         7j+ZFIaXkk1loDuRHgNJdIdbI/DKcLlyMU7r6FXAlupPEc8qWSf7FCo5PdI5Hl3nvhz+
         4gPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KqX0CRvQ+2lrUvS/nMVrULclm15qXffNN1dR2NrXn7M=;
        b=jDTJaz6cevbTNkGbFw5wPk1XERgHf8LYCz1Qi18c/ZCuqHVllNxT+7QVhiEt7iCkLd
         WGsj34kg4dVoIkMA31niIqLZCi3xcVTKSqo+ruTYaYY4C+WAu9h7fDd138WQFEQDQILH
         NG4nUF7wsjc76zFc8m4BYPdEYRIe4KEMIGJJjIURYAKOm065voQbgN3j6lhMH8g/kL7X
         8pedg38875PJ0nzPSHfouAdZYnLNrqdyO2XmBdnzdMil/DxZ5ql/X3nGK5y2rqb4wtx0
         xlLXUU4bXee7s/6j28yhiDg3nnz9MvQjXFL5dDKhQz4RCse7l9MMV3vwR/P6QpaGmzNT
         oQqg==
X-Gm-Message-State: APf1xPAN5leAgrMdo3q+ydKyhQzucq38FpOVYB5PrSCoQKsZ6cavVQ0W
	YbQpFhLlqRvbiGGywmsw4ATL9Q==
X-Received: by 10.98.11.145 with SMTP id 17mr9960381pfl.150.1520104178899;
        Sat, 03 Mar 2018 11:09:38 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i11sm13648893pgq.34.2018.03.03.11.09.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 11:09:37 -0800 (PST)
Date: Sun, 4 Mar 2018 00:39:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: Remove nonessential semicolon
Message-ID: <20180303190913.GA4555@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove non-essential semicolon after 'else' and 'switch' statements. Issue
found using semicolon.cocci Coccinelle script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtlwifi/base.c               | 6 +++---
 drivers/staging/rtlwifi/phydm/phydm_rainfo.c | 1 -
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index c947def..eea0003 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -710,20 +710,20 @@ u8 rtl_mrate_idx_to_arfr_id(
 			ret = RATEID_IDX_BGN_40M_1SS;
 		else
 			ret = RATEID_IDX_BGN_40M_2SS;
-		; break;
+		break;
 	case RATR_INX_WIRELESS_N:
 	case RATR_INX_WIRELESS_NG:
 		if (rtlphy->rf_type == RF_1T1R)
 			ret = RATEID_IDX_GN_N1SS;
 		else
 			ret = RATEID_IDX_GN_N2SS;
-		; break;
+		break;
 	case RATR_INX_WIRELESS_NB:
 		if (rtlphy->rf_type == RF_1T1R)
 			ret = RATEID_IDX_BGN_20M_1SS_BN;
 		else
 			ret = RATEID_IDX_BGN_20M_2SS_BN;
-		; break;
+		break;
 	case RATR_INX_WIRELESS_GB:
 		ret = RATEID_IDX_BG;
 		break;
diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
index 8c08c76..e10a91a 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
@@ -142,7 +142,6 @@ void odm_c2h_ra_para_report_handler(void *dm_void, u8 *cmd_buf, u8 cmd_len)
 				     "SGI_support =", cmd_buf[7]);
 			ODM_RT_TRACE(dm, ODM_FW_DEBUG_TRACE, "%5s  %d\n",
 				     "Rate_ID =", cmd_buf[8]);
-			;
 		}
 		ODM_RT_TRACE(dm, ODM_FW_DEBUG_TRACE,
 			     "-------------------------------\n");
-- 
2.7.4


