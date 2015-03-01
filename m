X-GM-THRID: 5368833900544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df23be8587a10da9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.157.129 with SMTP id wm1mr21767440pab.15.1425212184715;
        Sun, 01 Mar 2015 04:16:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.73 with SMTP id dy9ls593023obb.2.gmail; Sun, 01 Mar
 2015 04:16:24 -0800 (PST)
X-Received: by 10.182.148.164 with SMTP id tt4mr20471842obb.30.1425212184458;
        Sun, 01 Mar 2015 04:16:24 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ks4si1141707pbc.1.2015.03.01.04.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 04:16:24 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so98827pab.8
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 04:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BMx3gLCjg0FK24rXxOCfGd3cSpS+C1UQZ1Zy8hs4heU=;
        b=jub69MykUcuB/BVcjQitPayxWY9c9IR2j3DspmCIziSVxfGj+fY8ZhHrNVfsr28VgE
         oZccR5mIA7EzYi0+88wGIO0NtQuuyP3ocBSkzPuO+EfvQGNDeiOhTamMiM3pefDYrO1q
         G/0nGPBLtSLbaqsUUnrhDDUfEKBEl1ORc0ZV/Fumxe+CW/P0CUI5+bxg/2hSWLdcIZHi
         VeHl700QnPnoUlitt+eTTFK8hJtDEvGwwRcMTNrM14+Klz2fg7DUFDwWM6Y4Ns7gAUsr
         Eh/HPRwEPRJfHx7l/dJJht6W5MxlyN9RHDj8hveFqr3+jgHRwtqBVy4YwOWRbZDEO5q5
         UHxA==
X-Received: by 10.68.102.101 with SMTP id fn5mr20575154pbb.144.1425212184331;
        Sun, 01 Mar 2015 04:16:24 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id di10sm9099524pad.41.2015.03.01.04.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:16:23 -0800 (PST)
Date: Sun, 1 Mar 2015 17:47:38 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/12] staging: media: Use kcalloc, instead of  kzalloc.
Message-ID: <556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech@gmail.com>
References: <cover.1425211235.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425211235.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used for this change is:

@@
type T, T2;
expression x;
identifier f,f1;
expression E1,E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(E1,E2)
+ x = kzalloc(E1,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,E1);
...
} else S2
|
- memset((T2)x,0,E1);
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f,f1;
expression E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(sizeof(T1),E2)
+ x = kzalloc(sizeof(T1),E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,sizeof(*y));
...
} else S2
|
- memset((T2)x,0,sizeof(*y));
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f,f1;
expression E,E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(sizeof(T1)*E,E2)
+ x = kzalloc(sizeof(T1)*E,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,sizeof(*y)*E);
...
} else S2
|
- memset((T2)x,0,sizeof(*y)*E);
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f,f1;
expression E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(sizeof(*y),E2)
+ x = kzalloc(sizeof(*y),E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,sizeof(T1));
...
} else S2
|
- memset((T2)x,0,sizeof(T1));
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f,f1;
expression E,E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(sizeof(*y)*E,E2)
+ x = kzalloc(sizeof(*y)*E,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,sizeof(T1)*E);
...
} else S2
|
- memset((T2)x,0,sizeof(T1)*E);
)
@ disable neg_if, mult_comm @
type T, T2;
expression x;
identifier f,f1;
expression E0,E1,E2,E3,E4;
statement S,S1,S2;
@@
- x = (T)kmalloc(E0 * E1,E2)
+ x = kzalloc(E0 * E1,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
if ((x!=NULL)&&...) {
... when != \(f1(...,x,...)\|<+...x...+>=E4\)
when != \(while(...) S1\|for(...;...;...) S1\)
- memset((T2)x,0,E1 * E0);
...
} else S2
|
- memset((T2)x,0,E1 * E0);
)
// ---------------------------------------------------------------------
// ---------------------------------------------------------------------
// have to duplicate everything again to make a version with no braces
//\(x->fld\|f(...,x,...)\|x=E\)
@@
type T, T2;
expression x;
identifier f;
expression E1,E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(E1,E2)
+ x = kzalloc(E1,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,E1);
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,E1); else
S2
)
@ @
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f;
expression E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(sizeof(T1),E2)
+ x = kzalloc(sizeof(T1),E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y));
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)); else
S2
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f;
expression E,E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(sizeof(T1)*E,E2)
+ x = kzalloc(sizeof(T1)*E,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E);
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E); else
S2
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f;
expression E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(sizeof(*y),E2)
+ x = kzalloc(sizeof(*y),E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1));
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)); else
S2
)
@@
type T, T2;
type T1;
T1 *x;
T1 *y;
identifier f;
expression E,E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(sizeof(*y)*E,E2)
+ x = kzalloc(sizeof(*y)*E,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E);
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E); else
S2
)
@ disable neg_if, mult_comm @
type T, T2;
expression x;
identifier f;
expression E0,E1,E2,E3;
statement S,S2;
@@
- x = (T)kmalloc(E0 * E1,E2)
+ x = kzalloc(E0 * E1,E2)
... when != \(f(...,x,...)\|<+...x...+>=E3\)
when != \(while(...) S\|for(...;...;...) S\)
(
- if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0);
|
+ if (!x)
- if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0); else
S2
)
// ---------------------------------------------------------------------
@@
expression E;
statement S;
@@
kzalloc(...)
...
if (E) S
- else { }
// ---------------------------------------------------------------------
// ---------------------------------------------------------------------
@@
expression E1,E2,E3;
@@
- kzalloc(E1*sizeof(E2),E3)
+ kcalloc(E1,sizeof(E2),E3)
@@
expression E1,E3;
type T;
@@
- kzalloc(E1*sizeof(T),E3)
+ kcalloc(E1,sizeof(T),E3)
@@
expression E1,E2,E3,E4;
@@
- kzalloc(E1*E2*sizeof(E3),E4)
+ kcalloc(E1*E2,sizeof(E3),E4)
@@
expression E1,E2,E3;
type T;
@@
- kzalloc(E1*E2*sizeof(T),E3)
+ kcalloc(E1*E2,sizeof(T),E3)
@@
expression E1,E2,E3,E4;
@@
- kzalloc(sizeof(E3)*E1*E2,E4)
+ kcalloc(E1*E2,sizeof(E3),E4)
@@
expression E1,E2,E3;
type T;
@@
- kzalloc(sizeof(T)*E1*E2,E3)
+ kcalloc(E1*E2,sizeof(T),E3)
@@
constant E1;
expression E2,E3;
@@
- kzalloc(E1*E2,E3)
+ kcalloc(E1,E2,E3)

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 5382506..c68fa4a 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 		goto unlock;
 	}
 
-	data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_TEXT*5, GFP_KERNEL);
+	data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_TEXT, 5, GFP_KERNEL);
 	if (!data_buffer) {
 		err = -ENOMEM;
 		goto unlock;
-- 
1.9.1


