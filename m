X-GM-THRID: 6249584461823868928
X-Received: by 10.182.29.10 with SMTP id f10mr35702837obh.36.1455201569294;
        Thu, 11 Feb 2016 06:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls132749qgp.17.gmail; Thu, 11 Feb
 2016 06:39:28 -0800 (PST)
X-Received: by 10.13.194.67 with SMTP id e64mr41829581ywd.17.1455201568479;
        Thu, 11 Feb 2016 06:39:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id 79si1135833pft.0.2016.02.11.06.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id e127so30408750pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Dn8cgxcfGijCd+eoNEjK57+BYvfmKxa9Y1vm4bu1EYU=;
        b=Yz1m3qBEbKtihF01/qk4kSXtT5Jp+TcLjv8W5PKDqJiNJwXhVcaVFIN7yecyL/lB2p
         YBUpNnxd6nlLmEC+NxNaqexjUrsumY0hOaz+rD8hTrA9ouKMJ77QKR+HTeK0KaSqjWgD
         9fbBCSBs/JVs65g9YA2uNrvL/M5oVodagV1HJ+gNwmtlbiaR07sEKwlP/ITwPG4XXt4y
         mMrzUOOgMcI7aJaec+CxAXww1AaFi4SfWZ0Tp8sFKG2IPf2n9FLm9puGvO8akjuHM3m1
         7a1ZEnROdOpY1Ho0qiFvoZ8iiM41vz/Oz69m8l98MwmQAk2+gm5nQL1k39XX79Tl++4a
         UT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Dn8cgxcfGijCd+eoNEjK57+BYvfmKxa9Y1vm4bu1EYU=;
        b=DF3MVUl1LmVh953AgRg9XVEaBB2AYFG8IJz2hcjbCfV3/NbXCnzbKCfxYMeqE8ChpA
         cOv1NLz+rs5Wv3Pdc3A2XSBTcLfqTh1GHFJziA0gmXKOSK/AFxjFDj1yqHcOUpHmVEXH
         EG/DXuq3i1nuHXF1p+CYROe90kPHso83sXnR42kOX0kPoRngn2DkVDmXFZYuZbnRMJm8
         RhZh4tAMUS+o5UM2JstmRZpEbWYn0TPLYfjOFKjF05Divs/kLEq4+bmT5x11X1JVgzDB
         udF6bHqq33ilehzVrlWVmAAQFEkx4XHMuH+0t2lK/TdG0J63GJiA8kzCoLT+0U9+o6hk
         6USg==
X-Gm-Message-State: AG10YOQmyCqVQyD7AX0YP6bxXX8/QCyROZD3+zd4vZgJAVZjmcxyALauDpOybcVa6vP4Gg==
X-Received: by 10.98.66.138 with SMTP id h10mr68084712pfd.89.1455201568316;
        Thu, 11 Feb 2016 06:39:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id xu1sm12902786pab.31.2016.02.11.06.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:39:27 -0800 (PST)
Date: Thu, 11 Feb 2016 20:09:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/5] staging: comedi: range: Merge if conditions
Message-ID: <20160211143924.GA32702@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -None
Changes in v2:
        -Remove extraneous parentheses added in first version.

 drivers/staging/comedi/range.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
index ce3a58a..4eff819 100644
--- a/drivers/staging/comedi/range.c
+++ b/drivers/staging/comedi/range.c
@@ -67,9 +67,7 @@ int do_rangeinfo_ioctl(struct comedi_device *dev,
 	subd = (it.range_type >> 24) & 0xf;
 	chan = (it.range_type >> 16) & 0xff;
 
-	if (!dev->attached)
-		return -EINVAL;
-	if (subd >= dev->n_subdevices)
+	if (!dev->attached || subd >= dev->n_subdevices)
 		return -EINVAL;
 	s = &dev->subdevices[subd];
 	if (s->range_table) {
-- 
1.9.1


