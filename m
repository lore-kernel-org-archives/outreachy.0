X-GM-THRID: 5368833900544
X-Received: by 10.66.102.100 with SMTP id fn4mr21708026pab.19.1425211482956;
        Sun, 01 Mar 2015 04:04:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.204 with SMTP id 195ls1056016ioe.24.gmail; Sun, 01 Mar
 2015 04:04:42 -0800 (PST)
X-Received: by 10.50.176.202 with SMTP id ck10mr11958721igc.5.1425211482759;
        Sun, 01 Mar 2015 04:04:42 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id xj4si1115770pbc.2.2015.03.01.04.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 04:04:42 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id y10so32430440pdj.6
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 04:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DyT5XtA6v+R1gBw3g6dv2JwAg4i84xiR9F7e4k2gscQ=;
        b=gm9sWB/3y1FLFIjUEI3YON/jA7aj8sGJNp4+ctCkAODlj+Pm5/dicGTlpWH1Nm37u4
         fFjW6XNjhlKcjhueVFooa8qqWvdKMfQEPTP6Lpl0XecD3ryfqBXODWMB+LKPtZSjL1jg
         kyYzBxYSsNs+Ls6YsAcQN/J/ap1OI2JTXGFomkLsHJfJsMJ926bY4QQNxYWihvX8JgEH
         Qa/EwtgQfzMwIUnX8wk1IDvZh/D1Eky18jubcolhbOxq46ICEtI717b+X20x5VkAt2RF
         IJhmhgGr+xl0GniZ6AvfNtYZHpD6I8lc2o2NrJJYnbsn/Sz0zBQHqtinha4xrSKidTTd
         14tQ==
X-Received: by 10.66.121.134 with SMTP id lk6mr17970341pab.67.1425211482623;
        Sun, 01 Mar 2015 04:04:42 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id zs9sm9016916pbc.43.2015.03.01.04.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:04:42 -0800 (PST)
Date: Sun, 1 Mar 2015 17:35:56 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/12] staging: Transform kzalloc calls to kcalloc and
 kmalloc to kzalloc.
Message-ID: <cover.1425211235.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset changes some kzalloc calls to kcalloc and
 kmalloc to kzalloc.

The semantic patch used to make this change is:

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

Navya Sri Nizamkari (12):
  staging: rtl8192u: Use kzalloc instead of kmalloc.
  staging: rtl8188eu: Use kcalloc instead of kzalloc.
  staging: rtl8188eu: Use kcalloc instead of kzalloc.
  staging: dgnc: Use kcalloc instead of kzalloc.
  staging: iio: Use kcalloc instead of kzalloc.
  staging: iio: Use kcalloc instead of kzalloc.
  staging: wlan-ng: Use kzalloc instead of kmalloc.
  staging: media: Use kcalloc instead of kzalloc.
  staging: media: Use kcalloc instead of kzalloc.
  staging: unisys: Use kcalloc instead of kzalloc.
  staging: rtl8192e: Use kzalloc instead of kcalloc.
  staging: rtl8192e: Use kzalloc instead of kmalloc.

 drivers/staging/dgnc/dgnc_driver.c                     | 2 +-
 drivers/staging/iio/accel/lis3l02dq_ring.c             | 2 +-
 drivers/staging/iio/adc/ad7280a.c                      | 5 +++--
 drivers/staging/media/bcm2048/radio-bcm2048.c          | 2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c   | 7 ++++---
 drivers/staging/rtl8188eu/core/rtw_xmit.c              | 3 ++-
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c         | 2 +-
 drivers/staging/rtl8192e/rtllib_module.c               | 5 ++---
 drivers/staging/rtl8192e/rtllib_softmac.c              | 3 +--
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
 drivers/staging/unisys/visorutil/procobjecttree.c      | 6 +++---
 drivers/staging/wlan-ng/hfa384x_usb.c                  | 7 +++----
 12 files changed, 23 insertions(+), 24 deletions(-)

-- 
1.9.1


