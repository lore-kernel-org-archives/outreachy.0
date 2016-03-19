X-GM-THRID: 6263794151847886848
X-Received: by 10.182.226.162 with SMTP id rt2mr16576580obc.24.1458403224231;
        Sat, 19 Mar 2016 09:00:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.211 with SMTP id b202ls1356912iob.102.gmail; Sat, 19
 Mar 2016 09:00:23 -0700 (PDT)
X-Received: by 10.66.249.41 with SMTP id yr9mr16632781pac.37.1458403223595;
        Sat, 19 Mar 2016 09:00:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si2849495pab.0.2016.03.19.09.00.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so22062521pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F9BiEGwNmhSNM0t6tGblcaO6hhE9VRt86+WQjJ46sIg=;
        b=FRiexN2mLtzYzZV1cVDN2OBVj+cAaJWDN97BgOrqJ8O9+9Ucz4cfWk5lXsuCjio34E
         iCbUqqG/krekJdktr7/u61o55IfkzzR5O5nNOMp3iYlMTT8NEPSwUuUc1gff/NU5ooyl
         sQf1yzFx0/VwEfpz3ZMwyUcJnr0q+0wCbn3n6QYcxlUjFtrwCN+Pu3hgwZ40tsb03mzW
         bz1kaRWsMjP2PY9QodxQnmlWMIOo2sRGe96/x3LI6ZQc9DXsqQEjAMt6aSnq/Kf2TaL1
         sVPOEW2MN9f6PU+JcyML7NfzJHNT6jadHsmviXIuAbdIZE6D8OlVOVjuIKQOeRNxJWbZ
         FxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F9BiEGwNmhSNM0t6tGblcaO6hhE9VRt86+WQjJ46sIg=;
        b=ZJYhg7iYdQNZT6d7pc7zy9eLoQrxAZverNS7oQUZQ10ZVB9D5CGflRA0g4eZ+P8rDb
         tbip3mt98Owoc7P0AG64gkGrvQm8Fwtn0mmeRSmh8WqRQmN+l3q7WswrXzGQzdssRGiZ
         uQOiQscUWMZCK0Pu573a3HiMkCqIfybiFVP7rT6V9az6xTEHvVhx1A1NUCItfw75esh+
         QqA5/15HH2HPKumZYEwRz4sL8oOhQiabXUWFffUoFR9ZDWtFyP7XuUkyRA5Zuv3CUGFw
         f+MPV6fGKlsT7IfASCch+5LTgc6NXnCg3xYSASel4khiRGvVbEQzMPq7ORB6oXglcFVe
         5UuQ==
X-Gm-Message-State: AD7BkJLEd+aDqP8+Oq/CytNOYRoM4fbmT66ISnyGXqRlEfDtfq0AhxoUgnasUdN+NhEjEw==
X-Received: by 10.98.31.218 with SMTP id l87mr15541979pfj.101.1458403223432;
        Sat, 19 Mar 2016 09:00:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id fn3sm28996005pab.20.2016.03.19.09.00.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:00:22 -0700 (PDT)
Date: Sat, 19 Mar 2016 14:31:31 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] Staging: rtl8188eu: Remove NULL comparision.
Message-ID: <20160319090131.GA5570@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparision.This patch is found by checkpatch.pl script.

Sandhya Bankar (4): 
  Staging: rtl8188eu: Hal8188ERateAdaptive: Remove NULL comparision.
  Staging: rtl8188eu: hal_intf: Remove NULL comparision.
  Staging: rtl8188eu: rtl8188e_rxdesc: Use !x instead of x == NULL. 
  Staging: rtl8188eu: usb_halinit: Use !x instead of x == NULL.

 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
 drivers/staging/rtl8188eu/hal/hal_intf.c             | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c      | 2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


