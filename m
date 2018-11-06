X-GM-THRID: 6620561568029474816
X-Received: by 2002:a5d:6112:: with SMTP id v18-v6mr2448587wrt.30.1541469633212;
        Mon, 05 Nov 2018 18:00:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:eb04:: with SMTP id s4-v6ls4885552wrn.7.gmail; Mon, 05
 Nov 2018 18:00:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5cUmKvlIFGi7X7HrvVWL7FGImkl0VZuZvEXekFZEYsz7w9PZKbypvRXtPY5O+uV5HVFzJzL
X-Received: by 2002:adf:afdd:: with SMTP id y29-v6mr1975071wrd.20.1541469632366;
        Mon, 05 Nov 2018 18:00:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541469632; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJEYbQYuH8+aYAy/wiHbZkAhgKehM/pbwuAL4ngcgq0u7YToet4GlYRIubpfQft3+t
         0/9oHJV4Srv9MYX/KH+MRVkQIlajAnU6VHO27xPjX4jw7WuktPRshrStWevETB9J+Npd
         kO7s7Adg2iRRgAq7+q8RuZ87AwRoSSJXkwIlj09T14iwDOWdtN+xzY/8IhzsrFdJON2P
         Qopb/jJP7iNhzedT07rhSX+SDvxVsXBE9ZgcogaZsSWG4TggQ6KsIQOAK2ain+MVzLjh
         2rgE3Zmu+7Ce5rI4IpWFwSbVQxXyPzPscsfMbUMiBQeHmWfXg7E4uX3gVRJbaQeGnWtY
         D5Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IBZg1qY6htwU600qdlLVrQfNqBgy0g+x7NIQ9E3DSXQ=;
        b=UhcQmAczNlkf21SXbXMrFH0aQIf90hVRBgvSpkwIAz25H1X5SAXbOGqpFD+YC0IONx
         YtNucthCxd4hMFDDj1ADdCvSGk7w+bPOaO3BtMm9GQJU9HSr4lPjBDFDSMFl40ak3LMu
         0utcd7gghUkl5w7wsFYOutzJ46+xNAla8uMzbWUUWrHiFJOpUpd5SUmAf4U/vl6uiFRc
         l8QEVU8+sYAv7I0NbGS6WV5NpsSHD4TqDSLecbDKBU+5SPmMr51Rp6FrwrF/Xwb9g35t
         uxZ1nsF39j0m1lWnWaRaMaSQ81sQQzRvr/8OEZnK0DIA7GO2N8ykbjWDm/WLNWM8Pxg4
         0odA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Ln68M0gh;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id h137-v6si19227wmd.1.2018.11.05.18.00.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:00:32 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Ln68M0gh;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541469631; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=T0P+wCGg5GpQ6apMv+G+MVcHJ+rj66L+uk0JHaiMVVbKVVwzVAu4hinsVtKhkCysUH9AtbZBQFvn1R7M2//YODzigm/F3zwtsJ7ZLrNi+XOwifGCpJ67GcC4EMGa4ZIp9VsoKJUbuG/m7aVMHRX1EJGKHlYq4i9iIFY4YJSLHz0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541469631; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=IBZg1qY6htwU600qdlLVrQfNqBgy0g+x7NIQ9E3DSXQ=; 
	b=Dh68kQGjnI2erxpSdKnrmJJ6Ca8qqp8xNkP5k5sa+ujm41SdA5mvPKesQFiddHRJYJQjvdDw/bGRBpPcohX/wLylNKXtwUrUmiJ9bnbX17S5pTuXudP3jVyCWi6VIAOXMnoM1Coie6sMVj483Bz+YSOUQx2YIg3BaTLtKjDfKwc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541469631;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=13730; bh=IBZg1qY6htwU600qdlLVrQfNqBgy0g+x7NIQ9E3DSXQ=;
	b=Ln68M0ghQc9Ho2NkPcsqd4GmTDeQHLa3GCNriX1YdabU7+3TDNE0pY2ENX0B2Efb
	8xYgVZAtSviryKtOAIfPXIBr/aj1YQ9xxsdx0iN6RHUYhbSSjAPmrM5H+LeOs25rOE8
	faMGHIdnzhaopzDRNREFxnnCkSmjg2Fgm6jEk5Ag=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541469630197426.5581925761236; Tue, 6 Nov 2018 03:00:30 +0100 (CET)
Date: Tue, 6 Nov 2018 02:00:28 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: davinci: remove FSF mail address from copyright
Message-ID: <cad49c8a7691fa02cb0143d00b7a5bbe94c588d7.1541469543.git.code@wizofe.uk>
References: <cover.1541469543.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541469543.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove the mail address from the copyright notice as it may change in
the future. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 3 ---
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 3 ---
 drivers/staging/media/davinci_vpfe/vpfe.h               | 3 ---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 3 ---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 3 ---
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 3 ---
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 3 ---
 18 files changed, 54 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 69594bb70a2b..6d2570a63529 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 85151113ca91..0c896e10edc1 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index 39bd29a3aa89..68a9e3692f9a 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index 76d1d0fe982c..d1d97879c0bb 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 84c152611712..ce01ce2cb28c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 24bb1e93af23..19e3026ed8d2 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index a27b76fb593c..14f4608645f3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index c04d0535cbc5..1c4960720c63 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 728a443ea60d..54da444e8a69 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 44ec7249ccfd..389412a041fe 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index fafdc693a9bd..5e9867cea249 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index ca1ddae50c22..ca64f112a5b9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index 74f359a96160..bec0f9587d3f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 06dd68ef3712..c91ad025f2d2 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index da2b5dcbd269..7e9b246f6f05 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 3df319cde290..2de8c2d655c6 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 204bc238d67b..bf0620186a84 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index c6b9befff401..e596101ab260 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -11,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.19.1



