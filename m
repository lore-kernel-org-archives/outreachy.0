X-GM-THRID: 6401906527727255552
X-Received: by 10.28.146.72 with SMTP id u69mr281954wmd.6.1490560017298;
        Sun, 26 Mar 2017 13:26:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.149 with SMTP id w143ls1045611wmw.11.canary-gmail; Sun,
 26 Mar 2017 13:26:56 -0700 (PDT)
X-Received: by 10.28.193.199 with SMTP id r190mr285891wmf.9.1490560016508;
        Sun, 26 Mar 2017 13:26:56 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id k74si237994wmd.1.2017.03.26.13.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x244.google.com with SMTP id w43so4544452wrb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K3TiLYFcS3SHMy/acfBynf6hSmSEDp/tmaWWLgxYXpI=;
        b=tZEsiZ4NDjFXn0nN7bRH1ufrGbM3y8ZHxo623jVuW7Z/EDFdjZyyjya2GCR0qwsRIU
         pBYQ/iANeTF8+z9e6wvU8mJp+Tnb2Z5E/3+zsoadDaYyzsTuNMpOCdm2lzgDrW+3pb3M
         NIThL4z4cTtj3Yoql43mBULkA+tKlCGD9sfG/V2yeyIWtO+UM4ces0Ehedro7RK7DUmX
         4ZWb8fqGriAmisDAmxZFlhefiajmzlXQgusd7yo8mGVuxbbymIRGXlI3xIpqWxdG4UsN
         HfSnWDitDwT52IZiBBe/BR8X7siptixQSk6ZlDH53pERRk3MeFNRchNe66iHOFAX4xqY
         dqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K3TiLYFcS3SHMy/acfBynf6hSmSEDp/tmaWWLgxYXpI=;
        b=tyFAw1cIPAOMokTcfbzKRZOWlsoIksrAsJuROvAXKd70s88ZTVTXl4CCFZVCqf0NER
         kHNO9pUVrToRlR9ONa9SdNhmjWaaJmLA9cHhOm3JP6h0Yc4tuODxnl+a8LC1VcA/LJmq
         6/CMGTgdq8/UTpaEHcJkhSU9Cvq60kyXwxGpgMzmIZiMNVrjfCpFfiIiwRAxC61lz/QA
         UdidbiEj4aWi71ZRzZ6tQCjrOimQWMdA4fV4GFCVW2GVfGwo8J0u0ry1F+59i80GiVPS
         2XfumrKjLzhd8ISJWSHIjkul8KaimKTdImfxEVVS9UHkia+KVbNme6KHcAIgDr5OdvJx
         6Sdg==
X-Gm-Message-State: AFeK/H29fJEc7pfYsh8p/yWCQ1ampvF7jzbvmZbQcV6VvtG5FdAso/ac0VeRJsGD70zLdQ==
X-Received: by 10.223.178.182 with SMTP id g51mr9392209wrd.12.1490560016122;
        Sun, 26 Mar 2017 13:26:56 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id k203sm3430757wmk.4.2017.03.26.13.26.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:26:55 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:26:53 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 6/7. Delete FSF mail address paragraph.
Message-ID: <20170326202653.GA10938@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/rtl8712_xmit.h  | 4 ----
 drivers/staging/rtl8712/sta_info.h      | 4 ----
 drivers/staging/rtl8712/usb_halinit.c   | 4 ----
 drivers/staging/rtl8712/usb_intf.c      | 4 ----
 drivers/staging/rtl8712/usb_ops.c       | 4 ----
 drivers/staging/rtl8712/usb_ops.h       | 4 ----
 drivers/staging/rtl8712/usb_ops_linux.c | 4 ----
 drivers/staging/rtl8712/usb_osintf.h    | 4 ----
 drivers/staging/rtl8712/wifi.h          | 4 ----
 drivers/staging/rtl8712/wlan_bssdef.h   | 4 ----
 10 files changed, 40 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 02b1593..f0c356a 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
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
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index 742dfa0..fb11f34 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
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
diff --git a/drivers/staging/rtl8712/usb_halinit.c b/drivers/staging/rtl8712/usb_halinit.c
index 0b15985..6c51c22 100644
--- a/drivers/staging/rtl8712/usb_halinit.c
+++ b/drivers/staging/rtl8712/usb_halinit.c
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
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 897d462..4d219fd 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
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
diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index 332e2e5..45eaf9b 100644
--- a/drivers/staging/rtl8712/usb_ops.c
+++ b/drivers/staging/rtl8712/usb_ops.c
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
diff --git a/drivers/staging/rtl8712/usb_ops.h b/drivers/staging/rtl8712/usb_ops.h
index 78e775a..8a0923e 100644
--- a/drivers/staging/rtl8712/usb_ops.h
+++ b/drivers/staging/rtl8712/usb_ops.h
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
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 441e76b..61e59ee 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
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
diff --git a/drivers/staging/rtl8712/usb_osintf.h b/drivers/staging/rtl8712/usb_osintf.h
index 609f921..6a168ff 100644
--- a/drivers/staging/rtl8712/usb_osintf.h
+++ b/drivers/staging/rtl8712/usb_osintf.h
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
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 556367b..9143423 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
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
diff --git a/drivers/staging/rtl8712/wlan_bssdef.h b/drivers/staging/rtl8712/wlan_bssdef.h
index 9dc9ce5..8eda728 100644
--- a/drivers/staging/rtl8712/wlan_bssdef.h
+++ b/drivers/staging/rtl8712/wlan_bssdef.h
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
-- 
2.7.4


