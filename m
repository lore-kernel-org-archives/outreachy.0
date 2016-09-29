X-GM-THRID: 6335768924747988992
X-Received: by 10.176.86.203 with SMTP id c11mr522648uab.29.1475161156281;
        Thu, 29 Sep 2016 07:59:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.6 with SMTP id w6ls3497996otb.39.gmail; Thu, 29 Sep
 2016 07:59:15 -0700 (PDT)
X-Received: by 10.129.94.2 with SMTP id s2mr522863ywb.147.1475161155877;
        Thu, 29 Sep 2016 07:59:15 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si926063paw.1.2016.09.29.07.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 07:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so3695697pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 07:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rups2gMIZ7WogzRK+oC8NuND9HSCFHvFrsdfuAvEF5s=;
        b=i+TyOA8AAYQasSqRSi/8Zl4nocgwgxzoWc977/zXCtOYDhO5sFZkgF9vAw1uGsf/zx
         PIXLO0XyZgmBJ5iv8sCWkS7JU82hcvoN/wiNC55NU6ibnKp0lwTJw01VbBR4yINnkDAG
         3tY1mJ7aJuUcqQkzU0eMoPIUqRy3VJSCrvb71r5vE365An/w7RwSbxWkIeF/17ogQSvC
         xV57Gzy3Qa4CAX8xHDxwm+Z8P6Ps6DU4kc2d8eWhI+myQWGzt57MNij5bsUYK32da2Q4
         szBgj6/oq0Mk/FoELpF447PYyVuL0+SfiAqSVtkbDpsBS2gjlsWtj+hyfwF9QiYDOWub
         2kpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rups2gMIZ7WogzRK+oC8NuND9HSCFHvFrsdfuAvEF5s=;
        b=BVqTolejVW5oCykGvkFXa55rZd3ACDnbzgNtpHnpmbWcLrXRGDDdy2M336EPccV/V1
         LE/JK7o3AIHxi75Z4Tgm71NprU/mIYCKFaN2/0/wdp8djC6TqNQlL62owoX/77jh+4nV
         JFYjyPJWFjxUWVmhz5cHaiVbPLYDYtgETEU4x1RlIcn0avZAKdP3Sa174MTUEls0zeLB
         hxYh1SuQFCnCuYsyKq+q8yNu+l7V2GwHlQJ4b5QGJo3gjfuywzcipqB//0ckvTIbTZVD
         LT2xSrnLBW6+7EYS0raEjAjJGgM99wnF5gXCRWPMI+0ow4FPqclQ3ZPMvprOHtyoNg2a
         TqkA==
X-Gm-Message-State: AA6/9Rn/i5cx1bsOclB1+3HBgM7So6qqzVM1frawgNuOOmx8rA7GQtrZzTc3Pi8l+jJxUA==
X-Received: by 10.98.99.67 with SMTP id x64mr3174606pfb.26.1475161155215;
        Thu, 29 Sep 2016 07:59:15 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.181.168])
        by smtp.gmail.com with ESMTPSA id ps2sm21083196pab.10.2016.09.29.07.58.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 07:59:13 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 29 Sep 2016 20:28:32 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: most: hdm-dim2: constify attribute_group structures
Date: Thu, 29 Sep 2016 20:28:31 +0530
Message-Id: <1475161111-24767-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Check for attribute_group structures that are only passed as a second
argument to the functions sysfs_remove_group and sysfs_create_group. As
these arguments are constant so, attribute_group structures having this
property can also be made constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
expression e1,e2;
@@
(
sysfs_remove_group(e1,&i@p)
|
sysfs_create_group(e1,&i@p)
)

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
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

File size before:
   text	   data	    bss	    dec	    hex	filename
    509	    160	      0	    669	    29d
drivers/staging/most/hdm-dim2/dim2_sysfs.o

File size after:
   text	   data	    bss	    dec	    hex	filename
    565	     96	      0	    661	    295
drivers/staging/most/hdm-dim2/dim2_sysfs.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_sysfs.c b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
index 2b28e4a..d8b22f9 100644
--- a/drivers/staging/most/hdm-dim2/dim2_sysfs.c
+++ b/drivers/staging/most/hdm-dim2/dim2_sysfs.c
@@ -39,7 +39,7 @@ static struct attribute *bus_default_attrs[] = {
 	NULL,
 };
 
-static struct attribute_group bus_attr_group = {
+static const struct attribute_group bus_attr_group = {
 	.attrs = bus_default_attrs,
 };
 
-- 
1.9.1


