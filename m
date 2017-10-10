X-GM-THRID: 6475354407104937984
X-Received: by 10.98.234.15 with SMTP id t15mr1317311pfh.11.1507660934950;
        Tue, 10 Oct 2017 11:42:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.26.23 with SMTP id a23ls441049pfa.12.gmail; Tue, 10 Oct
 2017 11:42:13 -0700 (PDT)
X-Received: by 10.99.95.140 with SMTP id t134mr1502376pgb.88.1507660933753;
        Tue, 10 Oct 2017 11:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507660933; cv=none;
        d=google.com; s=arc-20160816;
        b=yPhQWfA+cz5LTutcFKNwKqJkHG4qYiQAwfR2dTHucdHnG7tkJSiozaSEg7WaNzI4Nb
         tTHXloFfdWvfymra3Gurfmw34PT1OhSId1tw8VSwTvTPPNi8zWUuR7f6IhQWLktHU4lW
         MBMgbYkgw5en4mjQZ9bdqnjuvtm0VF5GK3hm/kRkKCg+8rkxepSf+8YZpEp3uSx5rgRI
         iFSemu0rWM8NoxHSku+eBQUXHfnmdDyTS0vbVfILbawlDxbcPurKT7fbi2Reh2bSlojS
         GH/cYeIBrj+jRHADSR5Ac+iWuzmdCTcc4679U3NqjsoA2cFBF3HW6gf8Br8HPdv5p+Jy
         fUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=SF0H01tnn/v/BITmxd9uF7WWHWVpidhnecjLXVGnQnk=;
        b=NKHNvto77cr+mizBYc9TgGou1bx73afCbvaZ11PAIRm8Qvylbudu3RrVzhrSqakbsv
         JPYbIsVuLppq4/G6jKlZkSkcXTHs6zg/tCxh/5VdfmtEp8KYxPKmT9fRsg9WfsFjqCxa
         LgoL7tjuQoMEP+ZNaM87GnUd9jcQq4OoYmcvBWbHX05k+Ouq8CVq9wZFwh1HyhkUjUjE
         AYezATuvJCUozpIaoLYYNXhbA38+GsUIIV+o9bqZanOyOGr7bu/nQHs0cVgZ4rIkB5RI
         8g4AfUz3YzqqfDXqAEXjUCrOd9Vdc1PaSLhEussqw6vrFEulsjoF4dq5W0ZBQHdsHW8q
         KB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WcRq1fnL;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a28si1292199pfe.24.2017.10.10.11.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 11:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WcRq1fnL;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so37474355pfi.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Oct 2017 11:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SF0H01tnn/v/BITmxd9uF7WWHWVpidhnecjLXVGnQnk=;
        b=WcRq1fnLgHyXebHbyNUYZLwj34CRIiB4jvvZlI3UNdZanPdouG2uszBr2JEeFxkgSC
         E8b64K8UW8ijbvdrT0akyGZoAKV+GpX4IHEQCNhLqu1/7UYY7dVdRF+j8YGHMTrVD3MZ
         b0Ayy1X8oDDBJCeXDol8f3ypRXeoq9FWEx2VztRYSI3TdxSzF5RMiUDObMSRWGXr0U4k
         Yrn+kiGBF4KyPmKUEXamue79CeXNdN5KbyrA9UQUPA9anBGeuX409sKYfqfZUoIBUe51
         8iMioqrrqs+Sd9f8KoGfnSgF37We+FavTa81tNUxXExhbTokK59Hkg0iG3zOAdVu13m1
         tvow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SF0H01tnn/v/BITmxd9uF7WWHWVpidhnecjLXVGnQnk=;
        b=uiP02sXt+vN8e0MAJ2AquG4o3aiGMgmgaK4yR8Erj96R2SDkJDq36wWogKmdKE7dhJ
         FNo9tWrUp+adQyv7o0MvKW7lHaGBHMGWt58t/BtiFf2x95JpvDclIIh5QDPhXMkWcK7g
         vVz/K1qdDgw9WcUFBZCEgghhLeooAuf+/98UvPWdo9rtvbgopu5lFIlDhDvsDzOxc8zq
         Nj7zTm2Oim8j1FWMSNZSm6tD7yxugNB6t+5NLfpLvYlivruPAwN3pK9bk/lO7g74F7jt
         qBc5WyPyu/Q5gb/oUouYdVmwzk6eNAEDK5ez1DLwCN6cPGz91C5XImNAFEWFV31f0OAi
         CGXA==
X-Gm-Message-State: AMCzsaX++enSKpxdnwfQ2NH4OqiFU54bVUvV87vlff6UM0vul3tnf/S0
	xn8LAlDJlTVRY3T3QmE5Tc4=
X-Google-Smtp-Source: AOwi7QBpuWgOYOxtQ/rttr/2jm9ordi1f8RAivvsga+5+BVl8B8E3FC3BmsMrDPRQFWtTahazO1xIA==
X-Received: by 10.84.131.36 with SMTP id 33mr13243704pld.100.1507660933473;
        Tue, 10 Oct 2017 11:42:13 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.36.1])
        by smtp.gmail.com with ESMTPSA id b23sm23967268pfm.148.2017.10.10.11.42.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Oct 2017 11:42:13 -0700 (PDT)
Date: Wed, 11 Oct 2017 00:12:07 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Rob Clark <robdclark@gmail.com>, David Airlie <airlied@linux.ie>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/msm/mdp5: remove less than 0 comparison for unsigned
 value
Message-ID: <20171010184207.iv3dinrtwvbv7fei@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

pipe is an unsigned int and less than zero comparison for unsigned
values is always false.

Detected using the following cocci script:

@@
unsigned int i;
@@
* i < 0

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c b/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
index f7c0698fec40..7e829a8d1cb1 100644
--- a/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
+++ b/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
@@ -599,7 +599,7 @@ static u32 mdp5_get_vblank_counter(struct drm_device *dev, unsigned int pipe)
 	struct drm_crtc *crtc;
 	struct drm_encoder *encoder;
 
-	if (pipe < 0 || pipe >= priv->num_crtcs)
+	if (pipe >= priv->num_crtcs)
 		return 0;
 
 	crtc = priv->crtcs[pipe];
-- 
2.11.0


