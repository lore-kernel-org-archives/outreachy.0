X-GM-THRID: 6401905982375460864
X-Received: by 10.25.201.198 with SMTP id z189mr2336302lff.15.1490559890273;
        Sun, 26 Mar 2017 13:24:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.35.129 with SMTP id j123ls1026464lfj.50.gmail; Sun, 26 Mar
 2017 13:24:49 -0700 (PDT)
X-Received: by 10.25.215.37 with SMTP id o37mr2301924lfg.20.1490559889672;
        Sun, 26 Mar 2017 13:24:49 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id i76si860954wmh.1.2017.03.26.13.24.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:24:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x243.google.com with SMTP id 20so7376298wrx.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nLAIQaEo5Sbm+ZQcP3U8GjtAKKoFHe8FMYoXT7PPQq8=;
        b=o3ddnnmEq+WasiTKaNt39+vjf784QTAQCh2HZ10GXa2urEejY/qiJ17T/7aGLH64Vv
         K4+qYer8Gft+eO8FaoZzg4axxOTjZ+dXxFpOYFM4n263T7quZgovfri7g+kqP2HyoNko
         7ibHgo63P5sloA9z6v9NcQ8bSbbvGpTDCBHsxiZmQc3sjQh35l6rYbzx5lzxT0IWp4RU
         c6sudZoJmgD/Q9x4p5BQ2c8ji55M9PCajLR3fTQcvfCeGgx7ZTrZ/+3J07U2U50Y3nAQ
         siGfbO2nsJgADgeg3/5Kkf/ZDAr4/E1vI8v6KzSRuv1DKm8a8s9bjQabZs/HXcztkTC/
         wgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nLAIQaEo5Sbm+ZQcP3U8GjtAKKoFHe8FMYoXT7PPQq8=;
        b=n+oeWFRsj+Q6uxI9M0aG5cziLd+ZZSTyRPELRcqjAOTCY0Qy6Yv1BHNF6TQcl/HLu0
         GUJ8S9IV2vl7vU37vnzy4hZ6+VflWfct350Hqz1/iTdpvJuJSWjVtqcRlB3rFfFk7VZH
         NncZ1A/2ATZ0YxqPzKyzYLk6X3n9lGcdCtZxbXulVBlawHWGai0Tjnvc6TbAfKhZdbRZ
         XS1/P1Azf418AVl4Pqi1vCyrz/wN4Nb5Q0C4SIzuMtM7oNaePzfGro03kMk5MiFKSeMe
         zHP9xMwuv7vySXiJrdSMU1hCHYywuS7KbHIeKxQsEGcaAHmwXJlbtMqEv1undkORHhqU
         5FxQ==
X-Gm-Message-State: AFeK/H2kHJYwdJGOH45tKF6vGnMLmnMrxb8gPO0kVZ6L+gExttzPQI67bRoBMV87Id3oeQ==
X-Received: by 10.28.211.9 with SMTP id k9mr6538052wmg.96.1490559889257;
        Sun, 26 Mar 2017 13:24:49 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id m29sm626119wrm.4.2017.03.26.13.24.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:24:48 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:24:47 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 4/7. Delete FSF mail address paragraph.
Message-ID: <20170326202447.GA10878@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h  | 5 -----
 drivers/staging/rtl8712/rtl8712_io.c                | 4 ----
 drivers/staging/rtl8712/rtl8712_led.c               | 4 ----
 drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h | 5 -----
 drivers/staging/rtl8712/rtl8712_macsetting_regdef.h | 5 -----
 drivers/staging/rtl8712/rtl8712_powersave_bitdef.h  | 5 -----
 drivers/staging/rtl8712/rtl8712_powersave_regdef.h  | 5 -----
 drivers/staging/rtl8712/rtl8712_ratectrl_bitdef.h   | 5 -----
 drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h   | 4 ----
 drivers/staging/rtl8712/rtl8712_recv.c              | 4 ----
 10 files changed, 46 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
index 49598c3..072a719 100644
--- a/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h
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
 #ifndef __RTL8712_INTERRUPT_BITDEF_H__
 #define __RTL8712_INTERRUPT_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_io.c b/drivers/staging/rtl8712/rtl8712_io.c
index 391eff3..7659afb 100644
--- a/drivers/staging/rtl8712/rtl8712_io.c
+++ b/drivers/staging/rtl8712/rtl8712_io.c
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
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index da1d4a6..ff55aa6 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
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
diff --git a/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h b/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
index 28e0a7e..d7c589b 100644
--- a/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_macsetting_bitdef.h
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
 #ifndef __RTL8712_MACSETTING_BITDEF_H__
 #define __RTL8712_MACSETTING_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_macsetting_regdef.h b/drivers/staging/rtl8712/rtl8712_macsetting_regdef.h
index ced0da9..2939c8b 100644
--- a/drivers/staging/rtl8712/rtl8712_macsetting_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_macsetting_regdef.h
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
 #ifndef __RTL8712_MACSETTING_REGDEF_H__
 #define __RTL8712_MACSETTING_REGDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_powersave_bitdef.h b/drivers/staging/rtl8712/rtl8712_powersave_bitdef.h
index 8fc6894..ef8d6d1 100644
--- a/drivers/staging/rtl8712/rtl8712_powersave_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_powersave_bitdef.h
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
 #ifndef __RTL8712_POWERSAVE_BITDEF_H__
 #define __RTL8712_POWERSAVE_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_powersave_regdef.h b/drivers/staging/rtl8712/rtl8712_powersave_regdef.h
index 4632ddd..67b4b4a 100644
--- a/drivers/staging/rtl8712/rtl8712_powersave_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_powersave_regdef.h
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
 #ifndef __RTL8712_POWERSAVE_REGDEF_H__
 #define __RTL8712_POWERSAVE_REGDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_ratectrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_ratectrl_bitdef.h
index 6d3d6e8..b47ea47a 100644
--- a/drivers/staging/rtl8712/rtl8712_ratectrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_ratectrl_bitdef.h
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
 #ifndef __RTL8712_RATECTRL_BITDEF_H__
 #define __RTL8712_RATECTRL_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h b/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
index 73dfc36..88fec48 100644
--- a/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_ratectrl_regdef.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 266ffef..632612c 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
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


