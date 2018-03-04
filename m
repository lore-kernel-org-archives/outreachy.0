X-GM-THRID: 6528739356252831744
X-Received: by 10.176.82.157 with SMTP id v29mr5481784uav.61.1520148153206;
        Sat, 03 Mar 2018 23:22:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.96.147 with SMTP id i19ls715368ual.16.gmail; Sat, 03 Mar
 2018 23:22:32 -0800 (PST)
X-Google-Smtp-Source: AG47ELsVJ46LGrIzrJQsUxUfUnNQnJkgLAXyo7tecEdAyEqEmr0rzAEWBP3vMCGq/pBryn/Sdvaw
X-Received: by 10.176.76.46 with SMTP id l46mr5327994uaf.30.1520148152570;
        Sat, 03 Mar 2018 23:22:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520148152; cv=none;
        d=google.com; s=arc-20160816;
        b=tghSTRQqE+tOlZd3w7WTqf9BDlnWzTT6p0l0ONxLsQ3O/LD10l0hT/4Zt01SnVHYte
         huf7ET6w0vjJDI9GjcRAkPgfgQYJo+bQCP+EvNqG0qxkeEWKZosHHVkI4m+sulpo4c0o
         zSfJ6Nd+aFO+tGZ+AhQHpxwfamK2h2R+F+cSiqiPx3Gy/LIls6telYSb3VEBO4lWErJF
         5CD5q5CPLfWKjQF8VuzerFRkztwM5wEZHQys8eaomVK+gjJiLbmigvssE7c+hrS5b3/Q
         R+FOqs2sfItXf2Lytjmf77hyth3zm1H+zej1xgXmwZXsqAepgCLO8HeXsJxQkITSuyxM
         UHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=zeAK7bOJelnjiQcuWi+1jDvoWO+tAsNdGYJo2CScZ5Y=;
        b=u2VZiePiwkXjxjcmLMwx3Nn21l5cOyvf1todssiU9Wc0kAlYTK4bBbACIgY8yh8Nk1
         9pfbe8xTIIB+SLBB0ImKKsrQKxVhUfS2cte3mOewUqxVAYV372jCZozylYRxFXLSyusw
         7UzhuCBiK/3NFaSyrg+raL5RQnLzT4rVVEP2ngBNgy4+Wluod75rkFEQawpXPC68vjzc
         NgsWO6CJqYUMHfKhIwqWvTfmCWPHLPlKHcfbb5LuQyYO837Rj/KUBVQhA9JhKOQS5FZj
         4pstkrqObPVuFEakHyilVMHNOp6BwH8bh6FNyb4o8MpG1p+x66jrzt2Ah3ndGS8EiurO
         weWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CtxUZNzu;
       spf=pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=rinklejain96@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rinklejain96@gmail.com>
Received: from mail-pl0-x231.google.com (mail-pl0-x231.google.com. [2607:f8b0:400e:c01::231])
        by gmr-mx.google.com with ESMTPS id y62si615547vkg.4.2018.03.03.23.22.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 23:22:32 -0800 (PST)
Received-SPF: pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c01::231 as permitted sender) client-ip=2607:f8b0:400e:c01::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CtxUZNzu;
       spf=pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=rinklejain96@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x231.google.com with SMTP id m22-v6so4466941pls.5
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 23:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zeAK7bOJelnjiQcuWi+1jDvoWO+tAsNdGYJo2CScZ5Y=;
        b=CtxUZNzurl0x9UvNZ58ZZ8fUss+sVOwrET4cPazBCUUxEe+7IOU0iIppviqPJ0g611
         0l+2QqouLSVgDX4q9WLakHNUdooZhECO0y69IGP7HuRGf7w/dB0+LCd7aw9Lj26A7gs3
         XwrqttfyDwae6SWZSloM+rvg1sma+JwAzISaFYxikrhtPVhwGjXJGZAfBTcNOcljI4FE
         duujLOgR57yhu5RZSf3BqB/zsVzU+8PpW0Yc7LEnZs+WZm3U0IgMzota0chsy13mylBY
         yPh7A3/hgCEhRQxCkPusMOox/Du84bNY6B636I0Ykuwp+Wo39bm4DnPYDdX24a5C724P
         g+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zeAK7bOJelnjiQcuWi+1jDvoWO+tAsNdGYJo2CScZ5Y=;
        b=i84Cdp1SlXScALkHoOI4rWOacx7iqph5NBpqB0so2mYGtkenPLUPTIkLRYXIESv+Vc
         CjvSSnWYKV0oqDpdO2ZRMPqxF43+Hp8dL6kvAu+t1F+VTjWt64GfL3U376CjVeuSlkAF
         brjRoMtF5TnBlCRZA+FGPMaSLIjvccaRwpnT1Ryfe3oGdVgvRL0jhN5hnfY25MALINcC
         mukJ9vli/NXVGjB5Y6fF/PkAieW1kq/5sFGWm+KG6Bo0qMd8T0YsLd+3HZTZwrt1Rpgc
         aZ1GXCRubC0b+9m/qCi/h1iuckgnI39smT7au0xJYFwiePvLTI8OcTDWFr/XJPt4zg5b
         Gkgg==
X-Gm-Message-State: APf1xPC2Z3p1rkCwCI6ertwqDvNWP53/Gyn1dWTeNFDHtD/WjLRAdlSK
	BNIOazbEsfBcMjzikfBeeyqruk4l
X-Received: by 2002:a17:902:5401:: with SMTP id d1-v6mr9832349pli.176.1520148151842;
        Sat, 03 Mar 2018 23:22:31 -0800 (PST)
Return-Path: <rinklejain96@gmail.com>
Received: from tic-tac ([42.110.140.16])
        by smtp.gmail.com with ESMTPSA id s67sm20014785pfg.104.2018.03.03.23.22.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Mar 2018 23:22:30 -0800 (PST)
Date: Sun, 4 Mar 2018 12:52:25 +0530
From: Rinkle Jain <rinklejain96@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Subject: [PATCH v2] staging: vt6655: Fix style violation for line ending in
 '('
Message-ID: <20180304072225.GA17701@tic-tac>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.2 (2017-12-15)

Replace line ending with '(' with function parameters to resolve
style issue found by checkpath.

Signed-off-by: Rinkle Jain <rinklejain96@gmail.com>
---
Changes in v2:
	- Make better use of the available horizontal space.
	- Remove use of a line for ');' in function declarartion.

 drivers/staging/vt6655/baseband.h | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index b8ee33dcb352..30d9e9d20a39 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -46,13 +46,10 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int
-BBuGetFrameTime(
-	unsigned char byPreambleType,
-	unsigned char byPktType,
-	unsigned int cbFrameLength,
-	unsigned short wRate
-);
+unsigned int BBuGetFrameTime(unsigned char byPreambleType,
+			     unsigned char byPktType,
+			     unsigned int cbFrameLength,
+			     unsigned short wRate);
 
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
-- 
2.14.3


