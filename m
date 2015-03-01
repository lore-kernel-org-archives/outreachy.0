X-GM-THRID: 5368833900544
X-Received: by 10.68.194.97 with SMTP id hv1mr21637863pbc.0.1425211724007;
        Sun, 01 Mar 2015 04:08:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.231 with SMTP id v94ls1292024qgd.78.gmail; Sun, 01 Mar
 2015 04:08:43 -0800 (PST)
X-Received: by 10.236.223.166 with SMTP id v36mr21023349yhp.45.1425211723782;
        Sun, 01 Mar 2015 04:08:43 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id hs7si1143484pad.1.2015.03.01.04.08.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 04:08:43 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so32346896pdj.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 04:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Em3M1OzQk1rbQtg7uZ/a5zJq7rcD62kipCdQKoQ7544=;
        b=Tgsv3uNHzruEjKNwDbOzX2L0Q5ubD1G0ikpsCSxH7d6+75Nk3CVwcEa3451v1ohsSO
         sGS2IS19uMg/y5J4WWuxevjYbkJ28aYjGalhZ2PT0s7VQ8YfRJHsbfnEaQPCNzKdAUXt
         G0Sp96A96q5GuCt8ZMp9p07eIwD/T//iOupkqX31X3bUq6kYXwAUbTASRjFmZmhWNm0O
         WYnBjdeJOnWQZoM7O3eRlSsj50lWDfhQ3tFlRteazerqcPOGGBnHTIzoMB/kb5yZFiG3
         Sy2GKL2IpbxOH98uo/YNBb815eUOUSqEIKXLTPKY2Gb3bpQvcyPlXK8gLqZNAze06HZ1
         VKpQ==
X-Received: by 10.66.140.106 with SMTP id rf10mr38277461pab.26.1425211723648;
        Sun, 01 Mar 2015 04:08:43 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id cy6sm9091404pdb.15.2015.03.01.04.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:08:43 -0800 (PST)
Date: Sun, 1 Mar 2015 17:39:57 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/12] staging: iio: Use kcalloc instead of kzalloc.
Message-ID: <1c18a9e08fc6e72b6d5ea0a6da7d71efb4f5502d.1425211236.git.navyasri.tech@gmail.com>
References: <cover.1425211235.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425211235.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used for the change is:

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
 drivers/staging/iio/adc/ad7280a.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 4d48707..e7d45ee 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -547,8 +547,9 @@ static int ad7280_attr_init(struct ad7280_state *st)
 {
 	int dev, ch, cnt;
 
-	st->iio_attr = kzalloc(sizeof(*st->iio_attr) * (st->slave_num + 1) *
-				AD7280A_CELLS_PER_DEV * 2, GFP_KERNEL);
+	st->iio_attr = kcalloc(2, sizeof(*st->iio_attr) *
+			       (st->slave_num + 1) * AD7280A_CELLS_PER_DEV,
+			       GFP_KERNEL);
 	if (st->iio_attr == NULL)
 		return -ENOMEM;
 
-- 
1.9.1


