X-GM-THRID: 6330229919237275648
X-Received: by 10.107.25.147 with SMTP id 141mr3087255ioz.17.1473871506598;
        Wed, 14 Sep 2016 09:45:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.195 with SMTP id g64ls467290ioj.37.gmail; Wed, 14 Sep
 2016 09:45:06 -0700 (PDT)
X-Received: by 10.107.6.208 with SMTP id f77mr93840ioi.32.1473871506054;
        Wed, 14 Sep 2016 09:45:06 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1369898pam.0.2016.09.14.09.45.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so1009425pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3rjr0zRrdtU/cENZFIOJnLp7qaR2veob+DlPRBDgZY8=;
        b=a8EOrCbd5FRpaHzoDz6FYKUhuyjU5rleLcQ50j7QpKomeFXt4ou91xMQtPiAXQzp2T
         XmFpmr+8620jawgqu6etXfLVYfvvuGZz3lTGl1FWgaMGR9zBliwoYfodZTwYJweNV4+w
         1/ygTUmhiZ+a60Gl874WW4mDDwpcVigf9O+YeneQV+kb5A+68KkXc3DpbWnd+K+sbNXF
         A8Awz2/fsIYKv/uKZLQ1CV1iznzN9px+MJ4D7KpHo/M7cGFcerWuf0nDsUY8QYtdxnYx
         gQFUysbGcxeeEm76nxVklsLxrb2UKLqrjioTEnGD9xfztGHAilnBdMXQPoUR84OqkPNN
         LKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3rjr0zRrdtU/cENZFIOJnLp7qaR2veob+DlPRBDgZY8=;
        b=UlJpyzAZne3XnR6SPeMvMKqVAJdBBl9ofjbiuQp0/7hx6U+Fab4u7Ieuec1YabFPXe
         pZOqY5smAabDYkF1IA/rDEwlnUYP1igxdA8+iVyDBYSDHnMdHTP9lHmz7pFO1CbL3qRs
         2F2huIhKc/nCNREsWE10v718Wda9BBSmYkyDlYW7TXVPiBvvShcC31WU+h2UR+SlwhWQ
         ekEnVZf+5ZqCNtgTTQ992O4nGRU5TNaDEi+H0DF+x/vK0mvdkjc5SMopho5fFaVL3A7Y
         tilE6onZ7TwUN6ZAcHIQKD7yuhWqJiXGIRlOnyx2XLn9KJ8cJZPmR4eTbunerSpNQZ78
         u3tw==
X-Gm-Message-State: AE9vXwOa4qj4cbP/MELiH9X/+A9Sq+cYKaR/Hdz//lqxl6Oc/rJSdXcOfdQPdjRruObiIQ==
X-Received: by 10.98.61.27 with SMTP id k27mr6172697pfa.27.1473871505690;
        Wed, 14 Sep 2016 09:45:05 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s23sm39380567pfd.23.2016.09.14.09.45.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:45:04 -0700 (PDT)
Date: Wed, 14 Sep 2016 22:14:56 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: gs_fpgaboot: Remove FSF address from GPL notice
Message-ID: <20160914164456.GA25637@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:

CHECK: Do not include the paragraph about writing to the Free Software
Foundation's mailing address from the sample GPL notice. The FSF has
changed addresses in the past, and may do so again. Linux already
includes a copy of the GPL.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 4 ----
 drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 5 -----
 2 files changed, 9 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index a221f26..8ed4d39 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -8,10 +8,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
index 8cc3255..7b8cc3a 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
@@ -7,12 +7,7 @@
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <linux/firmware.h>
-- 
2.7.4


