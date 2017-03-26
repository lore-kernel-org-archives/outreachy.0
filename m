X-GM-THRID: 6401905410802974720
X-Received: by 10.25.235.21 with SMTP id j21mr258468lfh.10.1490559757041;
        Sun, 26 Mar 2017 13:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.28.10 with SMTP id c10ls1052710wmc.9.gmail; Sun, 26 Mar
 2017 13:22:36 -0700 (PDT)
X-Received: by 10.28.46.20 with SMTP id u20mr279650wmu.14.1490559756061;
        Sun, 26 Mar 2017 13:22:36 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id 82si855376wmg.3.2017.03.26.13.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x242.google.com with SMTP id w43so4521870wrb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=a84JHsvVjfGiJIt5vJIHuAhC7XZ+NyJeK7Jsk/kr0CI=;
        b=W9vXKPaG/SxlUJ4aEa0lsIhcUSnIhfZKBS+753Wvqtw1q+hLEhpIeVDA6PGhKUNocn
         pXXxD0nvf0WFcTfgYWiTMLkbMIfV/KUnTdf7bgq3+Epux+KzjEm/N4PMxI9hY4iO8ZsD
         acBPvpNZOkrfDx/lrcRO51j5+oV6V5g5RIUfGFbthgjKqbBrgRGw6fDhjZr67F3i8tvs
         y7LlWKU/Hk2liqnVOesvjrljyoMCMbjNHfrUmvJ3ftVin9t3Sbs8gh6YPRDGzpt03OaK
         /MQSBr0L95XyeQT37pKT2JD/JdkEUXoEy25BB1L0aoNSBEOuUA9qwtPTKeDNd9VDcWL/
         BDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a84JHsvVjfGiJIt5vJIHuAhC7XZ+NyJeK7Jsk/kr0CI=;
        b=LkrtsMGnd5QHo2YK79iZv8ISGg6TL1Q+LASg5TdvteQXetjvrj5VTM5RMh4ODCn0gU
         dhIqeTppwfKTDUbkzUhvIpDt987exPMFN+wFv7F2MBi3otYvUoxzQlDeM7cgsmjg9/SU
         n6BspAKLtZdAhECwg7PZeSw5+U3Gra1eDsapp95Fx2UEhhifOM3YoPmQh+dL1OllzLR+
         j6O6FEKiFfODhSIkPAB4+ozeqBSgcrnudysB6dRuS5QqvPIS4sINEoaboG3+ssbusb7l
         S2mhRcPIMN1jfYk+5gNT8KjCJBUDm4KxF4B1Sr4zeZku2xd+wkm9G/9mTZaYDSrfqJvN
         9wOA==
X-Gm-Message-State: AFeK/H0qIWC7C3FuUQuhtoGed2IeBEsUvvm4VhjGtYvWLEFXND6pQ2RN0d9PQ/nE1BNlcg==
X-Received: by 10.28.111.151 with SMTP id c23mr6716726wmi.17.1490559755635;
        Sun, 26 Mar 2017 13:22:35 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id p7sm12060904wrc.19.2017.03.26.13.22.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:22:35 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:22:33 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 2/7: Delete FSF mail address paragraph
Message-ID: <20170326202233.GA10824@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/mlme_osdep.h             | 4 ----
 drivers/staging/rtl8712/mp_custom_oid.h          | 4 ----
 drivers/staging/rtl8712/osdep_intf.h             | 4 ----
 drivers/staging/rtl8712/recv_linux.c             | 4 ----
 drivers/staging/rtl8712/recv_osdep.h             | 4 ----
 drivers/staging/rtl8712/rtl8712_bitdef.h         | 4 ----
 drivers/staging/rtl8712/rtl8712_cmd.c            | 4 ----
 drivers/staging/rtl8712/rtl8712_cmd.h            | 4 ----
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h | 5 -----
 drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h | 5 -----
 10 files changed, 42 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_osdep.h b/drivers/staging/rtl8712/mlme_osdep.h
index a20fe81..c155b40 100644
--- a/drivers/staging/rtl8712/mlme_osdep.h
+++ b/drivers/staging/rtl8712/mlme_osdep.h
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
diff --git a/drivers/staging/rtl8712/mp_custom_oid.h b/drivers/staging/rtl8712/mp_custom_oid.h
index 4051008..69a5162 100644
--- a/drivers/staging/rtl8712/mp_custom_oid.h
+++ b/drivers/staging/rtl8712/mp_custom_oid.h
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
diff --git a/drivers/staging/rtl8712/osdep_intf.h b/drivers/staging/rtl8712/osdep_intf.h
index 5d37e1f..26ee08e 100644
--- a/drivers/staging/rtl8712/osdep_intf.h
+++ b/drivers/staging/rtl8712/osdep_intf.h
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
diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 576c15d..8101f39 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
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
diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index 1f4986e..79be0a8 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_bitdef.h b/drivers/staging/rtl8712/rtl8712_bitdef.h
index bff57a8..3d865a8 100644
--- a/drivers/staging/rtl8712/rtl8712_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_bitdef.h
@@ -11,10 +11,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  *
  ******************************************************************************/
 
diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 5346c65..05216d9 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
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
diff --git a/drivers/staging/rtl8712/rtl8712_cmd.h b/drivers/staging/rtl8712/rtl8712_cmd.h
index 67e9e91..e875606 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.h
+++ b/drivers/staging/rtl8712/rtl8712_cmd.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
index b7dda90..53598b4 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
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
 #ifndef __RTL8712_CMDCTRL_BITDEF_H__
 #define __RTL8712_CMDCTRL_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
index 9374f1c..6ea0aa8 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h
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
 #ifndef __RTL8712_CMDCTRL_REGDEF_H__
 #define __RTL8712_CMDCTRL_REGDEF_H__
-- 
2.7.4


