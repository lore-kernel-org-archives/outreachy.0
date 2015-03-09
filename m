X-GM-THRID: 7320828379136
X-Received: by 10.152.6.41 with SMTP id x9mr4156921lax.10.1425926315854;
        Mon, 09 Mar 2015 11:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.172 with SMTP id gb12ls15552wic.21.gmail; Mon, 09 Mar
 2015 11:38:33 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr851205wib.3.1425926313235;
        Mon, 09 Mar 2015 11:38:33 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id el6si430635wib.0.2015.03.09.11.38.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 11:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id l15so23843863wiw.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 11:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5Jxvmc3I+HlgMxU3DL5TG07kV93VZ1OhyGb85FJX+hU=;
        b=W1VwiyMwqzwkivQQ4nAvzwinC8IFS+kB3ib7WUrVnDnXC4TzMp3lrjJQHvsuvrfKAQ
         nJG4W0CT+bkpX8bxGhjQpNVHrVgeqdcr7lW0iq5rLjhp2pP0aK7GpLZwKt3D3OVhs1jl
         R3/+a/w0M4tAt2MTUIk2gnzKoObV7NvIZGLnlRutlAlvx5Bd3FE6KwJigSMtDqj/hE80
         1Mhxh5W5i34oze/hZBaUznB6IbzZP5zkw3XvPzCFNNCXDhBNXq4fySCf/njSM+NRmUWB
         UppK2yVkIPg27j+GrmHXTO+ecYunj9pFjyc+9YMrEYqJwHZM5CV+uvmZPrlwVGt9oxcz
         AUrA==
X-Received: by 10.194.110.233 with SMTP id id9mr61211973wjb.136.1425926313142;
        Mon, 09 Mar 2015 11:38:33 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ei3sm3219212wib.4.2015.03.09.11.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 11:38:32 -0700 (PDT)
Date: Mon, 9 Mar 2015 20:37:57 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: rtl8192u: Refactor code and cleanup
Message-ID: <cover.1425925942.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset inserts a new function to fix multiple tab indentaton
problems and cleans up other style errors.

Cristina Opriceana (2):
  Staging: rtl8192u: Add function to improve code quality
  Staging: rtl8192u: Replace printk() with netdev_dbg()

 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 129 +++++++++++----------
 1 file changed, 67 insertions(+), 62 deletions(-)

-- 
1.9.1


