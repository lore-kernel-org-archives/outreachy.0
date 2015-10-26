X-GM-THRID: 6210059285862285312
X-Received: by 10.68.245.234 with SMTP id xr10mr17601251pbc.7.1445892100864;
        Mon, 26 Oct 2015 13:41:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.66.201 with SMTP id h9ls1676155obt.28.gmail; Mon, 26 Oct
 2015 13:41:40 -0700 (PDT)
X-Received: by 10.182.19.195 with SMTP id h3mr17416276obe.25.1445892100461;
        Mon, 26 Oct 2015 13:41:40 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3789817pbb.2.2015.10.26.13.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so198418911pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XgDAoXP/ldlSfjbCUJy6m3wnzqGn0qLymLPj0QIUsRk=;
        b=hHS6UD5SGBuoBKUfbAr+AwyQeeWbEs7n+Ew47atOQ1NOoKsXguC/titK+zzgnBKcnE
         yPvVpwDJdA+neQ8ip0UHlDRa0HMLIX7FqijiX+Clr5GpQypDgLBPR04njIlfDiv2vCyb
         021NBQbP1qnqUHzPHuf6k0vUye0jTutD6j0hb0W3pNvoZUTaldfy60yoU9KgV/mZLPOk
         Kp0RGTExgrnQ+FIa7r4S4Q0Zx8sibOSspEge6fmqj+JD3f9k35bR6YMaMWAIX2VBajXr
         O7we8ZEESRpJpWOmijiPOz9220j15nH4VSIJ3rgXkm6a/Vk9vG8cWhNXH/q8bncwFGHL
         JmXQ==
X-Received: by 10.68.136.69 with SMTP id py5mr24380174pbb.94.1445892100345;
        Mon, 26 Oct 2015 13:41:40 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id qy7sm35680239pab.37.2015.10.26.13.41.39
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 13:41:39 -0700 (PDT)
Date: Tue, 27 Oct 2015 02:11:43 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 0/4] Staging: panel: Fix checkpatch issues
Message-ID: <cover.1445891839.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes the checkpatch issues for panel.

Swetha (4):
  Staging: panel: spaces preferred around that '/'
  Staging: panel: Removing multiple blank lines
  Staging: panel: usleep_range is preferred over udelay
  Staging: panel: Logical continuations should be on the previous line

 drivers/staging/panel/panel.c | 49 +++++++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 23 deletions(-)

-- 
1.9.1


