X-GM-THRID: 6339043757720076288
X-Received: by 10.98.134.67 with SMTP id x64mr4722742pfd.16.1475923638944;
        Sat, 08 Oct 2016 03:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.218 with SMTP id s87ls2617799ioi.38.gmail; Sat, 08 Oct
 2016 03:47:13 -0700 (PDT)
X-Received: by 10.107.183.151 with SMTP id h145mr6112167iof.61.1475923633672;
        Sat, 08 Oct 2016 03:47:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si6485397pab.2.2016.10.08.03.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 03:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so4008241pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 03:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pAn6eglubDMmYhgvCecBh81mTWUgXLybEaJY5MMxywk=;
        b=wqJYN8/W8xm+h6Y5n6LPyc/QwTEIkGQ2B+Cmj3D49rPPqBPPxZ2HwGBUX+UthrHiSI
         xOZltgIV8fjdFYRM8vvF+snyk0dDhVz0sGdSqfw+fk3mVyBB/mVCpdv819m9Yj5D6yTn
         aKLxDN5VnQ6zz0vWgYuxXk/GG2LRucuEAr3VPZCqRnugZdwtf7C1koIZ0w8bzRVo3J4u
         yQ1RwMZ29s2R81Juy4atTbr6s8VuNkP4E8gVmxYI8IiP4F36PxCv/SqL3zhNdmhAbi/0
         SPCKqa0Rtna9a+hnmVRcB2RoDpOkfIdQhab8wJxtdkwo63PS7Bhof+W3Ei1QkKpGLtGz
         I9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pAn6eglubDMmYhgvCecBh81mTWUgXLybEaJY5MMxywk=;
        b=eQflRIrXzHFNJZo+6prIrEcbiw+i7K35fpDW82EHyoFV1h8K28oOY2E+6jbZpfwiN3
         un9wApOIPpgokdh5mZrrdhNZIKgmm7ml1+vQYsnG4sqZA2PV3CtHxbgR57YsjWsWg7pR
         KxzckWF7ChogX1WErDj9Cqe7yma1UM6wuX4rYKwGQB78Gwfa/m7WwVB75GKhyX/uvwhb
         P1uz6IXpYy1BRokDMqHhKcIZNBk/AStXxxa1vHiWHao5+UryGpkBOOWJgdYkyt6tpAh+
         MMeOh9yM1g1SUh+hjaGCVFotS5voZBFo74Jf96Jcln55OLvMXjD4IM+lwkfzeM+wI52o
         PlrA==
X-Gm-Message-State: AA6/9RlZmqyKrSQpNUOjPiXID511ZdllSDggxtXWUQZt9QzBhKUXUvbNdti5+u74yXk87Q==
X-Received: by 10.66.189.168 with SMTP id gj8mr37805887pac.117.1475923633504;
        Sat, 08 Oct 2016 03:47:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id h82sm20447725pfh.22.2016.10.08.03.47.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 03:47:13 -0700 (PDT)
Date: Sat, 8 Oct 2016 16:17:10 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161008104710.GA4950@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue by removing the Free Software Foundation's mailing address from the sample GPL notice.Because the FSF has changed address in the past, and may change again.Linux already includes a copy of the GPL.


Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index b4e8c43..6d9a936 100644
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
-- 
2.7.4


