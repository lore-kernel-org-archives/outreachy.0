X-GM-THRID: 6398699223421812736
X-Received: by 10.99.124.80 with SMTP id l16mr3611745pgn.158.1489813258189;
        Fri, 17 Mar 2017 22:00:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls8834529otc.43.gmail; Fri, 17 Mar
 2017 22:00:57 -0700 (PDT)
X-Received: by 10.129.99.6 with SMTP id x6mr9507554ywb.62.1489813257684;
        Fri, 17 Mar 2017 22:00:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si1767372pfb.2.2017.03.17.22.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 22:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x63so10549723pfx.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 22:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/tRLu3XYKiZ9BgBK2DA4Bd8dNWWr1jXBKudIKhFG2D4=;
        b=kkey18eifTrmZK0D3iCSW7JR2OZ3rtnOXLGKdJxuX547jrH3iEmxOq5GH/CtpmLXqo
         Ci545iTCp7z8bcbiNkvj5JT46gTRdONpqsNjYT1CDJf6iDmTmReo9XaLP6Wi1gKzjIkg
         VQuxHiqp7Doc0sPjx3IRy7EMjGQICiinHLmi7t+XH73UIUQsWMOb1QwNjMVw7WXRX+Wa
         QklFfag10h+LQ6t6Z1jJ2EEAR3Bpy+kTiPsgSFZ8e8IKifg4K46+cxgsO/eMvinRL9nI
         yGIQpT7FtTXkW+d2hMr+uYZn2R2KQgeHKCD/sAeplZCfcGGOjPZNOsON5ismv8asBRlT
         5F8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/tRLu3XYKiZ9BgBK2DA4Bd8dNWWr1jXBKudIKhFG2D4=;
        b=jhyM+cXM9DAG4wcQK+jWEzfT1I79iqccOO/Gr45gtuezS+XM4sX0zj4HBvSfUxNH1R
         HLthgjSD+2AM92kxE5OJer4UFIiMHeKsoLJ8A7STWVhApNwDAt77NhvxmyBkNRpIv83U
         vdmis2WLIJs59LKdl7coVztEcXi0ljz/KGmDqP5cBAdc4VJED9cFrrr/0gyqnWCNWKO+
         cz8hB6qaZzEezf1CgW0j/06cUuDLSCQ2v+QGKkh6PxUYjjbVkGsMkBhj08BURBCL9euz
         WWD6oLGgZ+fHjg5W+/vmKyFmG1AhcbLUeAAyPPBlTs6ZG2FfvSglfh4nTjO6nZzaaghe
         vHEQ==
X-Gm-Message-State: AFeK/H10Wr/7b1urSU6QhO4XvtGKU9Jpva+sUQiDGzUZ1vxWmKzpewYP+GvJUJGQOdHOBQ==
X-Received: by 10.98.196.12 with SMTP id y12mr20680299pff.49.1489813257417;
        Fri, 17 Mar 2017 22:00:57 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.241.53])
        by smtp.gmail.com with ESMTPSA id g78sm19779646pfe.5.2017.03.17.22.00.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 22:00:56 -0700 (PDT)
Date: Sat, 18 Mar 2017 10:30:42 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] Documentation: cpu-freq: boost.txt: Fix typos
Message-ID: <20170318050042.GA3760@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch corrects a grammatical error by changing it's to its.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/cpu-freq/boost.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/cpu-freq/boost.txt b/Documentation/cpu-freq/boost.txt
index dd62e13..b919f30 100644
--- a/Documentation/cpu-freq/boost.txt
+++ b/Documentation/cpu-freq/boost.txt
@@ -8,7 +8,7 @@ Quick guide for the impatient:
 controls the boost setting for the whole system. You can read and write
 that file with either "0" (boosting disabled) or "1" (boosting allowed).
 Reading or writing 1 does not mean that the system is boosting at this
-very moment, but only that the CPU _may_ raise the frequency at it's
+very moment, but only that the CPU _may_ raise the frequency at its
 discretion.
 --------------------
 
-- 
2.7.4


