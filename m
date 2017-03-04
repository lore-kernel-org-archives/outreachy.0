X-GM-THRID: 6393357376408256512
X-Received: by 10.129.62.39 with SMTP id l39mr3543411ywa.61.1488647978523;
        Sat, 04 Mar 2017 09:19:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.197 with SMTP id t63ls13532285otb.7.gmail; Sat, 04 Mar
 2017 09:19:38 -0800 (PST)
X-Received: by 10.157.22.211 with SMTP id s19mr3350843ots.37.1488647978181;
        Sat, 04 Mar 2017 09:19:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si587303pfb.5.2017.03.04.09.19.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:19:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so8579856pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g0AsI6zYNzBgPW03pQBNzMfxcFGUZvYQAo2D62DAXcI=;
        b=eRO9AqE+I0AV2TUP9xCJlPvY5eyaG6wGqeAhBtkrP3LGMcyisHYsBnRx8DwK5RC25f
         P7JwMmp+Vfzq6pSOKf1dQxJdjjEBEeGocSQEYK7agnWahatNCDU58spJeZU97gxyXGkC
         znEHdJIh9YaFXCL8t/0dj/6UqjWAjwQA6QX040NSpKzfzUoxspVZmsg0VAt0nNSZ5pD9
         W7hRGL0n/IgXTi5nEwGJdzZY08mmOqcQHQGfuBM6OHEGtfbNsxRTpV0am5Nn1Va1kTlG
         7NDtli8aSM6VCWC/pg+6AtlJ23al8q0uuCUI6iidvyLRm69ztNztYs9NcyDU6ZOxcTUH
         JOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g0AsI6zYNzBgPW03pQBNzMfxcFGUZvYQAo2D62DAXcI=;
        b=UOG969PYjgYOO6Lmd7dudkDGGjgSJqUXMtODAvjTD86v7pBOkUvRr4zTXriygcLHtF
         xxI7pOTsAT+kP9WEQYWJxNyMvYLwb8LchIpcNqKCQcysRIXSpsMMoZKd7df4ZlORWjgc
         2buG8xGftMa4mLOKkK/UqYitcNlLvv8qiAkHwI5bugzw/n3sagBqu3Hfc2pnjgqxVgvh
         AVWzqmYufHVk3mQknf8heCOdceTe7J5M3rh8wzExc/FLDwEywt1m2Y9muPHipqYF6GhJ
         kMX3yi/B8N59ABUwwOBdyrrlDd84o62dpTA1i9cGv0PaGJk3oD/rXM1dcTQTzDYxi2ms
         +GUw==
X-Gm-Message-State: AMke39lJT53K2PVsmmCG/G6hoqvhHOP3tYAMRHm9tlpdH4DCnH7rF3KEqXQbRpfQeSIXpw==
X-Received: by 10.99.123.1 with SMTP id w1mr10500431pgc.118.1488647977892;
        Sat, 04 Mar 2017 09:19:37 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id q64sm30439070pga.0.2017.03.04.09.19.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:19:37 -0800 (PST)
Message-ID: <58baf729.4343630a.c5a52.d9e1@mx.google.com>
X-Google-Original-Message-ID: <20170304171929.GA5658@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:49:29 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 6/9] staging: media: atomisp: Removes the FSF mailing
 address.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF
has changed address in the past, and may change again. Linux already
includes a copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

Changes in v3:
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


