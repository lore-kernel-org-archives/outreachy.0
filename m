X-GM-THRID: 5465006145536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bbe948f01ddade36,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.176.202 with SMTP id ck10mr12673700igc.5.1425225587037;
        Sun, 01 Mar 2015 07:59:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.209 with SMTP id k200ls1011611ioe.20.gmail; Sun, 01
 Mar 2015 07:59:46 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr23055736pac.37.1425225586862;
        Sun, 01 Mar 2015 07:59:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id m1si1218878pdc.0.2015.03.01.07.59.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:59:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so36517600pab.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tdSLYy8cNONjs9xBvrDrpRoiXyO1XcdjldTJCFtDsXY=;
        b=UwuxqcpGqaRxrEhPEDIG6iX/f4Jshm7m8+24ILcRgWpTpKX5Ys419UHn8yV4wNdqOr
         mQHhDJxEjkRwEigbSonGjrn0ukg3Gsk9ctkVD26xB/Rqzb8PtsSQkkG4RxH2X528DAcm
         X5YzzhNfe7aK4zGSLIc6sxMs10BVHneW+TNcd9qzZOp18OJLUu+R7g0ZFZRAjLqkL3BY
         TW466qAyLI08VZB1e5dKINygJ/00p3DBOOElmpUcgzIHpCK9rHhb8x8ONecLluMEkLRc
         fpHPEU1nprBfC3RfL7s30O5TrzKtkCzhgyuQH4x+lCfv79wnHGY4hvSEcDdilu0gjS7e
         RBVw==
X-Received: by 10.66.141.42 with SMTP id rl10mr40353648pab.124.1425225586755;
        Sun, 01 Mar 2015 07:59:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id tk4sm4955462pbc.11.2015.03.01.07.59.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:59:45 -0800 (PST)
Date: Sun, 1 Mar 2015 21:28:19 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: Remove unneeded brackets.
Message-ID: <20150301155819.GA6255@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These were detected with this Coccinelle script:
@@
identifier f1, f2, f3;
constant c;
@@

f1 =
(
- (f2 << f3)
+ f2 << f3
|
- (f2 >> f3)
+ f2 >> f3
|
- (f2 << c)
+ f2 << c
|
- (f2 >> c)
+ f2 >> c
)

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 2fbb964..7dda904 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -131,7 +131,7 @@ static bool PlatformIOCheckPageLegalAndGetRegMask(u32 u4bPage, u8 *pu1bPageMask)
 
 void write_nic_io_byte(struct net_device *dev, int x, u8 y)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 
@@ -154,7 +154,7 @@ void write_nic_io_byte(struct net_device *dev, int x, u8 y)
 
 void write_nic_io_word(struct net_device *dev, int x, u16 y)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 
@@ -177,7 +177,7 @@ void write_nic_io_word(struct net_device *dev, int x, u16 y)
 
 void write_nic_io_dword(struct net_device *dev, int x, u32 y)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 
@@ -199,7 +199,7 @@ void write_nic_io_dword(struct net_device *dev, int x, u32 y)
 
 u8 read_nic_io_byte(struct net_device *dev, int x)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 	u8	Data = 0;
@@ -224,7 +224,7 @@ u8 read_nic_io_byte(struct net_device *dev, int x)
 
 u16 read_nic_io_word(struct net_device *dev, int x)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 	u16	Data = 0;
@@ -250,7 +250,7 @@ u16 read_nic_io_word(struct net_device *dev, int x)
 
 u32 read_nic_io_dword(struct net_device *dev, int x)
 {
-	u32 u4bPage = (x >> 8);
+	u32 u4bPage = x >> 8;
 	u8 u1PageMask = 0;
 	bool	bIsLegalPage = false;
 	u32	Data = 0;
-- 
1.9.1


