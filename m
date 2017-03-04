X-GM-THRID: 6393357376408256512
X-Received: by 10.176.3.114 with SMTP id 105mr1749607uat.29.1488638774310;
        Sat, 04 Mar 2017 06:46:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.142 with SMTP id n136ls1382312ita.2.gmail; Sat, 04 Mar
 2017 06:46:13 -0800 (PST)
X-Received: by 10.99.193.69 with SMTP id p5mr3301371pgi.163.1488638773705;
        Sat, 04 Mar 2017 06:46:13 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si531257pfz.1.2017.03.04.06.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:46:13 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so2734591pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H3S+UZVgYTWYniN+yweHNQ/75V7xkEv43h9mf1D6cV0=;
        b=IyD3AE1/7R/A5A+nafYK/OliIaro1M/dJDxRRlCMFJA7S1VqiFEzJZXRR0duxYzinb
         a2jsEWBQDP0gIYiCHz26VusYMcGfVRTmC8IalzcSaP6H7FALrxmleHw6sYjfjHDEq2hC
         WqZSDu4TAUQTZ0MjZXloR0QT/U2XRmHnJhqNWtruxcxxHgsQCs/pO818NIYdp7Yls9Fj
         PQdYWKbPXXA7VA+2hokpvE5mNoKSLS1HIM+D0PeXm6IP4CESM+Kr1jteIUtNVBx/BOkD
         dH0LcBmqV3cxIDjHGhDpJJEdt9PyHrbeacxaRQt/WY9OMcwjH2lBgDrYAzZMw+k5UvnR
         LW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H3S+UZVgYTWYniN+yweHNQ/75V7xkEv43h9mf1D6cV0=;
        b=PCH+49OT4Cg2HMLWZBRNRoXY72NFP9m9sXmF5m0Nja6NBK6ybI/IvRvq0gqdV3qZy0
         +ndnLsIu2a/ZOHqXKtWKvbSpoEjVjmdUpskJj8IbYG64d5zF+yQ1OcWn6GoaIK+JO0L2
         1wv5XJj3CfWSriT9ZuUuZUD8mdzWPmeh0AnDCkiXNKdO5+1CdWtjqolHq7xs1kQjA2ou
         iiXH4DIxhqBe3c4bzfM/CIEvf3JuB7TkmyXR03swmUuKUxsMt6hgw8K10ZtQo07mtEBj
         6bMTDErhhSj84nXjeTE7hZ716JaQBW1txigXSSAs+s/3buI+WOlPEiVYr7m01WX6YC2k
         ORhA==
X-Gm-Message-State: AMke39nO4lHfDOt4tSIF9PpWoUp9xm8CKvqZQfQ0nAT5aJnYb9a1d4qDJHbQmYI9VRPfGg==
X-Received: by 10.98.28.72 with SMTP id c69mr9973888pfc.8.1488638773456;
        Sat, 04 Mar 2017 06:46:13 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id q73sm29716845pfa.129.2017.03.04.06.46.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:46:13 -0800 (PST)
Message-ID: <58bad335.4c43620a.3261a.ba5a@mx.google.com>
X-Google-Original-Message-ID: <20170304144609.GA4537@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:16:09 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 6/9] staging: media: atomisp: Removes the FSF mailing
 address.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF
has changed address in the past, and may change again. Linux already
includes a copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

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


