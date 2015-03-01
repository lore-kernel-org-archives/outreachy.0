X-GM-THRID: 5368833900544
X-Received: by 10.66.97.10 with SMTP id dw10mr21632414pab.48.1425211791387;
        Sun, 01 Mar 2015 04:09:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.87 with SMTP id s84ls953665ioe.76.gmail; Sun, 01 Mar
 2015 04:09:51 -0800 (PST)
X-Received: by 10.42.163.8 with SMTP id a8mr22527440icy.2.1425211791232;
        Sun, 01 Mar 2015 04:09:51 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si1154035pac.0.2015.03.01.04.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 04:09:51 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so6333239pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 04:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xj286Hkb/fX5l9gtL2UommBJhI2Mk5UoOEhkIOvUnNA=;
        b=V8QgHhOlb+9So2tte3WKR8Mvw3m8Mw8x3MRMSm6EzqiNDq3t/gr5fublLQ+DofU9BM
         7/wv726MIV2BDlgS8C4OxUGGWs6k6fkKv8qJ1N7NtC9SR/FgCkCuo8Rg54xnmcyYQihr
         IxfTYasIiqRH/qyphSZFx5M37QXfHE3fuO8fkBvKsdtrS/sh8NS5TF9TEgAFT6y12srG
         hZLVsp8cjpn4RH+tq8Y9l8/El0O0AlxKw36i9rjddyB/ZGTsgRoFR+ZNtb5omruwIKRd
         FpQ+C2pXbYcIP136AewJTjJtYfqM+ho8lrRJ4agEzbHdOvwG9mkQdI3aKzRuatnhUTw3
         V38w==
X-Received: by 10.68.102.194 with SMTP id fq2mr38062482pbb.99.1425211791122;
        Sun, 01 Mar 2015 04:09:51 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id ng17sm8968299pdb.91.2015.03.01.04.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:09:50 -0800 (PST)
Date: Sun, 1 Mar 2015 17:41:04 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/12] staging: wlan-ng: Use kzalloc instead of kmalloc.
Message-ID: <d61510fa00686c559b8f2e509748f601a63ce61c.1425211236.git.navyasri.tech@gmail.com>
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
 drivers/staging/wlan-ng/hfa384x_usb.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index c85b1b5..e109a7f 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -619,11 +619,10 @@ static hfa384x_usbctlx_t *usbctlx_alloc(void)
 {
 	hfa384x_usbctlx_t *ctlx;
 
-	ctlx = kmalloc(sizeof(*ctlx), in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
-	if (ctlx != NULL) {
-		memset(ctlx, 0, sizeof(*ctlx));
+	ctlx = kzalloc(sizeof(*ctlx),
+		       in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
+	if (ctlx != NULL)
 		init_completion(&ctlx->done);
-	}
 
 	return ctlx;
 }
-- 
1.9.1


