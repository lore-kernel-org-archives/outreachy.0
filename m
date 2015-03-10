X-GM-THRID: 7382846406656
X-Received: by 10.70.94.102 with SMTP id db6mr18108452pdb.0.1425988286902;
        Tue, 10 Mar 2015 04:51:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.72.51 with SMTP id a19ls69540igv.31.gmail; Tue, 10 Mar 2015
 04:51:26 -0700 (PDT)
X-Received: by 10.42.64.67 with SMTP id f3mr24455734ici.5.1425988286613;
        Tue, 10 Mar 2015 04:51:26 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ni4si45060pdb.2.2015.03.10.04.51.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 04:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so1116129pde.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 04:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mbanlDQV9A6NLGRteJkTec5qPm+uxygS29Uk3kLUeVA=;
        b=T2WfFl0Le/OeYxrnpnuPUt8XeGjNXrJRLcBvQOsTfl8ruUuAcnys4vD+t5YyWTxiKQ
         gtQFDOvAEm3cmfFn0oCVfBkfR4jMty3YvjDK39IxRVog6otULQClFCGz8xwlRjNqkqNn
         +igypOsdcoQSZ8XSU/a1T3PGQcKaaeNpFzAJvapzUsAQdekkcPlftwcUBylaOQNWKybl
         3Mo7AXi0CxeK2ubxZgmsNKaMRGmI/aAw20junjuOjbc2jZgZQVWXpyCxmhvkV7+5SykA
         JFiEaQoEmnz/oZMuoO6uNFlFiIDZkL9qwLOKQoQ2Y1yob3KA9fLaOjfRWp60bBx6WqPd
         XWZw==
X-Received: by 10.66.218.10 with SMTP id pc10mr65050029pac.116.1425988286404;
        Tue, 10 Mar 2015 04:51:26 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id xh3sm689341pab.25.2015.03.10.04.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 04:51:25 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:22:48 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/8] Transform kzalloc calls to kcalloc
Message-ID: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

[changes in v2]
In version v2, I break the original patchset into two.
One for kmalloc -> k{z,c}alloc and other for 
kzalloc -> kcalloc. This patchset includes patches for
kzalloc to kmalloc conversion.

[original cover letter]
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

Navya Sri Nizamkari (8):
  staging: rtl8188eu: Use kcalloc instead of kzalloc.
  staging: rtl8188eu: Use kcalloc instead of kzalloc
  staging: dgnc: Use kcalloc instead of kzalloc.
  staging: iio: Use kcalloc instead of kzalloc.
  staging: iio: Use kcalloc instead of kzalloc
  staging: media: Use kcalloc instead of kzalloc.
  staging: media: Use kcalloc instead of kzalloc
  staging: unisys: Use kcalloc instead of kzalloc.

 drivers/staging/dgnc/dgnc_driver.c                   | 2 +-
 drivers/staging/iio/accel/lis3l02dq_ring.c           | 2 +-
 drivers/staging/iio/adc/ad7280a.c                    | 5 +++--
 drivers/staging/media/bcm2048/radio-bcm2048.c        | 2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 7 ++++---
 drivers/staging/rtl8188eu/core/rtw_xmit.c            | 3 ++-
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c       | 2 +-
 drivers/staging/unisys/visorutil/procobjecttree.c    | 6 +++---
 8 files changed, 16 insertions(+), 13 deletions(-)

-- 
1.9.1


