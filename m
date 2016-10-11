X-GM-THRID: 6339043757720076288
X-Received: by 10.107.39.75 with SMTP id n72mr805741ion.9.1476192954803;
        Tue, 11 Oct 2016 06:35:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.72 with SMTP id q69ls4025023itc.3.canary; Tue, 11 Oct
 2016 06:35:52 -0700 (PDT)
X-Received: by 10.107.134.234 with SMTP id q103mr1198074ioi.44.1476192952217;
        Tue, 11 Oct 2016 06:35:52 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id a143si509260pfa.2.2016.10.11.06.35.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 06:35:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hh10so1682977pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 06:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K9P8ALElPrOMI7dRLjXJT2UewPyWP57joOgHGcJR+IU=;
        b=qnEnPaVi9cZQEjlIlifWDrd0RZ+cgHJzjYbdL/X79E1JgZ4aMAIytzgEpSjaqIHIhQ
         Z3weXEimBjuChuzIl9JJnjLUBz6f3Q6t76hK+FbeSofWuAp1f5JshoQcXWdY4A3C3Vjg
         wrOuXScNVMarBwAPRcnygsj323S97vECEk/uhoaUkIIbN2QzsPr2tXwDP5T0udKv/44l
         lW+0bWnjoLlxny53e79v30IyXBDsmtotw9oegEfT6wmhCWMMpRsrXeCvnptClNas9OZi
         wngLZNVLxkoMx2Qv/n+fR5WgKXq2TWJqIOcEVh49EMxFOwtTS6i876BMp8uEipkeViVi
         D5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K9P8ALElPrOMI7dRLjXJT2UewPyWP57joOgHGcJR+IU=;
        b=er4ts1uhTGFUPcAxiSwn5lMT1jusWZFdy8Mh1+9UT+wMpIug6gy8gzJy7VglbKB2a8
         Y2kUk82RLGX+neg+obaPzJTktl3jKPrZYQngqtwZMJvJ/GsNINhKaJFcejwbtTno2GZB
         P69OKNq1rNvaXXqK5bbVIaeqra9Fgrn36OLSq/w165jYLaY7cKP3xoktZfHHyd2459gn
         8JwKkX/OdrIasvtBpQnVn2vrhDpYuCAfsOqgoqKibYnqLYXoXSNVbp3g80/QacQjuoEy
         4zgsKHaoAXU67PlOniiquknNXjxRgbTlKcSzCgG69h7DbGKoUcxgp89CksclqtbVOmiX
         zn7A==
X-Gm-Message-State: AA6/9RlgaPBnJZjlcONco4bijHhzCCtWSiWsq/NXAc1O3YEwGjh1akbW17cEKvhv68wBLQ==
X-Received: by 10.66.52.45 with SMTP id q13mr6808486pao.161.1476192951832;
        Tue, 11 Oct 2016 06:35:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.246.134.217])
        by smtp.gmail.com with ESMTPSA id xn11sm4544604pac.38.2016.10.11.06.35.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 06:35:51 -0700 (PDT)
Date: Tue, 11 Oct 2016 19:05:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@aliitletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH v3] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161011133545.GA5979@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF
has changed address in the past, and may change again. Linux already
includes a copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 Changes in v3:
 -Removes the complete paragraph related to mailing address.

 drivers/staging/vt6655/baseband.c    | 5 -----
 drivers/staging/vt6655/baseband.h    | 5 -----
 drivers/staging/vt6655/card.c        | 4 ----
 drivers/staging/vt6655/card.h        | 4 ----
 drivers/staging/vt6655/channel.c     | 4 ----
 drivers/staging/vt6655/channel.h     | 4 ----
 drivers/staging/vt6655/desc.h        | 4 ----
 drivers/staging/vt6655/device.h      | 4 ----
 drivers/staging/vt6655/device_cfg.h  | 4 ----
 drivers/staging/vt6655/device_main.c | 4 ----
 drivers/staging/vt6655/dpc.c         | 4 ----
 drivers/staging/vt6655/dpc.h         | 4 ----
 drivers/staging/vt6655/key.c         | 5 -----
 drivers/staging/vt6655/key.h         | 5 -----
 drivers/staging/vt6655/mac.c         | 5 -----
 drivers/staging/vt6655/mac.h         | 5 -----
 drivers/staging/vt6655/power.c       | 5 -----
 drivers/staging/vt6655/power.h       | 4 ----
 drivers/staging/vt6655/rf.c          | 5 -----
 drivers/staging/vt6655/rf.h          | 5 -----
 drivers/staging/vt6655/rxtx.c        | 4 ----
 drivers/staging/vt6655/rxtx.h        | 4 ----
 drivers/staging/vt6655/srom.c        | 4 ----
 drivers/staging/vt6655/srom.h        | 5 -----
 drivers/staging/vt6655/tmacro.h      | 4 ----
 drivers/staging/vt6655/upc.h         | 4 ----
 26 files changed, 114 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 2a46b88..44dfa54 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: baseband.c
  *
  * Purpose: Implement functions to access baseband
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index d566e4a..3b2b93d 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: baseband.h
  *
  * Purpose: Implement functions to access baseband
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 5227278..d7ddb6c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: card.c
  * Purpose: Provide functions to setup NIC operation mode
  * Functions:
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 0203c7f..2f0f893 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: card.h
  *
  * Purpose: Provide functions to setup NIC operation mode
diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 029a8df..ab89956 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: channel.c
  *
  */
diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 2d613e7..2621dfa 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: channel.h
  *
  */
diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index 2d7f6ae..2fee6e7 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: desc.h
  *
  * Purpose:The header file of descriptor
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 55405e0..6263c29 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: device.h
  *
  * Purpose: MAC Data structure
diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index b4c9547..0298ea9 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: device_cfg.h
  *
  * Purpose: Driver configuration header
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 9b2ec25..a6f7a4f 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: device_main.c
  *
  * Purpose: driver entry for initial, open, close, tx and rx.
diff --git a/drivers/staging/vt6655/dpc.c b/drivers/staging/vt6655/dpc.c
index 700032e..9b3fa77 100644
--- a/drivers/staging/vt6655/dpc.c
+++ b/drivers/staging/vt6655/dpc.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: dpc.c
  *
  * Purpose: handle dpc rx functions
diff --git a/drivers/staging/vt6655/dpc.h b/drivers/staging/vt6655/dpc.h
index e80b308..6e75fa9 100644
--- a/drivers/staging/vt6655/dpc.h
+++ b/drivers/staging/vt6655/dpc.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: dpc.h
  *
  * Purpose:
diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
index e161d5d..dad9e29 100644
--- a/drivers/staging/vt6655/key.c
+++ b/drivers/staging/vt6655/key.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: key.c
  *
  * Purpose: Implement functions for 802.11i Key management
diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index d7271974..a502461 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: key.h
  *
  * Purpose: Implement functions for 802.11i Key management
diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index d3f4eb2..359b3c3 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: mac.c
  *
  * Purpose:  MAC routines
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 4d8b748..33b758c 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: mac.h
  *
  * Purpose: MAC routines
diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index 1506b1b..716d2a8 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: power.c
  *
  * Purpose: Handles 802.11 power management  functions
diff --git a/drivers/staging/vt6655/power.h b/drivers/staging/vt6655/power.h
index d619c42..dfcb0ca 100644
--- a/drivers/staging/vt6655/power.h
+++ b/drivers/staging/vt6655/power.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: power.h
  *
  * Purpose: Handles 802.11 power management  functions
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index b41fa25..45bb5a3 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: rf.c
  *
  * Purpose: rf function code
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index e9c7869..b6e8537 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: rf.h
  *
  * Purpose:
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 7e69bc9..6ebab56 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: rxtx.c
  *
  * Purpose: handle WMAC/802.3/802.11 rx & tx functions
diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
index 1e30ecb..89de671 100644
--- a/drivers/staging/vt6655/rxtx.h
+++ b/drivers/staging/vt6655/rxtx.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: rxtx.h
  *
  * Purpose:
diff --git a/drivers/staging/vt6655/srom.c b/drivers/staging/vt6655/srom.c
index 93b398b..635f271 100644
--- a/drivers/staging/vt6655/srom.c
+++ b/drivers/staging/vt6655/srom.c
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: srom.c
  *
  * Purpose:Implement functions to access eeprom
diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 3087d56..6e03ab6 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
- *
  * File: srom.h
  *
  * Purpose: Implement functions to access eeprom
diff --git a/drivers/staging/vt6655/tmacro.h b/drivers/staging/vt6655/tmacro.h
index 597efef..d6a0563 100644
--- a/drivers/staging/vt6655/tmacro.h
+++ b/drivers/staging/vt6655/tmacro.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: tmacro.h
  *
  * Purpose: define basic common types and macros
diff --git a/drivers/staging/vt6655/upc.h b/drivers/staging/vt6655/upc.h
index 85fe046..9806b59 100644
--- a/drivers/staging/vt6655/upc.h
+++ b/drivers/staging/vt6655/upc.h
@@ -12,10 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * File: upc.h
  *
  * Purpose: Macros to access device
-- 
2.7.4


