X-GM-THRID: 4762894336000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9e03f8a17d47b745,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.241.163 with SMTP id wj3mr14150463pbc.8.1425063471162;
        Fri, 27 Feb 2015 10:57:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.209 with SMTP id k200ls486722ioe.20.gmail; Fri, 27 Feb
 2015 10:57:50 -0800 (PST)
X-Received: by 10.50.33.9 with SMTP id n9mr4360859igi.5.1425063470949;
        Fri, 27 Feb 2015 10:57:50 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pc4si605914pac.0.2015.02.27.10.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:57:50 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so24775329pad.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=q4KWm/Z5N67SLmc8ytwjfjfCIVZSlaXrpgV8dJ9zMik=;
        b=GEYXlpkRBlRI89lrMdd3Ja9pwberaMgPLaTo6DSuCq+0KnD7Cld75LrTtUceHh2L2k
         qv7lwuMlA+VWJSutBFG5r/I3Kt19SoGb1o2JYrTerVnaE3PWat2vz7xlkjoLLusMbzJu
         zMJq0zFPkh+uuxsRiS4Yv1P+1Q7GFkYpBNb1NUl/0SD4oBKYbgVLKBccw3TehsNl4M9L
         /iWMvZgChk2wYlJHrpvaNFTK1A6SxgKepGcSV1zjiIqYQWRWRJSpa4Z5ljlDENL6Xvzl
         m1d3HHAyqWR/SQq4hZrMiKZLlvgKB52QwKcA1WBGQ0LksOOUj55YSAB79+jSkHAxdKBO
         qQZg==
X-Received: by 10.68.208.9 with SMTP id ma9mr9129016pbc.111.1425063470816;
        Fri, 27 Feb 2015 10:57:50 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id of14sm4668763pdb.50.2015.02.27.10.57.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:57:50 -0800 (PST)
Date: Sat, 28 Feb 2015 00:27:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Shorten if condition
Message-ID: <20150227185728.GA27639@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Shorten if condition to make it more compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index fa13139..d5b5998 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1381,7 +1381,7 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 		result[0][i] = 0;
 		result[1][i] = 0;
 		result[2][i] = 0;
-		if ((i == 0) || (i == 2) || (i == 4)  || (i == 6))
+		if (i%2 == 0)
 			result[3][i] = 0x100;
 		else
 			result[3][i] = 0;
-- 
1.9.1


