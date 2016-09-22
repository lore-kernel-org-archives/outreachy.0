X-GM-THRID: 6333092146009079808
X-Received: by 10.107.18.87 with SMTP id a84mr3709ioj.82.1474537920897;
        Thu, 22 Sep 2016 02:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.211 with SMTP id 77ls6129240otd.49.gmail; Thu, 22 Sep
 2016 02:51:00 -0700 (PDT)
X-Received: by 10.200.55.71 with SMTP id p7mr485qtb.16.1474537860270;
        Thu, 22 Sep 2016 02:51:00 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si220857par.0.2016.09.22.02.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so3578196pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 02:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SDc/F8oN6Cu1IBG7iuKq5dGO08zq0z8f0letcXaSVXQ=;
        b=Jb3adpb/IMcwt8lJSyBMkrm/MM/A7spDbSZcY1qcdSPu/h7WHjyy/a1F+hofRFF+QV
         ab1OSG5+eeM1mgYtFzXrYgMMoHnEnXdzmE1NH2HTu6GjMWZOK2Hbjcwl78XfRUQKq214
         TXHbRToJrLxT32vQnPg9x8Sll+hVIa+mUr4Jgpn8B9u0U/QrXS0Fp+DSqPhXEVf8vBkN
         Bc8aw/vOYpK7v67Sjtd7aEK7j4X/m3mTXXybsEVqjvTOkwyTVFzuqGYCHLMwaaSaW1Mz
         q6q3UTyKIBhIy0nCeebb+X/Qmw3Oy0Q8pyfeojVAWtmuZBjQSv1iFgxd8343yuQcv9AO
         3yiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SDc/F8oN6Cu1IBG7iuKq5dGO08zq0z8f0letcXaSVXQ=;
        b=dQwLDycnFkHPuXkrf/WiJjIASDdRaQdGhhHiDrFPaIUssNfpREyYeaydUElpq8UtXg
         nSdNYfWYYUKtCqQT3pQfaY7oX5q1yJX+RciamhqwAkEW0JALjP46QEEpGZRdK0iDqkmT
         Q1gQxXdjFFOoL8ZS6p0gpU43nta3blJCbUkiD6rQGaNPJuk3vYOVj05kJf6L0mFvG077
         kmKRynNZ38NOS+IDykm/EwAwp+6ht6TLg0HaymDi6RuoHBk+2LGD2ZvOCCR7eLq9EHW/
         xLHGpi9++cxNYSVefF5lzyIE4TJ2vnccb9akR1mbRDI2FMp/293B88c2exf+pl2L2ymN
         SzFA==
X-Gm-Message-State: AE9vXwOFPX7QYaAEsGVyp12a627nGD6IgfN/Kf+CTOCp63OL8w+uEDg9KAzjlcx86n1rEw==
X-Received: by 10.98.15.8 with SMTP id x8mr1716127pfi.141.1474537858028;
        Thu, 22 Sep 2016 02:50:58 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([122.170.34.211])
        by smtp.gmail.com with ESMTPSA id 64sm2608145pfe.74.2016.09.22.02.50.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 02:50:57 -0700 (PDT)
Date: Thu, 22 Sep 2016 15:20:52 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: Add space around the operator.
Message-ID: <cover.1474536835.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This issue was found by checkpatch.

Sandhya Bankar (2):
  Staging: speakup: kobjects: Add space around the operator.
  Staging: speakup: varhandlers: Add space around the operator.

 drivers/staging/speakup/kobjects.c    | 10 +++++-----
 drivers/staging/speakup/varhandlers.c |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.8.3.1


