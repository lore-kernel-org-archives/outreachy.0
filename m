X-GM-THRID: 6210016168421359616
X-Received: by 10.129.56.7 with SMTP id f7mr30031566ywa.52.1445882164367;
        Mon, 26 Oct 2015 10:56:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.136 with SMTP id e8ls3693659qga.40.gmail; Mon, 26 Oct
 2015 10:56:03 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr30935757ywb.0.1445882163857;
        Mon, 26 Oct 2015 10:56:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id sm2si2289528pab.0.2015.10.26.10.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id la5so1470067pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2t2w7e6/+7j5HMVgFDIRHpMHNarEoQluTEXbRbp6O38=;
        b=rnnueX93Pj6A4qeVcsrRztn0UvGF+mRoW4inJPDKDrylQogtn5mA59Woh5glmugPYQ
         tGvgbUdboAdpoMNpPqxhXJFx3o00vEUvyit/0ijTCPus994nIoREubNnHuPcR3eY3wtl
         RAJBJQL2yaNUUVVIr4bu/YAxaEUq1am861/xJSh1Pd/Y5cb0bOUjVoeaPR5KXshOfwbc
         vf5GasEHzrYNtt+mKu6N9rmcQX+rCySL//1Ht/8wL/11+vuntF4e5MvIQo5QnuVed+hE
         88WhX1xvVeHqWvuxxwv0Ts4isWZZrvOvIE7CSqJXqYpokMENn96/OiqRbe3uy5sTRHLg
         HfOA==
X-Received: by 10.68.191.194 with SMTP id ha2mr23503047pbc.3.1445882163690;
        Mon, 26 Oct 2015 10:56:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id nz4sm35093051pbb.47.2015.10.26.10.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 10:56:03 -0700 (PDT)
Date: Mon, 26 Oct 2015 23:25:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8712: Remove unnecessary variables
Message-ID: <ed84b79e55986ff9218e7b118f34b61751028766.1445881808.git.amitoj1606@gmail.com>
References: <cover.1445881808.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445881808.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary variables that can be replaced with a single line of code.

The semantic patch used to find this is:

// <smpl>
@@
expression ret;
@@
- if (ret) return ret;
- return 0;
+ return ret;

@@
local idexpression ret;
expression e;
@@
- ret = e;
- return ret;
+ return e;

@@
type T;
identifier i;
expression E;
@@
- T i = E;
 ... when != i

@@
type T;
identifier i;
@@
- T i;
 ... when != i
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 00b80f7..8c20aa6 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -218,12 +218,11 @@ static u32 bitshift(u32 bitmask)
 
 static u32 get_bb_reg(struct _adapter *pAdapter, u16 offset, u32 bitmask)
 {
-	u32 org_value, bit_shift, new_value;
+	u32 org_value, bit_shift;
 
 	org_value = r8712_bb_reg_read(pAdapter, offset);
 	bit_shift = bitshift(bitmask);
-	new_value = (org_value & bitmask) >> bit_shift;
-	return new_value;
+	return (org_value & bitmask) >> bit_shift;
 }
 
 static u8 set_bb_reg(struct _adapter *pAdapter,
@@ -245,12 +244,11 @@ static u8 set_bb_reg(struct _adapter *pAdapter,
 static u32 get_rf_reg(struct _adapter *pAdapter, u8 path, u8 offset,
 		      u32 bitmask)
 {
-	u32 org_value, bit_shift, new_value;
+	u32 org_value, bit_shift;
 
 	org_value = r8712_rf_reg_read(pAdapter, path, offset);
 	bit_shift = bitshift(bitmask);
-	new_value = (org_value & bitmask) >> bit_shift;
-	return new_value;
+	return (org_value & bitmask) >> bit_shift;
 }
 
 static u8 set_rf_reg(struct _adapter *pAdapter, u8 path, u8 offset, u32 bitmask,
-- 
1.9.1


