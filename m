X-GM-THRID: 6263088426063495168
X-Received: by 10.66.101.4 with SMTP id fc4mr8085686pab.48.1458238909791;
        Thu, 17 Mar 2016 11:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.135 with SMTP id l7ls788091qgf.87.gmail; Thu, 17 Mar
 2016 11:21:48 -0700 (PDT)
X-Received: by 10.13.225.194 with SMTP id k185mr8226660ywe.34.1458238908945;
        Thu, 17 Mar 2016 11:21:48 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si1515862pac.1.2016.03.17.11.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id u190so12395635pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 11:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F8ZngSMdUI8pftKbqG9LSImFVGTHC2h0kol5F9BPY80=;
        b=KoJXNGLSSt7WUj5hTjF3RXq6DVqvTIjZQpc1kjz+C5nlKBc4yzi9KPskY3XwbvyTVy
         zSt0jEQpshkLpDystBnm8+TJgPm0rCHCWrCWL2D/OyWdA8u5pyo4jFdW6fDqNgU0XCyO
         rFN6Tw1Lg8WtxwZoh9/0aFY5V9sW48r7EXDzQMOuVBXIBXJOH6lbSxKe8I2h+A50PyIw
         e1Dg6y/WwNAtNclOgMmaXkOhxjVm+iIHPL9qYm19FuP/bBI7+Q2RKFQMGJLG5L4HzXd9
         UjX/BB5a6N0fkg8aVICZGsP5hzTr1PClzZ1PtZVEN6f1mKFj4RtnuM2oE8fqTqe/ns46
         JAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F8ZngSMdUI8pftKbqG9LSImFVGTHC2h0kol5F9BPY80=;
        b=NqQs8qiYRoT+ksHamxYfZxTMiHxq8GMmWk7449v8lqSm1y8j1HzBLUPJ0St1yuWtVk
         dXDn9Sum9n9sJNsnirPYc7CtftiVOmgauvX1ImwjbFI4TC+2aeSMF9GMf9EcREllhBuR
         alPy2gTCCtoLJU+yLqglDt75iluRFta6Jxm5UumLfPO8TuKQmsi6wE6k4tTKqKIsBxNx
         4vwA7dvHtZgsYEQMKHWrlgkz+bNzOZ9lYMgmRMlB9iN5SfRs3dHf2i3rag9fO6WXrzh5
         41aoy1nuZUfb0mrJufWH8mm3BRsZgVLK+aNf3e9yAt/zM+IkdfgysNQkEjuzm72c6eFr
         6h1A==
X-Gm-Message-State: AD7BkJJfZLJcO7v2CY+J0nna1h03TfxXns3AKBbQL7nAphveEHQVFjutq6lM71KJpIULkA==
X-Received: by 10.98.80.22 with SMTP id e22mr16791058pfb.15.1458238908742;
        Thu, 17 Mar 2016 11:21:48 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.0])
        by smtp.gmail.com with ESMTPSA id u2sm14985233pfi.26.2016.03.17.11.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 11:21:48 -0700 (PDT)
Date: Thu, 17 Mar 2016 16:52:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: i4l: Fix coding style issues.
Message-ID: <cover.1458213061.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix coding style issues.This issue is found by checkpatch.pl.

Sandhya Bankar (4):
  Staging: i4l: Add paranthesis to complex macro.
  Staging: i4l: Use !x instead of x == NULL
  Staging: i4l: Do not initialise statics to 0.
  Staging: i4l: layer2: Add paranthesis to complex macro.

 drivers/staging/i4l/pcbit/capi.h   | 2 +-
 drivers/staging/i4l/pcbit/drv.c    | 4 ++--
 drivers/staging/i4l/pcbit/edss1.c  | 2 +-
 drivers/staging/i4l/pcbit/layer2.h | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.8.3.4


