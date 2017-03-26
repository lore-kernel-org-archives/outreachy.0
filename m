X-GM-THRID: 6401904380146089984
X-Received: by 10.25.33.67 with SMTP id h64mr2208866lfh.22.1490559517114;
        Sun, 26 Mar 2017 13:18:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.201 with SMTP id k192ls1029324lfg.18.gmail; Sun, 26 Mar
 2017 13:18:35 -0700 (PDT)
X-Received: by 10.25.67.80 with SMTP id m16mr2329096lfj.27.1490559515730;
        Sun, 26 Mar 2017 13:18:35 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id q207si758553wme.3.2017.03.26.13.18.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@suarez-id-au.20150623.gappssmtp.com;
       spf=pass (google.com: domain of azure@suarez.id.au designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=azure@suarez.id.au
Received: by mail-wr0-x243.google.com with SMTP id 20so7351259wrx.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 13:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suarez-id-au.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=v7QkNSRocl2qh/ZxKG/NPD3t5rO8232ZUuFA9GQoVrA=;
        b=NOKx09IhOr5ZNnuu/xJWNLDxz2ULZx3vOpTQxPxTD+aEZkCTKjtxlMoDbfaRT6LfZR
         c82vwWgYzkhSrQL3YZy+j3vz2nBmEDPqjBZCJ/WeIaAFUvOwKBCMckOyHyug99TnZ++q
         yJM5WQKl2vC949IeNYjZvpCh5ICB+qhJ7ztiT0r7XDkkSfxPLLUUeKbbNi5Us+EcpYSG
         KGlOBlPOgR9VRGtymZw/ksAu7vFMbuv4N05eOpNbYe7OTkzF1H4J0DwNhy7PzzvarsJn
         12LyTTSj9BQWW4pVmI8UKtAcGuzI4QPPIDpmxhdFGHdGFROgzr1sxlL2/pq/Fe9bY/kY
         f/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=v7QkNSRocl2qh/ZxKG/NPD3t5rO8232ZUuFA9GQoVrA=;
        b=kRgcxW+XLgQ6ZsFVb2D1Jszlakqd5O0vlxURAqhi03+qcVdbcjf4Uj9wdxL8EETiRW
         /tBLACjIwO4RkR/7+pOZ0BS20KAkAgoXxdsJxg8YG4MBdRcNDozG9FBknR7nv7hX31OV
         P14BAdrkS9x2SEJv6oX4VkOjZ05j0coNoFGjcEvadyayYLkrMVtMLneaQlg8+eHD11iC
         InlFlzmnFhfbtoyiFEJQIbx9G2/qw29USFoajKV+3ap+ULJGsZKwsh/kHYmLQjYW/h3I
         TJJRt9bSABMwqduccCxTd4GdJqWYHA+ybDA5RrfIfWOxVXgZI/PYVjVmLjjkXRb3yrc+
         Sxdw==
X-Gm-Message-State: AFeK/H0I+IaTL6d+PCmZ1AuVVqE5RGccsbVv+8cheWIDiwN5Wti1Hvyf4PNGtM5cNMK+tw==
X-Received: by 10.28.66.207 with SMTP id k76mr6734400wmi.121.1490559515276;
        Sun, 26 Mar 2017 13:18:35 -0700 (PDT)
Return-Path: <azure@suarez.id.au>
Received: from hcs-desktop ([37.228.230.54])
        by smtp.gmail.com with ESMTPSA id 36sm12050637wrk.15.2017.03.26.13.18.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 13:18:34 -0700 (PDT)
Date: Sun, 26 Mar 2017 21:18:32 +0100
From: Hannah Suarez <azure@suarez.id.au>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1 of 7] Delete the FSF mailing address paragraph.
Message-ID: <20170326201832.GA10667@hcs-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete the FSF mailing address paragraph on the event of an address
change.

Linux already includes a copy of the GPL.

Signed-off-by: Hannah Suarez <azure@suarez.id.au>
---
 drivers/staging/gs_fpgaboot/io.c        | 4 ----
 drivers/staging/gs_fpgaboot/io.h        | 4 ----
 drivers/staging/media/cxd2099/cxd2099.c | 6 ------
 drivers/staging/media/cxd2099/cxd2099.h | 6 ------
 drivers/staging/media/lirc/lirc_sasem.c | 3 ---
 drivers/staging/media/lirc/lirc_sir.c   | 5 -----
 drivers/staging/media/lirc/lirc_zilog.c | 4 ----
 drivers/staging/nvec/nvec-keytable.h    | 3 ---
 drivers/staging/rtl8192e/license        | 4 ----
 drivers/staging/rtl8712/mlme_linux.c    | 4 ----
 10 files changed, 43 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/io.c b/drivers/staging/gs_fpgaboot/io.c
index c939119..d59b89f 100644
--- a/drivers/staging/gs_fpgaboot/io.c
+++ b/drivers/staging/gs_fpgaboot/io.c
@@ -7,12 +7,8 @@
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/staging/gs_fpgaboot/io.h b/drivers/staging/gs_fpgaboot/io.h
index 5e839b1..fbc1cb9 100644
--- a/drivers/staging/gs_fpgaboot/io.h
+++ b/drivers/staging/gs_fpgaboot/io.h
@@ -7,12 +7,8 @@
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #define GPDIR	0
diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 18186d0..31943ab 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -14,12 +14,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA
- * Or, point your browser to http://www.gnu.org/copyleft/gpl.html
  */
 
 #include <linux/slab.h>
diff --git a/drivers/staging/media/cxd2099/cxd2099.h b/drivers/staging/media/cxd2099/cxd2099.h
index 0eb607c..44b8c23 100644
--- a/drivers/staging/media/cxd2099/cxd2099.h
+++ b/drivers/staging/media/cxd2099/cxd2099.h
@@ -14,12 +14,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA
- * Or, point your browser to http://www.gnu.org/copyleft/gpl.html
  */
 
 #ifndef _CXD2099_H_
diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index ac69fe1..11118d9 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -29,9 +29,6 @@
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
  *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
diff --git a/drivers/staging/media/lirc/lirc_sir.c b/drivers/staging/media/lirc/lirc_sir.c
index e498ae8..c160d12 100644
--- a/drivers/staging/media/lirc/lirc_sir.c
+++ b/drivers/staging/media/lirc/lirc_sir.c
@@ -14,11 +14,6 @@
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
  *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
- *
  * 2000/09/16 Frank Przybylski <mail@frankprzybylski.de> :
  *  added timeout and relaxed pulse detection, removed gap bug
  *
diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
index f426460..70ef6a0 100644
--- a/drivers/staging/media/lirc/lirc_zilog.c
+++ b/drivers/staging/media/lirc/lirc_zilog.c
@@ -33,10 +33,6 @@
  *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  *  GNU General Public License for more details.
  *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
  */
 
 #include <linux/module.h>
diff --git a/drivers/staging/nvec/nvec-keytable.h b/drivers/staging/nvec/nvec-keytable.h
index 1dc22cb..6bffdbe 100644
--- a/drivers/staging/nvec/nvec-keytable.h
+++ b/drivers/staging/nvec/nvec-keytable.h
@@ -16,9 +16,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  */
 
 static unsigned short code_tab_102us[] = {
diff --git a/drivers/staging/rtl8192e/license b/drivers/staging/rtl8192e/license
index 4bea9fa..434de93 100644
--- a/drivers/staging/rtl8192e/license
+++ b/drivers/staging/rtl8192e/license
@@ -303,10 +303,6 @@ ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 more details.
 
-You should have received a copy of the GNU General Public License along with
-this program; if not, write to the Free Software Foundation, Inc., 59
-Temple Place - Suite 330, Boston, MA  02111-1307, USA.
-
 Also add information on how to contact you by electronic and paper mail.
 
 If the program is interactive, make it output a short notice like this when
diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 999c16d..8e04202 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
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


