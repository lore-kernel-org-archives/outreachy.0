X-GM-THRID: 6339043757720076288
X-Received: by 10.66.225.199 with SMTP id rm7mr6126590pac.17.1476028353239;
        Sun, 09 Oct 2016 08:52:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls2902240ioe.45.gmail; Sun, 09 Oct
 2016 08:52:28 -0700 (PDT)
X-Received: by 10.66.147.34 with SMTP id th2mr6696919pab.24.1476028348827;
        Sun, 09 Oct 2016 08:52:28 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id d11si3587763pfl.2.2016.10.09.08.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 08:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hh10so5534290pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 08:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iKbPl5CmubtNMtGfzbp7ZfUk6ArgG0oCUgkYmA9VzWM=;
        b=gU0Ti19qwOgGQzoxfwfWQv9yPfWyGtYB/t2RQSFpEl4KoRD9kaAubwetO9qX8gaJVG
         jG1Sc844j9qIk/GvP92oX6xdW3Weal1N8wcqsjBeyHLWmc/ZMTijtc4dnCu4MTbqrgpC
         9V0Nmezj/wgmZYjBk0n2jeF9BusuRG8aFcrzvfRl+TQ8hro/NCucbf/8iWNrpBDQ7vG/
         lAf1TWSkPqwUdnGy5+wdHywptiTd9t8Big7xlibpXPrHd2kacba4fKTbfE6tsiplJI4X
         +DMPh+TTbOLAoeeC9ItNbwi7P6zQyo6dqGQsOPqi1lJZ9bOnnN1gPDJGELlmcQnNaTov
         4e5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iKbPl5CmubtNMtGfzbp7ZfUk6ArgG0oCUgkYmA9VzWM=;
        b=hj1FzfGBue4WMHT2hHF5h8ATlb4z32WBy70a/h6NEiJMn8oVBbxp/E6ecFXzohbNH/
         CYu2I7DdfN9H4WhWCQF+mo4kt52ygUvVjpmFK2I6yHKZLygHYHcamtX6+aduwNYfwlo1
         XOP9bmRblx0/43TcH/RiRC2Rr8W5Oc87+Wlv99dLcZfiEdA+omqjph+eSAgcHxIJoFGx
         gVVLLbbcxqWvZFlOkx29FQpPD4ubMBJWZ8AhKDqMa9RdVxQQLxeq7bQNO3GDCnt+T9/k
         vT7epum4N/cjjcmi5XCM1Zm3EHHB+FWLdg5rshLljCq5NhTHrilY+6NDVgkvsxlZPYG0
         GRyw==
X-Gm-Message-State: AA6/9Rki9kxfF9WBig8OGccSBWPo0woz4R9ZOQrZPMczetrovleHiMBk4LVMICvJ/IdXsw==
X-Received: by 10.66.117.167 with SMTP id kf7mr46572069pab.110.1476028348545;
        Sun, 09 Oct 2016 08:52:28 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.236.203.225])
        by smtp.gmail.com with ESMTPSA id d2sm27824513pfe.94.2016.10.09.08.52.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 08:52:27 -0700 (PDT)
Date: Sun, 9 Oct 2016 21:22:23 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH v2] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161009155223.GA14800@euri>
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
 Changes in v2:
 -Changelog comments in 72 columns.
 -All the files with the same issue in vt6655 has been fixed.
 drivers/staging/vt6655/baseband.c    | 4 +---
 drivers/staging/vt6655/baseband.h    | 4 +---
 drivers/staging/vt6655/card.c        | 3 +--
 drivers/staging/vt6655/card.h        | 3 +--
 drivers/staging/vt6655/channel.c     | 3 +--
 drivers/staging/vt6655/channel.h     | 3 +--
 drivers/staging/vt6655/desc.h        | 3 +--
 drivers/staging/vt6655/device.h      | 3 +--
 drivers/staging/vt6655/device_cfg.h  | 3 +--
 drivers/staging/vt6655/device_main.c | 3 +--
 drivers/staging/vt6655/dpc.c         | 3 +--
 drivers/staging/vt6655/dpc.h         | 3 +--
 drivers/staging/vt6655/key.c         | 3 +--
 drivers/staging/vt6655/key.h         | 4 +---
 drivers/staging/vt6655/mac.c         | 4 +---
 drivers/staging/vt6655/mac.h         | 4 +---
 drivers/staging/vt6655/power.c       | 4 +---
 drivers/staging/vt6655/power.h       | 3 +--
 drivers/staging/vt6655/rf.c          | 4 +---
 drivers/staging/vt6655/rf.h          | 4 +---
 drivers/staging/vt6655/rxtx.c        | 3 +--
 drivers/staging/vt6655/rxtx.h        | 3 +--
 drivers/staging/vt6655/srom.c        | 3 +--
 drivers/staging/vt6655/srom.h        | 4 +---
 drivers/staging/vt6655/tmacro.h      | 3 +--
 drivers/staging/vt6655/upc.h         | 4 +---
 26 files changed, 26 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 4bc9b6c..c5a3af3 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: baseband.c
  *
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 4ed812e..a732fba 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: baseband.h
  *
diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index dbcea44..e29af55 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: card.c
  * Purpose: Provide functions to setup NIC operation mode
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 0203c7f..fec05d9 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program; 
  *
  * File: card.h
  *
diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 029a8df..80314f5 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: channel.c
  *
diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 2d613e7..e361baf 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: channel.h
  *
diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index 2d7f6ae..7af0d1b 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: desc.h
  *
diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 55405e0..9eccced 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: device.h
  *
diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index b4c9547..6af011f 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: device_cfg.h
  *
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 9b2ec25..1c5c671 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: device_main.c
  *
diff --git a/drivers/staging/vt6655/dpc.c b/drivers/staging/vt6655/dpc.c
index 700032e..581343f 100644
--- a/drivers/staging/vt6655/dpc.c
+++ b/drivers/staging/vt6655/dpc.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: dpc.c
  *
diff --git a/drivers/staging/vt6655/dpc.h b/drivers/staging/vt6655/dpc.h
index e80b308..eac74ea 100644
--- a/drivers/staging/vt6655/dpc.h
+++ b/drivers/staging/vt6655/dpc.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: dpc.h
  *
diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
index e161d5d..8ce42c2 100644
--- a/drivers/staging/vt6655/key.c
+++ b/drivers/staging/vt6655/key.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  *
  * File: key.c
diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index d7271974..3b2c62e 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: key.h
  *
diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index d3f4eb2..3839c9e 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: mac.c
  *
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 030f529..7481d7a 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: mac.h
  *
diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index 1506b1b..616bb15 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: power.c
  *
diff --git a/drivers/staging/vt6655/power.h b/drivers/staging/vt6655/power.h
index d619c42..b291d60 100644
--- a/drivers/staging/vt6655/power.h
+++ b/drivers/staging/vt6655/power.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: power.h
  *
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 447882c..b58c406 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: rf.c
  *
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index e9c7869..9c7d923 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: rf.h
  *
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 7e69bc9..e5595be 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: rxtx.c
  *
diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
index 1e30ecb..b2728a8 100644
--- a/drivers/staging/vt6655/rxtx.h
+++ b/drivers/staging/vt6655/rxtx.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: rxtx.h
  *
diff --git a/drivers/staging/vt6655/srom.c b/drivers/staging/vt6655/srom.c
index ee99277..13116c4 100644
--- a/drivers/staging/vt6655/srom.c
+++ b/drivers/staging/vt6655/srom.c
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: srom.c
  *
diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 531bf00..1d32e9f 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  *
  * File: srom.h
  *
diff --git a/drivers/staging/vt6655/tmacro.h b/drivers/staging/vt6655/tmacro.h
index 597efef..dee10dd 100644
--- a/drivers/staging/vt6655/tmacro.h
+++ b/drivers/staging/vt6655/tmacro.h
@@ -13,8 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ * with this program;
  *
  * File: tmacro.h
  *
diff --git a/drivers/staging/vt6655/upc.h b/drivers/staging/vt6655/upc.h
index 85fe046..70f2f67 100644
--- a/drivers/staging/vt6655/upc.h
+++ b/drivers/staging/vt6655/upc.h
@@ -13,9 +13,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
- *
+ * with this program;
  * File: upc.h
  *
  * Purpose: Macros to access device
-- 
2.7.4


