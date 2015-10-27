X-GM-THRID: 6210059285862285312
X-Received: by 10.66.246.234 with SMTP id xz10mr19085500pac.10.1445937843668;
        Tue, 27 Oct 2015 02:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.7 with SMTP id g7ls702683ioe.30.gmail; Tue, 27 Oct
 2015 02:24:03 -0700 (PDT)
X-Received: by 10.50.49.109 with SMTP id t13mr19826547ign.9.1445937843357;
        Tue, 27 Oct 2015 02:24:03 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id fa8si4055570pab.1.2015.10.27.02.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv9so226903129pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=sSfKNAzPqZhkNkXw0CwBuJOM/MeeOFsOzhXQkvnoKpg=;
        b=HcOqLtA1sp38fzrMq6rsw+ffa7ghdj4AwWXufG6otnggpdk/iaLx1HFU6OupT3J+HD
         gUTdutl4aETi3CWU+FW/NoU+TIAAFGsmiq/JOVexeRHu5fIAJZVBR4iIWQcmLeVvFCEa
         4vgD/GY8OPa1N+dXsMo6zSIoxtYbR4d64k+KUssCMUMuLV53Po5xpK8iKuKzzIwBzp+T
         lJhaKR73Y5HKja81/oFNQQrg+yFDTzllbJZEZftMJfbhI0hHnXaWPRuzqVuzg4NVZmCu
         Cs/GqNwceg/yj4ymNs/9JjoTK4u2lcQQZks0FWgpObhx/5nPLJU6dDi0hpE7WhkIr8oe
         2FTg==
X-Received: by 10.68.94.69 with SMTP id da5mr27387419pbb.63.1445937843254;
        Tue, 27 Oct 2015 02:24:03 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id rx10sm38598245pab.21.2015.10.27.02.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:24:02 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:54:07 +0530
From: Sirnam Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: panel: Fix checkpatch issues
Message-ID: <cover.1445937649.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes the checkpatch issues for panel.

Sirnam Swetha (4):
  Staging: panel: spaces preferred around that '/'
  Staging: panel: Removing multiple blank lines
  Staging: panel: usleep_range is preferred over udelay
  Staging: panel: Logical continuations should be on the previous line

 drivers/staging/panel/panel.c | 49 +++++++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 23 deletions(-)

-- 
1.9.1


