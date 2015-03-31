X-GM-THRID: 10535493959680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,88d40c3dbd42b212
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.67.8.106 with SMTP id dj10mr4126469pad.30.1427832468498;
        Tue, 31 Mar 2015 13:07:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.81 with SMTP id j78ls1044ioe.80.gmail; Tue, 31 Mar
 2015 13:07:48 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr46956488pab.11.1427832468035;
        Tue, 31 Mar 2015 13:07:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id oc12si1653232pdb.1.2015.03.31.13.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 13:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id ni2so31033880pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 13:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+ZqHznCH4ekEKIRw9NUb2fMAr7UHCw5ejeqluMMOprU=;
        b=cdkD1JyfUwRU4G5CEzmz1O/MdBhytIeKJuPFE7hFptgvJzkWMgw4tnpim85veQ8rys
         AG2MSbXq2XGgzo9Wd77VinaBm5C1ej0wtdf7HpHqs6Pz9aS91qQ0/NEZkHAEM5ZNK/l3
         ciG62n/6EfpouCpt6L4u00RoUrspohpDO/4sW0U+u90WPa4NsX8AE38Wzb4LEbzvTPKl
         mWcFubjfa4q9j90AwrGB7W3C4nRtfZtQWBXSp1w4HY9IogMsE4RtkTXMPx5H5M8KkdI1
         okTJiGQ9GtrOoL5zCkSZv3fY6cyW1k4id92XVwhR9m3uoTy0Zq+cNioTMKzJ/d/GSD5V
         37uQ==
X-Received: by 10.68.197.201 with SMTP id iw9mr72154249pbc.84.1427832467953;
        Tue, 31 Mar 2015 13:07:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.171.82])
        by mx.google.com with ESMTPSA id ks6sm14778143pbc.68.2015.03.31.13.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 13:07:47 -0700 (PDT)
Date: Wed, 1 Apr 2015 01:37:43 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8712: Fix zero-testing pointer typed value
Message-ID: <20150331200743.GA31108@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0 by using if statement. Done using following coccinelle script.

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
 drivers/staging/rtl8712/rtl871x_mp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 26201ea..bae3209 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -144,7 +144,7 @@ u32 r8712_bb_reg_read(struct _adapter *pAdapter, u16 offset)
 	iocmd.value	= bb_addr;
 	iocmd.index	= IOCMD_BB_READ_IDX;
 	bb_val = fw_iocmd_read(pAdapter, iocmd);
-	if (shift != 0) {
+	if (shift) {
 		u32 bb_val2 = 0;
 
 		bb_val >>= (shift * 8);
@@ -166,7 +166,7 @@ u8 r8712_bb_reg_write(struct _adapter *pAdapter, u16 offset, u32 value)
 	iocmd.cmdclass	= IOCMD_CLASS_BB_RF;
 	iocmd.value	= bb_addr;
 	iocmd.index	= IOCMD_BB_WRITE_IDX;
-	if (shift != 0) {
+	if (shift) {
 		u32 oldValue = 0;
 		u32 newValue = value;
 
-- 
1.9.1


