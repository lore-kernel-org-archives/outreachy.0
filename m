X-GM-THRID: 6254956898139766784
X-Received: by 10.50.43.227 with SMTP id z3mr22694305igl.1.1456345640241;
        Wed, 24 Feb 2016 12:27:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.136 with SMTP id b8ls647303qgb.96.gmail; Wed, 24 Feb
 2016 12:27:19 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr40823741ywa.9.1456345639815;
        Wed, 24 Feb 2016 12:27:19 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id yd9si664934pab.1.2016.02.24.12.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:27:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id a7so196219pax.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3ZKR88LmC+dVd6a8NFnp8LoWi7NaYsre5empbdSbA00=;
        b=tyxiMuHbBvopEopcuE6b6EVrpCYVDjc0fb1JkLIAWAb52FSHdpr0BXK4l602O6A5bC
         628sDy6wK8IeWqRsx7hAYWu1a6zaYV8eHQIGdeF7w9lqwDB67jv/JY8wOBZoxfIYemlg
         eC0jxCvldod/m9a3nHToMyFrDKUsWHeLLfxrXXHWQ/Nos9z/ujLEmm6JYaaxarKRjhnH
         7rWOU//vJ//ncZssWmH6vkEk0tIeXMp8OivAgILXMV7Zm2wsEjDwzcx/t5BZGdkj0Lwu
         yl9HFrY7BYm59ylPG9g/x3BpVz3LAAmWtS6WHHStOUzdvdFueZL2oG9SPudCkaTeO+3w
         fjew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3ZKR88LmC+dVd6a8NFnp8LoWi7NaYsre5empbdSbA00=;
        b=h7QgkvujGzr3S4st7bXLme/opl3vJ97ZZKbaX6s6s3vCWoqOEHzVTXWTvZoyZv5p8Y
         R1TOYFDqlDk6Wj043pkZ6hXwLn9TTAYEOCI/VCTo8Va/Ku3AWNwOglc1ksKDtZipU6cr
         7OSqlWy4Jvis9Q3glzEflHewLNPMUV8zlYomWODbTYJiqGaQqblYiDFwWkCaTnUCySlE
         uJ5PZpK50u10ab5IkwfetA4nQBQ2RzRni0ybUmVtI77df083UTz/aKg3qbnxERGEvIzF
         AxLMRORIpOiz5LPNDXkbJv8u5MRqdhDV75GvuzRNOmpjLie5UaqPiax/G34rd0aV0BDL
         /aAw==
X-Gm-Message-State: AG10YORU5FOYhetBfvnTk4+5PW8w3bRyxnTMez+9lnzzs5pYOKh/Octm0Wo8dwzyOdRldg==
X-Received: by 10.66.235.9 with SMTP id ui9mr57648216pac.135.1456345639639;
        Wed, 24 Feb 2016 12:27:19 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xu1sm6972991pab.31.2016.02.24.12.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:27:19 -0800 (PST)
Date: Thu, 25 Feb 2016 01:57:54 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/8] staging: wilc1000: Remove useless return variables
Message-ID: <20160224202754.GA22999@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 391173b..04518d6 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1330,11 +1330,7 @@ int wilc_wlan_cfg_get(struct wilc_vif *vif, int start, u32 wid, int commit,

 int wilc_wlan_cfg_get_val(u32 wid, u8 *buffer, u32 buffer_size)
 {
-	int ret;
-
-	ret = wilc_wlan_cfg_get_wid_value((u16)wid, buffer, buffer_size);
-
-	return ret;
+	return wilc_wlan_cfg_get_wid_value((u16)wid, buffer, buffer_size);
 }

 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
--
2.1.4


