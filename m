X-GM-THRID: 6802694026822680576
X-Received: by 2002:a1c:44b:: with SMTP id 72mr5693973wme.116.1584029780935;
        Thu, 12 Mar 2020 09:16:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls3208514wrr.4.gmail; Thu, 12 Mar
 2020 09:16:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0n9McwLMFUMyjuXl2cnCuVKd2GimS9YTx0Daob2L5QZiHGu+Fl9dwLHTSK4qjonjW4huG
X-Received: by 2002:a5d:4d10:: with SMTP id z16mr12451795wrt.271.1584029779824;
        Thu, 12 Mar 2020 09:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584029779; cv=none;
        d=google.com; s=arc-20160816;
        b=Gqpe9VgBSFjgWPxSGOly7mp9ZAwEmmHfZClYKjzhh4bmcx4RVET80FHWFjGt45p272
         P/Vcln1/hklsgtINmwpPcsKM68a6TcXfhzKF9r7dvZAZeiqhrUp8qC4MrctdIe/hqlf2
         WSiadDKpu1JtomSsTQyyQXmfKFBBAKSftYaHfU/U+J9REkmI06f3Pd+KztCArHfuptdD
         mDuhzrPYF7N53Cgmdco+fVDBW4DGOy3YCMbFzDde67izpSfb1EL4Dg48PSy1EzT8oVXf
         SBHmX0No/s+Acs9fv7RbiXPj2rfpDHQ9G/AgTjPqMde++0VN2k05Ui19iZOGv7+I28Z0
         E54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=V6CBmZCJPbC/HaDbqSxMqBzs2K33cmLEbi+OsWs+5YA=;
        b=fpnM0gGKneXWpyw7HRAN34oAq2vbUghUugE8QMco/+0xfxDT1u53+WrBR0ecoFOq3y
         lzSy+gizUWj5z9DD9nXv1IgzZ8RU+APgJakOxYZWf0bHscubACUtrmGG07QF0i3UzTmQ
         4PAaANqwLJdvM+6bBbEqLm9VySOvNPcZzB9RHvJs4ztG6fP4bL/r5LMLxO7xHLm7WwNv
         i21Q8KjTa5IOom5OH/B+d3iitBQ2bITfF5p7hwZbxQu1se8AuhVCI946REsCQrhxQ95Y
         wWH+TNxGvGcqCYSfthUVDApHPkkkYcLR97VkWh1jleoD2XrBWz7Qjb2aH8CxbHm8rpKL
         ZU8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GcFe26Cy;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y201si72938wmc.0.2020.03.12.09.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 09:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GcFe26Cy;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id n15so8207992wrw.13
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 09:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=V6CBmZCJPbC/HaDbqSxMqBzs2K33cmLEbi+OsWs+5YA=;
        b=GcFe26CyG49sTfQrMJKLquEGvTIhCNQ5qky3UEVg8VJFJI6VrCfmHbg/g3QzUi/zhQ
         x0Jul9A16lyuLvQcJkIP5SSevsJ29WFdoQb3yHsEXXiySiPDwKjwNIGx/iZXlQ8hSSqQ
         XgbnXgKq+w6wOn513IkbMxPnNEzpIT9xJnL7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=V6CBmZCJPbC/HaDbqSxMqBzs2K33cmLEbi+OsWs+5YA=;
        b=flOFCDvoJ02ocK6DsTvgLwv74bqK+1XqtRM3Cp5wIIYMa8HMTtrUYrAJiHx5AR6I+Z
         vZzap/SnmfULg1YbPNwnXFuhCyBDHFaIs+i4g1TJ3m/FAcfxvGW84uOZgLf8h0AjCcmK
         92paJNvfckFVse+sLjZIhYKZoQjsMmpEnLBTS73J0vFfR4TQCIX9nHVS4DyZxuMeGtOn
         Dn4aALLmO975hRGPu/Hw4j0buLzYHy+MS0xzQ8dZCoL6tdaoiZNUZpigwqcKjRflg6y7
         La1ia06fLnQMfYM87oNKlIuEREyrqx1YpzXuRb5TQKjMo1T8nPJP36XlsqXzTDl7F738
         IZWg==
X-Gm-Message-State: ANhLgQ3DkdJ0Vdfcxav370LBTMLk/6P7bKKOqcEUti6W4REMjHd5h4rO
	6meSBCRc2nSkyy+fUaaeIeJrBOkXIsL/rQ==
X-Received: by 2002:adf:ea42:: with SMTP id j2mr1000768wrn.3.1584029779186;
        Thu, 12 Mar 2020 09:16:19 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id t187sm13556233wmt.25.2020.03.12.09.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 09:16:18 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH v4] staging: rtl8192u: r8192U_wx: use netdev_warn() instead of printk()
Date: Thu, 12 Mar 2020 17:15:48 +0100
Message-Id: <20200312161548.5631-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use netdev_warn() instead, which is a message printing
function specific for network devices and uses net_device data structure,
defined in include/linux/netdevice.h. Issue found by checkpatch.

Suggested-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v3:
- use netdev_warn() correcly

 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b9ab..100532598781 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				hwkey);                 /* KeyContent */
 
 		} else {
-			printk("wrong type in WEP, not WEP40 and WEP104\n");
+			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");
 		}
 
 	}
-- 
2.17.1


