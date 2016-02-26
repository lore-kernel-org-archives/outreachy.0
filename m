X-GM-THRID: 6255583030234054656
X-Received: by 10.140.27.180 with SMTP id 49mr18127188qgx.19.1456491423016;
        Fri, 26 Feb 2016 04:57:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.4 with SMTP id c4ls1121241qgc.26.gmail; Fri, 26 Feb
 2016 04:57:02 -0800 (PST)
X-Received: by 10.13.221.75 with SMTP id g72mr958204ywe.34.1456491422589;
        Fri, 26 Feb 2016 04:57:02 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 12si1876123pfb.1.2016.02.26.04.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 04:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so50871701pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 04:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2UgY54ofCAjqKz+i/mfYAYmgYkK9IDLidf4A2rh5W6I=;
        b=Kc4WnULibp4UByQFuy0cNNPR7rj70oZvBuF9kNxcSmYTZAry1f/HUz965+vwd1ferx
         1uHbL2llxMwybWQDOA3D+undrXzeh23MGSiDoNzTwlj74t3LTl9SSPoVGCi3Ptyr++SG
         L3N6BlEsAmvbEUl8cigjrFYcgYYvvZVHY7IXdbwiC910ziT5WYN7HRS372S4HkB/X2oC
         +G+gls33kWNasnNS5wPQTkBsHjcD3BDPX/xmfZgCG63Y2NBBPhk8FdMi0rWwydr8NInI
         MEajKtOjNlT1sbJxSxN3QoNmQzH8MNx8yRMVT4C0OUyPrnkkx8F2/wCoAQBd39pB9jY+
         31xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2UgY54ofCAjqKz+i/mfYAYmgYkK9IDLidf4A2rh5W6I=;
        b=lQodgC2uS0SB/l+As4Jj8u7PTdFffDRuBTVhTEhU7Dn1GqEIcq7OBtzpGJvNsLFUc1
         h0DiaCBIY4Ucj8Ba+zLAx2pUsHKOIZiFtEfum+2Dm8Cq/cf+vFuwVHmDRo2DCvFdpOUY
         IBBC5kT7foSozDdWmGZ2aVpDZnLJdKPxAhBeS5IkA4ZzwzQyJigzC6v5QSPY+9A7Wrkp
         P9evRdXzdaRVdNWQtQnY3o0JfSLIg4ZDzRpmS43TYM7JQK1BHspwtWOg5L4CcbZSH1jV
         M/2JoGo8e1f+RCJGM8J3qT+TNPm0MCn9toN1lxiScm/H9I0fAoamBxFtwKO42lLXt+Vn
         Tz9w==
X-Gm-Message-State: AD7BkJJjT9pZVUXnjbuTUhRy7yJCZWIemHqkpcd69kugDkvvD80j8Kg0HPoPhPCdy0IKhg==
X-Received: by 10.66.62.226 with SMTP id b2mr1834066pas.94.1456491422383;
        Fri, 26 Feb 2016 04:57:02 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 82sm19361281pfn.89.2016.02.26.04.57.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 04:57:01 -0800 (PST)
Date: Fri, 26 Feb 2016 18:27:05 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: Remove unnecessary parentheses
Message-ID: <20160226125705.GA16609@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the following checkpatch.pl warnings:
Unnecessary parentheses around al7230_init_table_amode[0][0]
Unnecessary parentheses around al7230_channel_table2[0][0]

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/vt6656/rf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 816206c..79a3108 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -917,8 +917,8 @@ void vnt_rf_table_download(struct vnt_private *priv)
 	if (priv->rf_type == RF_AIROHA7230) {
 		length1 = CB_AL7230_INIT_SEQ * 3;
 		length2 = CB_MAX_CHANNEL * 3;
-		addr1 = &(al7230_init_table_amode[0][0]);
-		addr2 = &(al7230_channel_table2[0][0]);
+		addr1 = &al7230_init_table_amode[0][0];
+		addr2 = &al7230_channel_table2[0][0];
 
 		memcpy(array, addr1, length1);
 
-- 
2.1.4


