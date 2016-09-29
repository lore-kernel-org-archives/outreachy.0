X-GM-THRID: 6335889192214593536
X-Received: by 10.107.37.10 with SMTP id l10mr1454590iol.18.1475189158848;
        Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls4410158oth.38.gmail; Thu, 29 Sep
 2016 15:45:58 -0700 (PDT)
X-Received: by 10.129.105.193 with SMTP id e184mr1069621ywc.91.1475189158527;
        Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si3792472pfk.2.2016.09.29.15.45.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so4099884pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Pel0sTICwTAttA9aOhXO9VyxTKipdcrfDBE6O5v92pM=;
        b=iNjCZCjStfyVCrbKpm/D8VKjvJMs73CjPGhv9YjRk09zjzuaWJhpfEfMpIJDxjkLdg
         SnoRlKn4KPJA1qy4u0z4wKD6dqFE/i1/ZFeosrYEQuzl+s/flxO8Fm84UsYjL3L6FEAk
         3O16JqFINMpb1kQNK7r1xfISpXL5aPQQi4BrLq4MPleEYeCGwfNjoasozAz9rcIVwPjQ
         yeHBVK1ZnSA8740zoqDzs3xdpfawljbZ+sDP3GV6d20uy0yhh1ulHw/aXYhFF9EJQx5c
         vMWjzNc7/g7vFMkuBRz4/mUnjPI2UfsoJnmOl0AB9VDAsX0362Ve9Tzs1lRA8Y+L0Q7O
         QIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Pel0sTICwTAttA9aOhXO9VyxTKipdcrfDBE6O5v92pM=;
        b=Oxsfbok1MictbGi7W2tsIzl2ZK+UlTg3gv46gbTFlhdA0NiuPlVrvdLWyJVl4zFkky
         Mvd8rM2a7h6zmAtzdVCaaVZmocvA5lqjOMdjDnd564awytaC0jjLjHA1gpEAx0OmXg/J
         jqUCbQRhj3DEnHvaJ/TD87lgYm0l4DXc+i1+c1q3e90nrQsmkBOnnrWam1pDtoWARhbp
         5imNUrAMtTJJpppjvAXOQutts3Vn/gvuZu3M7m3zeLU44Exop3Bvvbqy+Ot0Feagz+Wn
         5y+m2TXDJmF4lQ54gpyywZlDgeLQ7KvQASHnfn1kdiGr78qxpXYgM1c7DOZeVACqEkTx
         ZBzQ==
X-Gm-Message-State: AA6/9RkaYZ2DKjvWzsjzCfyGf1Rt4IWvWqf+z5IlxbJ2knHGSFg7SpOpegmHzkryrpMc/A==
X-Received: by 10.98.2.215 with SMTP id 206mr6448635pfc.89.1475189158319;
        Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id xv9sm22645346pab.36.2016.09.29.15.45.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 15:45:58 -0700 (PDT)
Date: Thu, 29 Sep 2016 15:45:55 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@gmail.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: replace unsigned with unsigned int
Message-ID: <20160929224553.GA7729@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch error "Prefer 'unsigned int' to bare use of 'unsigned'"
for readability.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 3cd56cc..1286626 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -128,7 +128,7 @@ resizer_configure_passthru(struct vpfe_resizer_device *resizer, int bypass)
 static void
 configure_resizer_out_params(struct vpfe_resizer_device *resizer, int index,
 			     void *output_spec, unsigned char partial,
-			     unsigned flag)
+			     unsigned int flag)
 {
 	struct resizer_params *param = &resizer->config;
 	struct v4l2_mbus_framefmt *outformat;
-- 
2.1.4


