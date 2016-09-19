X-GM-THRID: 6332110016814776320
X-Received: by 10.129.88.133 with SMTP id m127mr5319416ywb.68.1474309250070;
        Mon, 19 Sep 2016 11:20:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.67.208 with SMTP id s199ls2938745itb.1.gmail; Mon, 19 Sep
 2016 11:20:49 -0700 (PDT)
X-Received: by 10.66.12.168 with SMTP id z8mr4039245pab.29.1474309249244;
        Mon, 19 Sep 2016 11:20:49 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si6845176pfe.0.2016.09.19.11.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:20:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so4306873pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lEHS0Z4RD3Sj6ox7k4j9okZ8mXK2yUsvLoutwifashc=;
        b=osfHLEQajXkPT3OqdJLoIThgzanRG/1XU1NOZbPNNn0sfL66uNyJ634RVKihuGm5d+
         7Ce/UMfdOAz6ZugSpTtqnNBCtUf8Yq3oC2+rdhDEnwJ2LJua5zUu+CF2W5InDfh1BrI/
         xQeGRkDjNiJJiMuEBgYmoJF+56dQxoFdnqcRCZ/wlA4pIvTKM3tWm/wWdcl0qBnFi3JP
         1LgwzqkjFf4+JcXlxrHUTtcJ6RRWrs31S7ZS8U/JNgK+33307iLHL+V1k5KCeI9f52hH
         f+9g2PHjeL2H7xLfZCqz1BaoYS5BuAJtRFOAh8oVWM0wjNqoBKfrVjYfUs+pwjJVgj8/
         Oq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lEHS0Z4RD3Sj6ox7k4j9okZ8mXK2yUsvLoutwifashc=;
        b=bmjiTsNoNpJwa6YzIIiPLEMMBsQRzu6xNYqTnhn8jNKUyFnXNgusdQHsB02unR6iXz
         BvJ/lfxMoYlHHzidT7bpB0TAyoPEPP/UMjKMKxEedLjYJZoe/OHFB6wZF58VvYkGouTl
         v0sRBpTqUp8xk1ZIim2+vMFpW6gatZHlQI5IIVx3AFOPum0mcYqVjD7zHYFLxcM3tos/
         Wkvu/b1wfqZse2w+3deamtIw/6eCN/7wX6kVxt12rDYy5xBLiFWNksZLSlWgzeKEPtS8
         ZCH4e5wyNnw3fkktoUvjkIsrypKYAojP+Z9NcDh7iizmJSkgGEmtGEQiksik4skyxv1A
         zpOw==
X-Gm-Message-State: AE9vXwM6Td6UYtwYZcEaMyeEIxNFg+ZVd/oCa3BxJrrQmKit+2ZyL3OCBDWHqETBLBdNPA==
X-Received: by 10.66.251.131 with SMTP id zk3mr35576522pac.176.1474309248801;
        Mon, 19 Sep 2016 11:20:48 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id 25sm25731005pfj.23.2016.09.19.11.20.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:20:48 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:50:32 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] staging: i4l: act2000: Fix multiple checkpatch warnings
Message-ID: <cover.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset fixes multiple checkpatch.pl warnings.

sayli karnik (4):
  Replace printk(KERN_WARNING..) with netdev_warn(dev, ..)
  Correct the spelling for resources
  Add a blank line after declarations
  Replace explicit NULL comparison with ! operator

 drivers/staging/i4l/act2000/act2000_isa.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

-- 
2.7.4


