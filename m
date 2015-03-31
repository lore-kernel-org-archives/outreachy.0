X-GM-THRID: 10518770221056
X-Received: by 10.236.29.146 with SMTP id i18mr24345271yha.58.1427829743356;
        Tue, 31 Mar 2015 12:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.10 with SMTP id k10ls2262909ioe.20.gmail; Tue, 31 Mar
 2015 12:22:23 -0700 (PDT)
X-Received: by 10.66.66.196 with SMTP id h4mr45601635pat.5.1427829743085;
        Tue, 31 Mar 2015 12:22:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id br7si549369pdb.2.2015.03.31.12.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 12:22:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id cy3so28368318pad.3
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 12:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=I9FSYHeL0+SLdqsACY4iaFTukvco1j1MjXI11i1iW3k=;
        b=qi83+Flc2EY4q1c3zT0nhip5yG5/xRFBGR8AaS/uXe3b6YGT+Hv6ASKakRoTvWNgdR
         +oevQVfGxChjXThJpsPREfdARgTQFsTuLJJaeuHtmmu3sHrNaIHgLV78fZkJh2jT3UR8
         +Thjobo+s+ag6M7NbnQSvUL1t7BUGM4ahV6fi01O0pI/QNVLQDydfPz/1FFQnxETAOvT
         psueWiukcrUDIhjR5WXl2chqRl3ijCXpacXLcrEkx17ZAsDeyUNJnMxyixMLxpolvWEV
         O+sjH3rVL2AvsatfL5BWIArJhuE/qpWEbol6sdlek+by7nYAouUNiCT17wS5G8+8wFXJ
         LduA==
X-Received: by 10.66.221.8 with SMTP id qa8mr69940818pac.62.1427829742987;
        Tue, 31 Mar 2015 12:22:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.171.82])
        by mx.google.com with ESMTPSA id jy9sm14726969pbc.31.2015.03.31.12.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 12:22:22 -0700 (PDT)
Date: Wed, 1 Apr 2015 00:52:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8712: Remove zero-testing pointer typed value
Message-ID: <20150331192218.GA30680@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0 by using !. Done using following
coccinelle script.

@ disable is_zero,isnt_zero @
expression *E;
expression E1,f;
@@

E = f(...)
<...
(
- E == 0
+ !E
|
- E != 0
+ E
|
- 0 == E
+ !E
|
- 0 != E
+ E
)
...>
?E = E1

@ disable is_zero,isnt_zero @
expression *E;
@@

(
  E ==
- 0
+ NULL
|
  E !=
- 0
+ NULL
|
- 0
+ NULL
  == E
|
- 0
+ NULL
  != E
)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed unnecessary comparison testing change

 drivers/staging/rtl8712/rtl871x_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index a178c23..bcd1a51 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -153,7 +153,7 @@ static u32 getcrc32(u8 *buf, u32 len)
 	u8 *p;
 	u32  crc;
 
-	if (bcrc32initialized == 0)
+	if (!bcrc32initialized)
 		crc32_init();
 	crc = 0xffffffff; /* preload shift register, per CRC-32 spec */
 	for (p = buf; len > 0; ++p, --len)
-- 
1.9.1


