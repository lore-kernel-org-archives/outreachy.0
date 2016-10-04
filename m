X-GM-THRID: 6337669078930423808
X-Received: by 10.66.21.72 with SMTP id t8mr916147pae.117.1475603570479;
        Tue, 04 Oct 2016 10:52:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls13939698otj.21.gmail; Tue, 04 Oct
 2016 10:52:50 -0700 (PDT)
X-Received: by 10.159.48.216 with SMTP id k24mr1154738uab.3.1475603570063;
        Tue, 04 Oct 2016 10:52:50 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si1549304pab.2.2016.10.04.10.52.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 10:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so4738209pfv.1
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EILq/ua/RzCGN3sbCzMD+mSufNQwqUFaY019mkefJwM=;
        b=KXwov8YQkXZDoKoyV6wYjXUpr2BCcewNK7uz+oTYll8ERrak7Uqt0mt5oXSmWG31Fu
         Xl4tWX+2f8A0YMRIBsJO5RhypdTr1vOsGXMfyeMQIhVGvkv3ztyou1OvwRpWD43i+o+a
         z4/3aHaNzKY4v9ua5hnXslKehNR9tXv+Vp08Q1inWzCGQqFuBFxVM3x8UMwcldFek3R8
         81MvfKf62xD9dCYVWijST86xITXPzbeeEOdgyfIb8rK4hTEt6UEQ7fJi1s7pd/yNiLyd
         gLMjMl7rKLnhtU/Uja8kIdUvqmX+qRDrrz7oZlyTVDybQK8UJ3V61a7FKiP6bRzosMfs
         l2Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EILq/ua/RzCGN3sbCzMD+mSufNQwqUFaY019mkefJwM=;
        b=gLBDBUeWAe3EaVPDwwMWJ++7Neq1neOhsKQGu0HUwl8gqIal4Igt2G3ZvywjRtPd6Y
         rZx5Euh/mn7hSkSyVCCJD69n1kh8yVZuYvyvEfVaiOS84tW02kQGzb2Hbz0x9Zr0xd1r
         x9SwCDGySh2HI91DZszgAiNV2NXjRWOQUry+SP3diYkmk6G96Z5CPoZAzZ+301PKr0m2
         SFyJJAEZRpCNDdK2Tibz2IQghY6WoICZJ5of0J4cQQoKMsdUKO2Or0MI3z8eKOMyUehy
         C0GXUSDJAzizEaECthEWM9KtUqMtqha4P83cnZbMmbSYL+Tj+gzGDouFG0okDu09lQIx
         2kxQ==
X-Gm-Message-State: AA6/9RnL5kKyBNyFM4FrrkHqqZZ24CIRl05Nil+dZ/k7ljNcDAiYm64EZ7+UFML0y1jAiA==
X-Received: by 10.98.27.138 with SMTP id b132mr7961236pfb.111.1475603569826;
        Tue, 04 Oct 2016 10:52:49 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.143.91])
        by smtp.gmail.com with ESMTPSA id d85sm43237128pfj.57.2016.10.04.10.52.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 10:52:48 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Tue, 04 Oct 2016 23:22:38 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192e: rtl_core: Constify rtllib_qos_parameters structures
Date: Tue,  4 Oct 2016 23:22:36 +0530
Message-Id: <1475603556-21698-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare the structure rtllib_qos_parameters as constant as it is only
passed as the second argument to the function memcpy. This argument
is constant so the fields of rtllib_qos_parameters structure are
never modified and hence it can be declared as const.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct rtllib_qos_parameters i@p = {...};

@ok1@
identifier r1.i;
position p;
expression e1,e2;
@@
memcpy(e1,&i@p,e2)

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct rtllib_qos_parameters i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct rtllib_qos_parameters i;

File size before:
   text	   data	    bss	    dec	    hex	filename
  30910	    496	    201	  31607	   7b77
drivers/staging/rtl8192e/rtl8192e/rtl_core.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  30942	    464	    201	  31607	   7b77
drivers/staging/rtl8192e/rtl8192e/rtl_core.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 4c30eea..f985d88 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -367,7 +367,7 @@ static void _rtl92e_update_cap(struct net_device *dev, u16 cap)
 	}
 }
 
-static struct rtllib_qos_parameters def_qos_parameters = {
+static const struct rtllib_qos_parameters def_qos_parameters = {
 	{cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
 	{cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
 	{2, 2, 2, 2},
-- 
1.9.1


