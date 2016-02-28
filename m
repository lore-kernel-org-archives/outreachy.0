X-GM-THRID: 6256392223774998528
X-Received: by 10.13.227.133 with SMTP id m127mr9280760ywe.1.1456681805231;
        Sun, 28 Feb 2016 09:50:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.44.55 with SMTP id f52ls2056040qga.74.gmail; Sun, 28 Feb
 2016 09:50:04 -0800 (PST)
X-Received: by 10.140.18.239 with SMTP id 102mr26611294qgf.28.1456681804822;
        Sun, 28 Feb 2016 09:50:04 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si3156478pab.0.2016.02.28.09.50.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:50:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t66so3398754pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qno3UYdxfzu/yO99kAGh/fg9DgOmqiOabXRPclHVhM0=;
        b=Y2gQ2/jxd1V7mSJrP+WRUggCYMKhIB/1ZJ8OGBpgp+9z2X/y68ZbH0gKJUG6/1uS+D
         7BAHCT+7IiMzPZkzdNBBb2niHFI7zLoQacTP5vbijPbwrHX6gxkc7bQ1sp50O2AQWeMK
         zELtA8g3JQuSO4GESziNHoATdAACuKIPw1doxJWdRZddsZAVDRfVObecSTR1I2OCFZ4J
         puU/JTw7x6vdZqgsN7JFmloCePUdExORtMn5KcwbzG7rIU5WkKidc+usfS0MAsKLRM0U
         8NwBRAPNpIY7oBmKAwCCOPJKyCxGa8UWetqX8fuuaEMdWeEliEstQbtSFqHgsKKTKYtj
         6oew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qno3UYdxfzu/yO99kAGh/fg9DgOmqiOabXRPclHVhM0=;
        b=S+7K1A7Y2jix2SsLBJG/YwjcFqjZ7UxegFp0WEJn9tzuli7viVLGJawX3cdXyVvBE7
         GPpAijleZYEkmFnZkYlEmItafL12tE/uUMB94/VuOcV7us8z2IN2Dqb/qRHZgCQEYFSa
         KetOYboCccU5oEe4ZRUFk0F0bzJGL4+cXG6BhS15zkEvXPxlP9rmOLDkQNvhuYfUFCb1
         1h3dJO8rPqUvDE5Og1ZWT0QTC7E2FA76/7/rxgT++e3rpfjXMcq/0INsMJJC2EMJkRoC
         2KPDGv2/wNjtwI8WQOqleMc4Wm4X9TItY61/WBhd4wCN3rGv64g6ykuokZJ4RYtqaaxf
         54rg==
X-Gm-Message-State: AD7BkJKHYOaonfgRdgxT2ZzTM6junQQ1HLTPu/Cq9IFFTzdkxWK1KDHEUJzvjaMTa2ea4g==
X-Received: by 10.98.74.17 with SMTP id x17mr16902037pfa.14.1456681804595;
        Sun, 28 Feb 2016 09:50:04 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.106])
        by smtp.gmail.com with ESMTPSA id q2sm8860920pfq.88.2016.02.28.09.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:50:03 -0800 (PST)
Date: Sun, 28 Feb 2016 15:20:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: lustre: Remove int typecast of offsetof().
Message-ID: <cover.1456652845.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove int typecast of offsetof(). 
As per below coccinelle rule:

@@
type T;
expression E;
@@

- (int)(offsetof(T,E))
+ offsetof(T,E)

Sandhya Bankar (2):
  Staging: lustre: Remove int typecast of offsetof().
  Staging: lustre: lnet: Remove int typecast of offsetof().

 .../staging/lustre/lnet/klnds/socklnd/socklnd.h    |  2 +-
 drivers/staging/lustre/lnet/lnet/api-ni.c          | 54 +++++++++++-----------
 2 files changed, 28 insertions(+), 28 deletions(-)

-- 
1.8.3.4


