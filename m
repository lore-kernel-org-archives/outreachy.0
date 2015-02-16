X-GM-THRID: 60860399616
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e52331c5d8e7e604,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.144.81 with SMTP id jp17mr26069064icc.25.1424122354174;
        Mon, 16 Feb 2015 13:32:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.81 with SMTP id q78ls1467255ioe.98.gmail; Mon, 16 Feb
 2015 13:32:34 -0800 (PST)
X-Received: by 10.66.171.9 with SMTP id aq9mr2307298pac.20.1424122354044;
        Mon, 16 Feb 2015 13:32:34 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com. [209.85.192.170])
        by gmr-mx.google.com with ESMTPS id ks4si1900231pbc.1.2015.02.16.13.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Feb 2015 13:32:34 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.170 as permitted sender) client-ip=209.85.192.170;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.170 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so38954287pdj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Feb 2015 13:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=H/VqTwh258CPJLT3Dscog99s4/+bmgFsdhgPAWGv11o=;
        b=J/07sNGomTp1eW2M7ECXH9WxsV+N4eCvzKh/PhYDvL4pgwyJSmhk1H25qPjWmJ0hT6
         FdVPX5DW2Qt9rRB6pifptarwtJC8WuLJ4v0y16uSvDQ/YcJDFR+8QnV9uQoqhZ2NMjEu
         2fZTIenMi7OX3RsMXawvwPxme3IWCa4nZs/hBgYZ3hU0vKzJgN0sa5ALSsc+lK5n1CU4
         NWWm7z4IaQYpkqOm72TWiP7zHGNKhjRk4KMCuwpIFmdfVe7LHNJEgUfOHL7QCLiiCacj
         zzaWCs+9m2ga9aHl8V8DWNWXWIqrLmNH9rcuM7rN2GW6pG06cH9xnHe8av7YBTuTt5TN
         5/2A==
X-Received: by 10.66.176.203 with SMTP id ck11mr43995969pac.54.1424122353955;
        Mon, 16 Feb 2015 13:32:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id rr9sm15589105pbc.39.2015.02.16.13.32.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 13:32:32 -0800 (PST)
Date: Tue, 17 Feb 2015 03:02:19 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Cover letter
Message-ID: <20150216213219.GA21926@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Code cleanups in dgnc staging driver. 
Cleanups include removing trailing whitespace and reindenting for increasing readability.

Vatika Harlalka (3):
  Staging: dgnc: Fix warning of code style
  Staging: dgnc: Removed trailing whitespace to improve readability.
  Staging: dgnc: Indented code to increase readability.

 drivers/staging/dgnc/dgnc_cls.h    |  4 ++--
 drivers/staging/dgnc/dgnc_driver.c |  4 +++-
 drivers/staging/dgnc/dgnc_driver.h | 12 ++++++------
 3 files changed, 11 insertions(+), 9 deletions(-)

-- 
1.9.1


