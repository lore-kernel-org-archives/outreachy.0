X-GM-THRID: 6393357376408256512
X-Received: by 10.159.32.79 with SMTP id 73mr685116uam.32.1488569513746;
        Fri, 03 Mar 2017 11:31:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls9952878otl.41.gmail; Fri, 03 Mar
 2017 11:31:53 -0800 (PST)
X-Received: by 10.13.225.22 with SMTP id k22mr484974ywe.51.1488569513389;
        Fri, 03 Mar 2017 11:31:53 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si218694pfb.5.2017.03.03.11.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:31:53 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so13506048pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ArOeWKxLRMcbM8DYboIDUu7pOGDGl5OijMms3sYTZwg=;
        b=bt/ImgsaUwh8mlN+AEBaR5CqidceKYmW0XW2bn7eoc+p/LLnhfk5eQg/9tfyOwJYJO
         7wlickwsJdBxQbP8tDv5LjWaEx+go/ZCtGgyKchm6TF1uDRbCG/bHJvMSHvyFLvdH53L
         ba5t8AQv0CkZdUI8PYM8FyWgSalxSvH3vBYBIf3SBK1M5PXOyNRNGf59Gvaa9QfEXmvw
         jMnH647FU0KcRIPloosyLBHFzAu0NLxjKhDX3R58QsP82bJBZJjohnXfu+epkKMhl39N
         9OptgxWagrxSla3U2ys3B11XtrdmSyG3Wm1cWBlDPZycSE9mKXjEcxT1HMSOtzckK4Ss
         0ZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ArOeWKxLRMcbM8DYboIDUu7pOGDGl5OijMms3sYTZwg=;
        b=nkaVefPdFLUM5wvSPtiQe+9o6QE3FZaffpjYSBo9swMWRhwVX6K9MZLJNdpcE6RB9T
         jCoIr9m+g4ziY47dP8OWAiKVBNX929xDUmTpSSy/+icelCt53RCx+lXyxQD3fphq+RQf
         SqwExJUUZgv4iBAQuCg3nIcYhz72ZIyHa/zxPyhCrfnzgxttvu/AmxerlSJHSsft//gc
         tL3NYSU/MLGWIwa4k0oZBxoNeCjvG1SDEaIiRnfamTFrN4F7yC0NWSYVCuaap2c/41xB
         hnbqDoq7oMS3Uia8wJ8UQvkHEmGvuvqW5QC0vvdbpF58nlQZYZJLFGp2+PjiUJnlBB/z
         gnEA==
X-Gm-Message-State: AMke39mGx2sAla7RAJGPSDDF8WVbeooYIZfPWItCIeDrL2ldN+yJD04loI/o9F2r1ygAFQ==
X-Received: by 10.98.57.23 with SMTP id g23mr5491720pfa.32.1488569512927;
        Fri, 03 Mar 2017 11:31:52 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id i3sm21586339pfk.47.2017.03.03.11.31.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:31:52 -0800 (PST)
Message-ID: <58b9c4a8.83c8620a.f641f.c45a@mx.google.com>
X-Google-Original-Message-ID: <20170303193148.GA20027@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 01:01:48 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/9] staging: media: atomisp: Removes the FSF mailing address.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF
has changed address in the past, and may change again. Linux already
includes a copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc0310.c | 5 -----
 drivers/staging/media/atomisp/i2c/gc2235.c | 5 -----
 drivers/staging/media/atomisp/i2c/ov2680.c | 5 -----
 drivers/staging/media/atomisp/i2c/ov2722.c | 5 -----
 4 files changed, 20 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index e122cde..376aa34 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA.
- *
  */
 
 #include <linux/module.h>
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 0f23ba9..f71a5bd 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA.
- *
  */
 
 #include <linux/module.h>
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index df1e336..e9a159f 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA.
- *
  */
 
 #include <linux/module.h>
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index 4a7dd20..208e4d7e 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -12,11 +12,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA.
- *
  */
 
 #include <linux/module.h>
-- 
2.9.3


