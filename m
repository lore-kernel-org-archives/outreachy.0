X-GM-THRID: 6253656359784415232
X-Received: by 10.50.43.227 with SMTP id z3mr5716832igl.1.1456042835919;
        Sun, 21 Feb 2016 00:20:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.70 with SMTP id z6ls495706obg.26.gmail; Sun, 21 Feb
 2016 00:20:35 -0800 (PST)
X-Received: by 10.182.20.231 with SMTP id q7mr9594117obe.7.1456042835534;
        Sun, 21 Feb 2016 00:20:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si2783575pfa.2.2016.02.21.00.20.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 00:20:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id x65so75451274pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 00:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6bZzvOI5dB0pOsxQ1Wf50V9c0jI7BxS3WayoBKRYVmw=;
        b=XSIzbKZ8l49Fyps/E5ahhumZKsGVSYdxXEdILNvSBylhUOnZQDXl6oKu3yVAaC2tO1
         KT9675pE5745r8tYFvDnMwKyzPzDW/sbXeU5nbmVBzqTiiolsbMT+Hnn58YypV//wQeW
         TP/2XUjFSqioz9SJAsKndAlVUJU7jC7m4lyG12cun68zwjAnXFXuHlSuOYZXiDF1n68l
         aitWh+oo5fReC8PZKULqCqBS0sbmrq18VX3xvHd5Jk1XYXlojYPAeg5jaZQ34zolfNTx
         gR0wmPdSA5WWfRNuia2nbg8dJL/C7rCYC6OnRnoOazvmuHheAV+zBJMeJOy6r1Qdm2dT
         20Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=6bZzvOI5dB0pOsxQ1Wf50V9c0jI7BxS3WayoBKRYVmw=;
        b=i6NXGJLQNapoOdmnjyEGeQwblwPQADlhbvNwBCJ8rGDdYZv+mgkDipKpH7H8xAAzdl
         Vz9GZiPObkv57q88iDZkN81vugJrDs7SNV7BFhjbSe4A2wocNTZ1tx3faImCgpd69fyx
         gXfgpo1KzLuPg5asMTMyFHfRQ4kJRajZHP29gxoXXlyg+O4xosXdVwemm7Zo37YQjWcF
         y6wsH6qXCtGLPjw4NlMoAFtTmYqOJ6LqzhNUbfD6IMW3nY4dLj6cZ90/7GVvrVucZg2e
         Uwkmt5jwTzgLex8fDm4pAbXQaCZXmtg+UriYoNs5s40Ihgy6CSCtet1MsYCSdOwVo4VG
         CHsg==
X-Gm-Message-State: AG10YORBRAoDrmguwvRrlV8/CDkChSjGOtrp3gWncy2FONRRUw9C3bnh5E802UNVEHqQ2g==
X-Received: by 10.98.76.194 with SMTP id e63mr30004442pfj.9.1456042835421;
        Sun, 21 Feb 2016 00:20:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tb10sm28838772pab.22.2016.02.21.00.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 00:20:35 -0800 (PST)
Date: Sun, 21 Feb 2016 13:51:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtl8712: Place constants on the right side
 of '&'
Message-ID: <20160221082106.GA24203@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operator '&'.
This issue was identified using the Coccinelle script:
@@
constant c,c1;
expression e,e1,e2;
local idexpression i;
binary operator b = {==,!=,&,|};
@@

(
c b (c1)
|
i b e1
|
c | e1 | e2 | ...
|
c | (e ? e1 : e2)
|
- c
+ e
b
- e
+ c
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-change subject line
	-inserted Coccinelle script
 drivers/staging/rtl8712/wifi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 7a352c4..ee41971 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -260,12 +260,12 @@ enum WIFI_REG_DOMAIN {
 	*(unsigned short *)((addr_t)(pbuf) + 22) = \
 	((*(unsigned short *)((addr_t)(pbuf) + 22)) & \
 	le16_to_cpu((unsigned short)0x000f)) | \
-	le16_to_cpu((unsigned short)(0xfff0 & (num << 4))); \
+	le16_to_cpu((unsigned short)((num << 4) & 0xfff0)); \
 })

 #define SetDuration(pbuf, dur) ({ \
 	*(unsigned short *)((addr_t)(pbuf) + 2) |= \
-	cpu_to_le16(0xffff & (dur)); \
+	cpu_to_le16((dur) & 0xffff); \
 })

 #define SetPriority(pbuf, tid) ({ \
--
2.1.4


