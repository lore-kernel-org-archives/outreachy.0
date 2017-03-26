X-GM-THRID: 6401905756647456768
X-Received: by 10.25.201.198 with SMTP id z189mr2336073lff.15.1490559837165;
        Sun, 26 Mar 2017 13:23:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.81 with SMTP id a78ls1022199lfe.35.gmail; Sun, 26 Mar
 2017 13:23:56 -0700 (PDT)
X-Received: by 10.25.216.154 with SMTP id r26mr2228597lfi.7.1490559836428;
        Sun, 26 Mar 2017 13:23:56 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id x188si497148wmx.0.2017.03.26.13.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x241.google.com with SMTP id u1so7393721wra.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yYPHaXHVLm7gikhLmZ9WuUsvYCR8gIvVggLzq/9/nX8=;
        b=fk9/VIbQoTmJMG4Fb2hyKTElDWWR+YJPVDssSBcJBc5l+n+mWt7b61552u1+vA1dA1
         7frmoAOSAey+BIXzJYANLlgcTdPfho7b9wZE8w+ZPHXSenzDjs/lsKoWhWFyl9aa6PXi
         rPVUajkKZv4r8+pJoIzwb4OwDS/W8IhBJAEfocIeA51fv/2LHnUw4xbJ2lLcVj5BOfJs
         S5NW0Zr9rAQlyXGU1yuFOkizXGRIiJltmA2XIlUkuMfw1wAeLNrMr1gV0jqQaM6DmOcO
         5gBoQGL4P864fZcN2b69xGK7PpPHXf4hOWcZNGQMc64cnFEnfMdkIDrHnX+HBJrGm9yU
         mIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yYPHaXHVLm7gikhLmZ9WuUsvYCR8gIvVggLzq/9/nX8=;
        b=dsLw8fYye/RMASiC396RQoJTdDQ4STuPQ/A58gHRU8xMaPUJRryYrxYRMs6pyKscYG
         C1vGRPm7B+PvknlcqdudPuBps+l8OAX6LMUf6OqXH1QF24Z0G30VFdiiUZk1xOsqCGP5
         R+d+V0WhCutTDXZhnU38jl71j4I1jwOlQAIXDKmINNBbStOu6nv6n9eZ2k86zNW+rB/D
         2LhfZ2GdHEXrTvQUDhim5DU99gWYibVvdvjuFJ1b6FX7XakHxlvXFTpHiSAxa0ha5Cc7
         cTCwMpjC5oEg5/qE188CAqeazEVnUyEQLd4NPfAizeg23OU29AaPEWuldd+McQBDKfmp
         7ieA==
X-Gm-Message-State: AFeK/H3s6WlTpArmMzAOCyp6YgfriQUSzIfHdphElARZqG7Z6cppK8kaVraEAxDeZhMoRw==
X-Received: by 10.28.167.203 with SMTP id q194mr6613868wme.111.1490559835994;
        Sun, 26 Mar 2017 13:23:55 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id t30sm12029976wra.55.2017.03.26.13.23.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:23:55 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:23:53 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Patch 3/7. Delete FSF mail address paragraph.
Message-ID: <20170326202353.GA10854@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h   | 5 -----
 drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h   | 5 -----
 drivers/staging/rtl8712/rtl8712_edcasetting_bitdef.h | 4 ----
 drivers/staging/rtl8712/rtl8712_efuse.c              | 4 ----
 drivers/staging/rtl8712/rtl8712_event.h              | 4 ----
 drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h    | 5 -----
 drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h    | 5 -----
 drivers/staging/rtl8712/rtl8712_gp_bitdef.h          | 4 ----
 drivers/staging/rtl8712/rtl8712_gp_regdef.h          | 4 ----
 drivers/staging/rtl8712/rtl8712_hal.h                | 4 ----
 10 files changed, 44 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
index 8bd4837..b780744 100644
--- a/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h
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
 #ifndef __RTL8712_DEBUGCTRL_BITDEF_H__
 #define __RTL8712_DEBUGCTRL_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
index 43630bb..5054a67 100644
--- a/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h
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
 #ifndef __RTL8712_DEBUGCTRL_REGDEF_H__
 #define __RTL8712_DEBUGCTRL_REGDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_edcasetting_bitdef.h b/drivers/staging/rtl8712/rtl8712_edcasetting_bitdef.h
index 32dab81..8ffaba3 100644
--- a/drivers/staging/rtl8712/rtl8712_edcasetting_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_edcasetting_bitdef.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 205298e..3c2cbfe 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
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
diff --git a/drivers/staging/rtl8712/rtl8712_event.h b/drivers/staging/rtl8712/rtl8712_event.h
index b383740..a47caad 100644
--- a/drivers/staging/rtl8712/rtl8712_event.h
+++ b/drivers/staging/rtl8712/rtl8712_event.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
index c564dc8..a0f7db1 100644
--- a/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h
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
 #ifndef __RTL8712_FIFOCTRL_BITDEF_H__
 #define __RTL8712_FIFOCTRL_BITDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
index 29b89c4..cfcc151 100644
--- a/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h
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
 #ifndef __RTL8712_FIFOCTRL_REGDEF_H__
 #define __RTL8712_FIFOCTRL_REGDEF_H__
diff --git a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
index 44c9060..90e899f 100644
--- a/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_gp_bitdef.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_gp_regdef.h b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
index 8fc68f6..e23b246 100644
--- a/drivers/staging/rtl8712/rtl8712_gp_regdef.h
+++ b/drivers/staging/rtl8712/rtl8712_gp_regdef.h
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
diff --git a/drivers/staging/rtl8712/rtl8712_hal.h b/drivers/staging/rtl8712/rtl8712_hal.h
index 84456bb..f8d367d 100644
--- a/drivers/staging/rtl8712/rtl8712_hal.h
+++ b/drivers/staging/rtl8712/rtl8712_hal.h
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


