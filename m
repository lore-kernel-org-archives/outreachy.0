X-GM-THRID: 6254162958177271808
X-Received: by 10.129.158.2 with SMTP id v2mr28117267ywg.42.1456160787932;
        Mon, 22 Feb 2016 09:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls1686397qgd.43.gmail; Mon, 22 Feb
 2016 09:06:27 -0800 (PST)
X-Received: by 10.140.140.18 with SMTP id 18mr810852qhm.26.1456160787513;
        Mon, 22 Feb 2016 09:06:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 12si3206034pfb.1.2016.02.22.09.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:06:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fy10so93852859pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=61T69xXoZAoTxmRF68iS8kKJgW8SlcAsQbqbCarFG1I=;
        b=MXsi1OL2h5Mm1k+EpeQh71YzC748vJbLrLw37cMb6I2iv84l476NbaE2AejAKVhdr1
         G+Diyws4llpxHAuj+s/Mq+8N5fRYQ8nKa5Occ/aLLCyyPjKTyWOuaDSQZ8m+GeodbVp8
         alc5XLIjckAlj+7iEKX8hBfZQwhyjVijtStJuwZKvpasOuhc7+aNZ9vQhiyOx9siykM/
         UkK4UoO/X8/xxdEzgbHWQs5V4enFMge1C+/VAV6cPtPPcGdlTVXri16FOMd4T8JgD9+Q
         UZhJFTVjhq1migffRh0y3MbTXuaAsxZtrsU605ZzudS5uXtIfGmYiTPxQAof56oF59lW
         HXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=61T69xXoZAoTxmRF68iS8kKJgW8SlcAsQbqbCarFG1I=;
        b=LtpP0EwUwUtrjMXKoNtgNqoavE55xFY79uHjxGH7RjdgNF+PvhUMzXHMwVlCHzm1cv
         xLnA95Uv2f6UmISok39nfp4b/CvRQ30Jn/0WLY8IFBSIxlywMCA/ofJu3ZyBB5/ar0mN
         fr/csEMpCVi5QC5THUepy4G6DA2jVyPidrj66F9BsvNKXO7vqapsFK9mmTK50M8yZSIx
         sRZW8yXtxKi2Y62kGq998LH+D8jVkkjSsMkb3zFnsGLN7NzlaE+2yN+2Ac4VvPs78fvD
         ChCebm4uzFU1qzQXRDIq/+7DKXB6+leYZGVkxUeYvDindgCxI9+p1uKvZVQvRqvuYbXr
         X19w==
X-Gm-Message-State: AG10YOSt0LEvyrHi1ttO32FoVtJLK0+jk3PUC7wMBw8C6yLRnGWPK/uY/uKJcY35dytItg==
X-Received: by 10.66.226.238 with SMTP id rv14mr39612859pac.41.1456160787372;
        Mon, 22 Feb 2016 09:06:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u5sm38224568pfi.15.2016.02.22.09.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:06:26 -0800 (PST)
Date: Mon, 22 Feb 2016 22:37:00 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: Remove unnecessary parantheses
Message-ID: <20160222170700.GA26089@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed parantheses on the right hand side of assignments as they are
not needed.

This was done with Coccinelle:

@@ expression a, b; @@

a =
- (
b
- )
;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 908b84c..8850898 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -458,7 +458,7 @@ static int set_group_key(struct rtw_adapter *padapter, struct key_params *parms,

 	pcmd->cmdcode = _SetKey_CMD_;
 	pcmd->parmbuf = (u8 *) psetkeyparm;
-	pcmd->cmdsz = (sizeof(struct setkey_parm));
+	pcmd->cmdsz = sizeof(struct setkey_parm);
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;

@@ -2197,7 +2197,7 @@ static int cfg80211_rtw_get_txpower(struct wiphy *wiphy,
 				    struct wireless_dev *wdev, int *dbm)
 {
 	DBG_8723A("%s\n", __func__);
-	*dbm = (12);
+	*dbm = 12;
 	return 0;
 }

--
2.1.4


