X-GM-THRID: 6401906243858857984
X-Received: by 10.25.199.66 with SMTP id x63mr2328364lff.4.1490559951736;
        Sun, 26 Mar 2017 13:25:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.201 with SMTP id k192ls1029838lfg.18.gmail; Sun, 26 Mar
 2017 13:25:51 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr2387340lfd.25.1490559951360;
        Sun, 26 Mar 2017 13:25:51 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id q207si759371wme.3.2017.03.26.13.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x241.google.com with SMTP id u1so7402111wra.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fr8MeqkVdoywraixFg6diKorXrsEptqqoqxKCFahQ7U=;
        b=HZuLQZlrznKuWgVbAKkSn+9/XROYMrk+namTFevP+Rg8eY/t0DcL7XjMgUNB0KOiup
         Ml1UJG9AHiBcoO3e4E/GQ2WhzJN0AG8gQBX6pnhpy8K73UNYIcfmCzVlaex1zZrqdg8t
         xzMQ2avo9hoFUbqd2q3R7Bk4K6+lc73FC3i21wSoBHY8iI4E54aeGTx3rDhkcsfFECD6
         UJPnRX2btdJN6ofd3F5kgK5HOPfU91MIPbtVdu1he3tIug/ENDSzWa9QW4QRBNqAYFTO
         giR8anUHCE+Nm/kUE/W+RNakoFX3bW7fF20bhHmKvE+ai92w/92/tEeyC8UchiNt9vz6
         J0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fr8MeqkVdoywraixFg6diKorXrsEptqqoqxKCFahQ7U=;
        b=b5lTvv2BN5YQI8KgvYEyjkUttWmhmB/4jjlY3U5yYK70en9Kpk8WRtCRwleeNp7iNL
         Jk+udFj+A5cTqukf8I84HZhBJ/nIAWBSL6wGc6AFFEJbEOKJfi+estHka5NeOYeEfPot
         /KAlwWe4pzd/XGwdl1piHD3bXBIdD3vuFLr3CjURXjd80OqsqnTOZGhOsg8bLB/WL0k8
         Gs6HrDI2dQRUaWU3uH97hdUWefXr3+vOYV1ZEhKv/gffkbAg2TWDz8LLM392kUxDjDWY
         C3XkZ5dp7MKryZ0xNBXEQObzx/R7WjnVLwc3PGF7FFKUQgVeURI7qxhEX7sU3zy90Lnu
         A6ew==
X-Gm-Message-State: AFeK/H2h3aSmQNHCV+KdLRIQymZwKlUL559WRNPNfS/Dm8Q2usOJ9D9kz8Lm1Cws62ABPQ==
X-Received: by 10.28.147.147 with SMTP id v141mr7126985wmd.110.1490559950969;
        Sun, 26 Mar 2017 13:25:50 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id h76sm11592973wmd.33.2017.03.26.13.25.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:25:50 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:25:49 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 5/7. Delete FSF mail address paragraph.
Message-ID: <20170326202549.GA10902@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/rtl8712_recv.h            | 4 ----
 drivers/staging/rtl8712/rtl8712_regdef.h          | 4 ----
 drivers/staging/rtl8712/rtl8712_spec.h            | 4 ----
 drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h   | 4 ----
 drivers/staging/rtl8712/rtl8712_syscfg_regdef.h   | 4 ----
 drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h | 5 -----
 drivers/staging/rtl8712/rtl8712_timectrl_regdef.h | 5 -----
 drivers/staging/rtl8712/rtl8712_wmac_bitdef.h     | 4 ----
 drivers/staging/rtl8712/rtl8712_wmac_regdef.h     | 4 ----
 drivers/staging/rtl8712/rtl8712_xmit.c            | 4 ----
 10 files changed, 42 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 0352e6f..a51e30c 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_regdef.h b/drivers/staging/rtl8712/rtl8712_regdef.h
index e7bca55..f038fef 100644
--- a/drivers/staging/rtl8712/rtl8712_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_regdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_spec.h b/drivers/staging/rtl8712/rtl8712_spec.h
index 51e0428..fd88e81 100644
--- a/drivers/staging/rtl8712/rtl8712_spec.h
+++ b/drivers/staging/rtl8712/rtl8712_spec.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h b/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
index 2e66d28..4ceff4c 100644
--- a/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_syscfg_bitdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h b/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
index 767dfdf..618e535 100644
--- a/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_syscfg_regdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
index 7244215..c1a4c13 100644
--- a/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_timectrl_bitdef.h
@@ -11,11 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
- *
  ******************************************************************************/
 #ifndef __RTL8712_TIMECTRL_BITDEF_H__
 #define __RTL8712_TIMECTRL_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_timectrl_regdef.h b/drivers/staging/rtl8712/rtl8712_timectrl_regdef.h
index 106916c..05bb96e 100644
--- a/drivers/staging/rtl8712/rtl8712_timectrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_timectrl_regdef.h
@@ -11,11 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
- *
  ******************************************************************************/
 #ifndef __RTL8712_TIMECTRL_REGDEF_H__
 #define __RTL8712_TIMECTRL_REGDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h b/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
index 61a3603..67013a9 100644
--- a/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_wmac_bitdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_wmac_regdef.h b/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
index d9f8347..81d1801 100644
--- a/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_wmac_regdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 7fe6265..b91df3e 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -13,10 +13,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
-- 
2.7.4


