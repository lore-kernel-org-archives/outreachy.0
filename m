X-GM-THRID: 6620726648786386944
X-Received: by 2002:adf:9c90:: with SMTP id d16-v6mr2687938wre.12.1541508057750;
        Tue, 06 Nov 2018 04:40:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8212:: with SMTP id 18-v6ls3226060wrb.29.gmail; Tue, 06
 Nov 2018 04:40:56 -0800 (PST)
X-Google-Smtp-Source: AJdET5ej4XXWfpa4w+08iGqE4wbG8/gi9/kXFjMwIAwdU4BZ2EE1VqJmU6NpHA8HBFXynOam+/Hg
X-Received: by 2002:a5d:4a89:: with SMTP id o9-v6mr298698wrq.32.1541508056858;
        Tue, 06 Nov 2018 04:40:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541508056; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hkl8Vbh4/A/Tv3Wj0Gnm+EyvPqw/36I9keSIGtdvIpIhgxKE0ofEHNCxGW0x3vNwNQ
         JJ0CEmGyl7gkhq8tdUACQWO32XRPlUWAzw88JegXICAYu3skb5nlY50NBUuOHTos2MS6
         9M/i9TX3rVpl6vEI51BIBYvlfBVf+9C9FfaXTR2wu5EHu48kiU4PgFk+GNA81sacHGnT
         slu95IN3soxPWyt4XuFGasL1s/pJumX9ZbY7anBluU8LO5Hu69wPGOfBkp99VEqDHPOE
         P7ASWC066nGGjivrXO5lvyEmKF3Pb41saGLNklH1zEfxsqLi69zSUx4FfkxAbeLylHhP
         HBbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dK3N/7uWlpC0FLja+ye642ERcCQeyT1qenABZuQQA8k=;
        b=LuM7sdxEcKKN6PWRUoBsMQM3u/9yLA+HNqdQtzSUDiuQLBXRo5GNxD9Ws9dDOS4Qxd
         mAFnGMmP7x5gW6YuWxN6Js6+o5aHvqG+ei5FWyoBh7SXzBidXylPblN0Dp7+LP3sMIvp
         YwE6UOHmNzvbqyICo0pIb03S/jCnFHgL5BT+4x/a2IugPeVaMwhFr/sS5oj3ZhnQqH1y
         rU4Wb/JApeR9rXp2KiQMZRU7AwCWzFvhiFS6bMNN8k7mVpBbc6fa1hxA00KqbgzTqFyw
         i5RA7UiFxUiqDK8BIa1iMIL0M+WiBayiWX05eFqby/682DRje8IKkKxwCofqM6e3QQGt
         g8yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LgSFacoi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id v6-v6si1457349wrn.0.2018.11.06.04.40.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 04:40:56 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LgSFacoi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541508054; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=WbTsO+VtAskZ/9CrWcF2bGe0qcxSoaMqvv7mhXVbbcLXwG9OJdsW3SugNNm55HY6HInMFbrdJe0jTKxJqFzQQ4G4N0A/VvQ3sa0TcKb+ku9feeG/7NNat1CTjkNRcAzMmLoe+LZdRfuukjackd8L9ruvu0PmUFDbmT/EfHq7yu8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541508054; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=dK3N/7uWlpC0FLja+ye642ERcCQeyT1qenABZuQQA8k=; 
	b=BQ1J1Tao0ztGtpCx/XO8jBHmiud+oFIm8lX0fHWXLD8w0ePdiAPJq6JpB8RRBJN1Ocq2BLuVnre8YmS2aiEMAU6esReTePOzc8u2kfUNfbYlYKSqpQn26aRgOPNpZRK/S+1H3OospcU6hR1EhPTJ1irNwBJryOcuJNWHqIhc5+k=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541508054;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=14522; bh=dK3N/7uWlpC0FLja+ye642ERcCQeyT1qenABZuQQA8k=;
	b=LgSFacoiRq50Ag5Q5wvwh716Th1GAhG+gBjrVGun90g5VqsSByCJz2RSKcdB3fcC
	n5sBkusV9TBbjOBvWUXIs0CjjSBNZNnp6gdm+Psx4wfBWWro+ZHDlQnh+DJ/KvXrkRd
	NVj41ZwtK3W6ezPGSrQedJvrYOfyUIVJKXX7fznM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541508051735321.6446353899282; Tue, 6 Nov 2018 13:40:51 +0100 (CET)
Date: Tue, 6 Nov 2018 12:40:49 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: davinci: remove FSF mail address from
 copyright
Message-ID: <92e92a63530078cc60a1da9d466a8f7c316ad95f.1541507973.git.code@wizofe.uk>
References: <cover.1541507973.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541507973.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove the mail address from the copyright notice as it may change in
the future. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 4 ----
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 4 ----
 drivers/staging/media/davinci_vpfe/vpfe.h               | 4 ----
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 4 ----
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 4 ----
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 4 ----
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 4 ----
 18 files changed, 72 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c9ebe6..fefb0f1f4695 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index dcfeac818451..ff3c31f8b304 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e19309..82cf1dce6428 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index dbb7ddc70bef..5b31bd16840b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 7ee157233047..7bddea6261bf 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index a53231b08d30..f2440657c4c8 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index cea3d61335af..2f2b8dc1831d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index e2a69b59554a..eda38f31e929 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 39eb0819ab4e..a0887e2bcb28 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 89e814e9c0d7..445f2a50f1df 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 64fbb459baa2..5f17bd24e44f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 72bbbc34d18c..3db25be2afc5 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index cf560a33d862..4b3c122b855c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 0587bc52a840..6a4fcb678778 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bdf6ee5ad96c..d92bae1f5e81 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 8ad8d743f4e0..28ac730160ac 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 5e9769ea8a50..256b565046b3 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index 4bbd219e8329..cd2834d482f1 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -10,10 +10,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
  *      Prabhakar Lad <prabhakar.lad@ti.com>
-- 
2.19.1



