X-GM-THRID: 6543668192993083392
X-Received: by 10.176.14.19 with SMTP id g19mr1184422uak.61.1523566477965;
        Thu, 12 Apr 2018 13:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.3 with SMTP id b3ls671900uad.16.gmail; Thu, 12 Apr 2018
 13:54:37 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4872p5trE6rEXCHoskhhlOhfiQKlIcryXhw09DgJbKeneSRiFN4O0qhTeMDYgMl8AlbXKJp
X-Received: by 10.176.112.34 with SMTP id u2mr1170546ual.9.1523566477339;
        Thu, 12 Apr 2018 13:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523566477; cv=none;
        d=google.com; s=arc-20160816;
        b=vqq++x4fzZo5qdRJ/+wjduWfM2qtoKbIjA/CDicvspLb7xaw6jiieXwySZCYO++DGK
         2Gg70hKl/wLUWFTxnGQ1roZ4t2KiEb9R8B6RwlBmzqqtaVnCIKjWvxFZhbAIMXOXRR0s
         stJQgNtUCWeAQVJW5LCBCeut/5HgxPk+VLIpxS/wJ7YgjZiktIQSTyoSHAM6VZ9JBJeQ
         IKoqBcEycIEnO5n3cVH6B0FV/hj5HCJTMl8OJINoBfWVKUn1USt+dbix9Ji9DwKAIhto
         IQz/BlnMflPsojfHbOQ5pOMUbNTAgegFtEMliHUVyZ5mqUWW+wJ5bfhqaVorFxMRzpKP
         Ahjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Ds6PfM7hLfZD+e7jGI7x1FjC3j5NIc/CaFw7c5eDMUM=;
        b=m6G0XlVOsR9mklbO/M/KzhD+onoSwfT3W/kE6W/Kk+0Uvb2ocdJ2lWKEp0qXKpv3aG
         SWev0saCAuvxBmOhHcRnBDG8ZS7oeelzR8E4T9CKhp4rY2/o+zvGelRdklaOSyiIpBpq
         vov94Yh+zv6cyYXxrP0kTDGv+UhVkXf+vHt5BNY7MK9ELXyzXBHygbmnn6LcyM0/7izm
         xTNeTFcG6Nhrw0nvgpdEcvdYJxuL5Fw4ORoX5EBEZ0cCXNbxlFJygvwp4sz7x8yXHrJg
         rNWK+X4SaJwM3VwfOpvg7gzAYNxAdw/TxM4OnTTcw5VGxvAxb2YFGpVoRN0SxqtIznaf
         2AFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=RUILGMgz;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u16si328609vke.3.2018.04.12.13.54.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 13:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=RUILGMgz;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x243.google.com with SMTP id a2so4782304pff.8
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 13:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Ds6PfM7hLfZD+e7jGI7x1FjC3j5NIc/CaFw7c5eDMUM=;
        b=RUILGMgzGeyk6bOGdQcY/Fv9iYov7uIHid1Eaj0MZGx3QO6KB3wV+nHTDeeo9kdB3X
         zuLHrSRq1r1pL9lo6kXKlStiLTr8iIQ3sGup4NX+xf631w7E2NW3sEnyT/+/Ljw+2+1v
         VLY9BE1ZRAuKtduW5HmUGY0k2Q416BY2zNib0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ds6PfM7hLfZD+e7jGI7x1FjC3j5NIc/CaFw7c5eDMUM=;
        b=m/TW4fgkjFeGsEgKNNHSFX+B9nK/xSWoTHwGmk1KTyeGpn+z7jU8/8uhZmbYyhH85t
         OioNQxHWK5e9K2p6MPXFaIcoeFe9rmz9m+n+mve91YzPNLoGrfS2m2aFRu/i7beSNajK
         wylP8QIaC5Z5sJJecZ8a5XBnMVZ8ZtVpW8mP0+3Rs1+X+SDLyim9KEi3hyV3BOAyxHGb
         Rd+4/FmknfnTvsL0PbbBgvlAlqH5ACZ2zGc295DptnSPl8vN3rI405j4ONzccLFisFLO
         AcXRp9l8rwVT90XYHXe+TMqYhy7PPVGzuW1gbXuU9nWzR/fwHgQK+0OBl1UHWnJtBDnL
         zBJA==
X-Gm-Message-State: ALQs6tDlm+Zna15EDEfjdHUoA26u4Y5Xjuj88sgN98h3urtAZGHknLe+
	94f7pRXOZNQ2evXMZAoKqfDdiixX
X-Received: by 10.98.182.8 with SMTP id j8mr8997098pff.115.1523566475872;
        Thu, 12 Apr 2018 13:54:35 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id q17sm8383372pgt.70.2018.04.12.13.54.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 13:54:35 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] Remove comments with address of Free Software Foundation
Date: Thu, 12 Apr 2018 20:54:21 +0000
Message-Id: <1523566461-22113-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove comments mentioning address of the Free Software Foundation in
case the address changes. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Combine all comment removals into a single commit

 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 3 +--
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 3 +--
 drivers/staging/media/davinci_vpfe/vpfe.h               | 3 +--
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 3 +--
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 3 +--
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 3 +--
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 3 +--
 18 files changed, 18 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c..52f56840 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 495d2ef..0f67eb1 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e..b109594 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index a893072..586457d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 7ee1572..0bf6bd3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 46fd2c7..51d177c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index cea3d61..c24dd7d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index e2a69b5..c52ffac 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 569bcdc..303795d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 89e814e..6b90c0c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 64fbb45..9fa5bd4 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 857b0e8..1abbf42 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index 00e64b0..c017598 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 0587bc5..c84df86 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index 634d38c..1c98068 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 8ad8d74..3b33ba2 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program..
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 588743a..63b91d4 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index 22136d3..2530e6a 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -11,8 +11,7 @@
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * along with this program.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.7.4


