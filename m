X-GM-THRID: 6392971677786963968
X-Received: by 10.46.22.68 with SMTP id 4mr2343040ljw.14.1488479710535;
        Thu, 02 Mar 2017 10:35:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.23 with SMTP id e23ls802799ljb.28.gmail; Thu, 02 Mar
 2017 10:35:09 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr1872470lfe.18.1488479709073;
        Thu, 02 Mar 2017 10:35:09 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 14si858557wmn.2.2017.03.02.10.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:35:09 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so6389414wma.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=m59W3ENy9Z4zTLob7I9tCVCY4SuDPFCJ8zi0YB3MeGc=;
        b=fWLhXTDERGq/rMIOh1rZyS6/KvUYZDipfjBehmutXVRYWRLbS5Lj02T1JpMg2IvZhh
         8DvE7KY1ZMkz39Or4xSuFO2zTXznvAsQmjURG3go1UwBSLUCkW+zZJuhDgxK8T0rUY9n
         7y7vULFtv7oRqiIVIbsN4bux5R4qhRkR48oGe5edGvyLN7zzKIiGgcNQrsThNQ/43I7P
         pQtEl576d2APrQUNcCDUvnF3IkI5xe4DZRyO6nBhpbjkZfdypACrWcqLAHBN2xctL5A9
         XdQFBzBRzrfP3yv70iKUgRgBdRPEf1VPwQkWTtFz20XxbZ+MJ9OKDlnt/FNscY04pwvl
         hevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=m59W3ENy9Z4zTLob7I9tCVCY4SuDPFCJ8zi0YB3MeGc=;
        b=Qfjmb4c+L7ziGeiZvxYJlIu7Ngh9gnkOGmy4SZ3o1PXU9kKan7rq7p+pmuJZpgr7/I
         4AySg+ZMc4F+NNx8Pc42yq0metoK1FKEW0/Eo3SqgdVYA3dzRK53u8BjlS4UilDS0383
         tmPSsjFXQAblNsJUykdH4K9ceSIVlfmkm5+ETBZ0jlpkGZAUsCzhT8CsXa1jmTsn9PWK
         xqcqkA2qOhYaZWzY6iBTZdWKzxUgqnUIUhdOxyDD/XyklTKeB7CL4/jjK6UgmqPGL3gS
         hkzsMiqnt6rBnl4AfTM/Q8hwiAauShsht+6zZIbrrQ/t6+ZXYYORWrCMZg4hKsUx28Kt
         ib/A==
X-Gm-Message-State: AMke39ng7EkKKufdAePqn+zyfiBJOcvY/kr2zUqG4Y7JivJqmiJU2WTut6deiw/30fZt4Q==
X-Received: by 10.28.172.68 with SMTP id v65mr8742575wme.49.1488479708874;
        Thu, 02 Mar 2017 10:35:08 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id v1sm11931853wra.65.2017.03.02.10.35.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:35:07 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchebab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 0/5] Resend the first patch set
Date: Thu,  2 Mar 2017 20:35:01 +0200
Message-Id: <20170302183501.3087-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Resend the first patch set: 'Fixing multiple checkpath issues to improve code readability'.
Added the name of the driver in the patches titles.
Changed the verbs tenses with imperative.
Added a short description for the patches.
Changed the comment in 'Add struct mutex definition' patch.

Tamara Diaconita (5):
  staging:cxd2099: Add spaces around arithmetical operators
  staging:cxd2099: Remove multiple blank lines
  staging:cxd2099: Add struct mutex definition
  staging:cxd2099: Change kzalloc parameter
  staging:cxd2099: Remove redundant code

 drivers/staging/media/cxd2099/cxd2099.c | 102 ++++----------------------------
 1 file changed, 13 insertions(+), 89 deletions(-)

-- 
2.9.3


