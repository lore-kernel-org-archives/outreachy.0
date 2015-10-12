X-GM-THRID: 6204754090721804288
X-Received: by 10.50.79.234 with SMTP id m10mr13531783igx.5.1444671044156;
        Mon, 12 Oct 2015 10:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.113.234 with SMTP id jb10ls1197196obb.83.gmail; Mon, 12
 Oct 2015 10:30:43 -0700 (PDT)
X-Received: by 10.182.252.200 with SMTP id zu8mr24741582obc.30.1444671043682;
        Mon, 12 Oct 2015 10:30:43 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si678798pbc.1.2015.10.12.10.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so159091519pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=I464FoavwUNu0FyqRa9ci1/2gaooxktfDdSQLHUzOWA=;
        b=A6Q9rOrkRFFkDfzHDmJ/OryPQfC/3e23dIGXmz3r1Wqez5WmPMehNG5m1v+8tTu8t6
         mZf6evHJuGwtbhxT7XebFCENw+kVXuRlrVHLXUkW/kJP/l2Gt4FaoHpbodb2z6YjiB7+
         O4gBTIUOJKNN3WPSXQwuTdc7vHAX4ZL+mCCQXQa+Q5E/TqUrfj7pCSjZEmF0R/aqAkr/
         5yiISven+92KjU9woPSc1TcEiRi1cB8XYgtqEmkJo0ajwT5ETpjIsKwF1Hg4Y461yKzm
         V90VdxpEkwEwNnDhAsJ02qpDlKCJjEMs6Mc6hQPuxn7/Va6j8BLqYm6PsKKgyEO8re25
         jLGg==
X-Received: by 10.68.137.202 with SMTP id qk10mr35784801pbb.30.1444671043557;
        Mon, 12 Oct 2015 10:30:43 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fx4sm19374525pbb.92.2015.10.12.10.30.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:30:42 -0700 (PDT)
Date: Mon, 12 Oct 2015 23:00:00 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Fix issues detected by coccinelle
Message-ID: <cover.1444670615.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes useless casts and code.
After applying this patch, code becomes better and compact.

Shivani Bhardwaj (3):
  Staging: wilc1000: host_interface: Remove extra NULL test
  Staging: wilc1000: host_interface: Remove useless cast
  Staging: wilc1000: host_interface: Remove unused code

 drivers/staging/wilc1000/host_interface.c | 100 +-----------------------------
 1 file changed, 1 insertion(+), 99 deletions(-)

-- 
2.1.0


