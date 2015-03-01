X-GM-THRID: 5368833900544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df23be8587a10da9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.227.162 with SMTP id d32mr24363269yhq.7.1425211688891;
        Sun, 01 Mar 2015 04:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.94 with SMTP id 91ls1082924ioi.72.gmail; Sun, 01 Mar
 2015 04:08:08 -0800 (PST)
X-Received: by 10.68.57.130 with SMTP id i2mr21602127pbq.1.1425211688618;
        Sun, 01 Mar 2015 04:08:08 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id m1si1163027pdc.0.2015.03.01.04.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 04:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so8825889pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 04:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1ZR//klIeFMzIZzxMlocPZ3dft3YQfD0Nmfa1S5FEQw=;
        b=MjnBJl7WP5uiUaeKQ1ur7i1smuWMys2nifPaE5Ud1zWP1oKk7qQaL7/KLtoMjdWrmp
         lMeYjgNsgMBPBYuEY26ktRZuE8idGuPujA/EmjQHbQIEUZ7n0uaeyK6Nc5mND7dpbn4r
         hZjhyAR8w6zrwVTG6d2efnPHYqfE3Plqr/4LkCZe5+9f9ZmJbYiotBr6/9mCnorgTiRs
         3ds+waCtb+CBw2anCd/H3vmSY3dBRYwD/Q0vT74GQn4E6n4IypLMYUe3GDACms2zkL38
         7K3+p0IfWM74d717L7ej1o1NNJyk7uH20Q1gwYYhOcxGzlw2YW9kS4Xq1G/i96rbktSy
         vEsA==
X-Received: by 10.66.218.10 with SMTP id pc10mr39021925pac.116.1425211688521;
        Sun, 01 Mar 2015 04:08:08 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id fl4sm9134709pab.8.2015.03.01.04.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:08:08 -0800 (PST)
Date: Sun, 1 Mar 2015 17:39:22 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/12] staging: dgnc: Use kcalloc instead of kzalloc.
Message-ID: <8bc80b4dce885311957caae443c01202e1ab5f64.1425211236.git.navyasri.tech@gmail.com>
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
 drivers/staging/dgnc/dgnc_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index a2543cf..5990b1e 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -408,7 +408,7 @@ static int dgnc_found_board(struct pci_dev *pdev, int id)
 		return -ENOMEM;
 
 	/* make a temporary message buffer for the boot messages */
-	brd->msgbuf_head = kzalloc(sizeof(u8) * 8192, GFP_KERNEL);
+	brd->msgbuf_head = kcalloc(8192, sizeof(u8), GFP_KERNEL);
 	brd->msgbuf = brd->msgbuf_head;
 
 	if (!brd->msgbuf) {
-- 
1.9.1


