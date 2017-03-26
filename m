X-GM-THRID: 6401745642575626240
X-Received: by 10.176.68.66 with SMTP id m60mr5125153uam.18.1490539446107;
        Sun, 26 Mar 2017 07:44:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.168 with SMTP id e37ls5360263otb.3.gmail; Sun, 26 Mar
 2017 07:44:05 -0700 (PDT)
X-Received: by 10.157.32.136 with SMTP id x8mr644931ota.138.1490539445720;
        Sun, 26 Mar 2017 07:44:05 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si1417664pfb.7.2017.03.26.07.44.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:44:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so5349257pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=UE7Hnr/AOYwKsBwPs4DNKCoFNWCWJlkfV/QK73FEtYY=;
        b=gU3FCd2SRWhSyLGCNniePIEKCXnODrJF1JO5TQDZhKcWR+gQ3RR+A2o7QQvwv37ifz
         i5GUE52DqYmB5w0qjtU26xPo0GpA+11NCbFzRdk7vFAg37vhav6SO6lYTugmYfAv8a1H
         +RlWycEUSFqFTwolwEHeL0GQjCrM+aPosE5nHlWPMA3vOT70fxQs3lg1QkXKBD9dkIjm
         poBbODbY1CSxTM6/mg4BDlFcInVLk6HSK+TDdQiot5nkVEngqxDdG8gbgKTfKvUOdK+8
         V7gVvnwT/iVc5nhPgpTAlRtPQmAyJ0TjBnb87quWBGoaVMqcMcLJhWok5kk/mH/VmsGB
         sqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=UE7Hnr/AOYwKsBwPs4DNKCoFNWCWJlkfV/QK73FEtYY=;
        b=PI0OeBrDrJeMMNATgapWiKByTZ4CQVx6GZ4tIUp8r/bxvdkupP/048oqq695zl44cB
         CV72L9Cu6ZvHMKgV3+rYsuiCC7as3ht4MPG9ZOnMzn5CHBLke3AiOXDI4WyVzB5vm0lk
         0pCAuI78EqjJ6togTHYitx16JJGMw2xsmQz9pbpoW7Ad5zieMW5Tk47v3fv1T7rNntvS
         fXNcG2XEYMthPNXdFkvYT2EFA1wbyCMyAc/MrIsEclnK3mMO+BwmloW48F+Sgmq42YPA
         2RXlnEjoeTQx14aE8rjp/y1bxLqquvz/GHb9tcaC+6Q7ygLua0/+UvB3ILb18WDBSa/F
         Pyxg==
X-Gm-Message-State: AFeK/H0Fr4IuQz49f1LVU9djbHgtSP0+jU1Dk9ya0QfVkbIaC7464Qgw4F2ZaYTOgWf9XQ==
X-Received: by 10.84.178.1 with SMTP id y1mr23736776plb.60.1490539445297;
        Sun, 26 Mar 2017 07:44:05 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id t67sm15512955pfd.76.2017.03.26.07.44.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:44:04 -0700 (PDT)
Message-ID: <58d7d3b4.4681620a.1a4c6.6e12@mx.google.com>
X-Google-Original-Message-ID: <20170326144401.GA18888@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:14:01 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/5] include: linux: pid: Update documentation and fix
 checkpatch issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset fixes multiple checkpatch issues and updates documentation
of pid.h file.

Varsha Rao (5):
  include: linux: pid: Update documentation.
  include: linux: pid: Move open brace to previous line.
  include: linux: pid: Add identifier to function definition argument.
  include: linux: pid: Add a blank line after declarations.
  include: linux: pid: Remove space before tabs.

 include/linux/pid.h | 49 ++++++++++++++++++++++++++++++++++---------------
 1 file changed, 34 insertions(+), 15 deletions(-)

-- 
2.9.3


