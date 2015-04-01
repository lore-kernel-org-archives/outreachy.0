X-GM-THRID: 10320556851200
X-Received: by 10.152.37.231 with SMTP id b7mr2221368lak.5.1427886068502;
        Wed, 01 Apr 2015 04:01:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.169 with SMTP id ej9ls925075wid.50.canary; Wed, 01 Apr
 2015 04:01:08 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr10823571wjc.5.1427886068077;
        Wed, 01 Apr 2015 04:01:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id a14si94987wib.3.2015.04.01.04.01.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:01:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id e14so48617747wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hqMsAWXtuuNzKzS8pH5emhNf6FqCU4AF5TDU6zK4vIk=;
        b=x78WeCBrkE6g4xFslScy2/tCClJgeJUYY2fWPK32jwuRyuaZZq9EZ0sY+QH/5AdegM
         NLpWdokTMFUAOSkLdOZAYD9gwbqevmj+TzhC4dXpgOIGhyjAiFk7gwPyvMaTphGWLkco
         zB7BeQQHIZ652A1KOOR8lGRleoP77LYk4E51obBr6dEV3to2cBXqrZknqJVPeKsN3jkE
         6HiRMhpdQd5K6ekgaIX42h6Yatfo7XCSf1afT5xSrBBWDvVCRhX5Qcwh1YyFalvx2B3Z
         2m8CQZ88ZI+Is5nE4B3g4q47Yc6mgfvkKB7mJsTigMuB7ztIYUbWzPHn7EzTeWLcfnbQ
         S0NA==
X-Received: by 10.194.120.132 with SMTP id lc4mr84383841wjb.92.1427886067998;
        Wed, 01 Apr 2015 04:01:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hj10sm2129734wjc.48.2015.04.01.04.01.06
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 04:01:07 -0700 (PDT)
Date: Wed, 1 Apr 2015 14:00:07 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	daniel.baluta@gmail.com
Subject: [PATCH 0/2] iio: Place drivers on standby on error
Message-ID: <cover.1427797741.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset places drivers on standby when an error occurs
to avoid wasting power.

Cristina Opriceana (2):
  iio: magnetometer: mag3110: Place driver on standby on error
  iio: light: ltr501: Powerdown device on error

 drivers/iio/light/ltr501.c         | 18 ++++++++++--------
 drivers/iio/magnetometer/mag3110.c | 18 ++++++++++--------
 2 files changed, 20 insertions(+), 16 deletions(-)

-- 
1.9.1


