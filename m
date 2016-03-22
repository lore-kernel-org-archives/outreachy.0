X-GM-THRID: 6261499450444742656
X-Received: by 10.157.6.201 with SMTP id 67mr415890otx.8.1458649715566;
        Tue, 22 Mar 2016 05:28:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.220 with SMTP id t89ls531798ioi.1.gmail; Tue, 22 Mar
 2016 05:28:35 -0700 (PDT)
X-Received: by 10.107.11.104 with SMTP id v101mr26520440ioi.13.1458649715071;
        Tue, 22 Mar 2016 05:28:35 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si4631889pab.0.2016.03.22.05.28.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 05:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so35967487pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 05:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A+lYOtXuzc0RAoAtDrmV85gMET8GOMZ4HHl0YuFzOkQ=;
        b=CuKW5ypJwnMbB35KZvXCe801dT0hsM00icApoeMngITPmlm8OZKJs6W0DYzzMeuixf
         p5SvdhVKjbBOUzB2zgvHgZZQS+D/FJ3R/6n6WX9jldWzWgPhaxi7JEmkYSkF/pOGJu4V
         1SAkVfMzDW/4hUAUUT2Z0J4d3JfmL0b0WvW2fLYnWinrCfExcPBzZXiIJIhcTFEgWcWD
         8LJNSYj0h2S+yBPthCDFIBI9MG4henp5VT4/VtmMEou832ri1fvVI1ccacIHXFRmJXsu
         Bq5/RvKIJ8wfpaCs/sfuKlj+joBO9AADS/Yj3jOlCSGkkVQhmJcJRFiGepZ/SvFx0cJa
         VVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A+lYOtXuzc0RAoAtDrmV85gMET8GOMZ4HHl0YuFzOkQ=;
        b=VYQjFKt6nmOaHb6QkuhYc6DSiJ/qbPq5gBnBmBJRBKWmHtxHszAkB7ltwdODMpNArx
         QRmC3QwJsCG8/VvH/L3JvUf4K84zkDv655HGbYqfNsBpcSWFRJSj3hEUr/j8hx+MCCZx
         2oam0AwOsJGySVWG8OkyQM9rVmVe1VZN9REamycTy/HC3H7lW46u/57tWb9S6Fw3DxYy
         +t1dF5AHR9SgGflWIj8Ze7601qGgtzOkOEqcpA5DIMOKU5dFw7rR3a2ELaAnfurAt0Xw
         VPmZTNehWoMIgFrjlzQKvYU3TBEOtLYvJvYoOriAjVnK+FNrJWSpQxkuxrnMW5RwXkOh
         Potw==
X-Gm-Message-State: AD7BkJIHzIlph7zpvk8Ks0/FBzrw8C76fo6lImisZA/+hEy/kHGXJwhtgf155fSO/8ZmdA==
X-Received: by 10.98.67.76 with SMTP id q73mr53612864pfa.137.1458649714876;
        Tue, 22 Mar 2016 05:28:34 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([117.210.122.67])
        by smtp.gmail.com with ESMTPSA id l14sm48140508pfi.23.2016.03.22.05.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 05:28:34 -0700 (PDT)
Date: Tue, 22 Mar 2016 17:58:23 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Fix multiple warnings
Message-ID: <cover.1458649426.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)


This patchset updates the wilc1000 driver in order to fix several
checkpatch issues detected in the source code.

Anchal Jain (2):
  staging: wilc1000: Remove camel case in variable names.
  staging: wilc1000: Fix lines over 80 characters

 drivers/staging/wilc1000/linux_mon.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

-- 
1.9.1


