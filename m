X-GM-THRID: 6674267883353145344
X-Received: by 2002:a9d:6a8e:: with SMTP id l14mr5060360otq.39.1553998928702;
        Sat, 30 Mar 2019 19:22:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:32c5:: with SMTP id u63ls1659123otb.1.gmail; Sat, 30 Mar
 2019 19:22:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2YpQNqbte0IJobOgm1pbwEMrGvPSNraDsOf2/535D6CprP0eiVyP55mOd50lqzbyeJ4iF
X-Received: by 2002:a9d:73d6:: with SMTP id m22mr3864983otk.18.1553998927681;
        Sat, 30 Mar 2019 19:22:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998927; cv=none;
        d=google.com; s=arc-20160816;
        b=SMu9zal5NBDLXoeJCWfWgisGeUeXgyZlbyrRKfAGbjuEr5ev3vlwZuUrOcDJeo1jTI
         4YQjw92+HmdLkzt0BcEExdC/2dvJidO3U3moHLNz0ur+u41RoRohjOW0IKGlv9Vp6n4b
         YeQDjSq23YlYvtMHEzQv0Ye0c3PYgn27c/1JiRJLpD0pCoUr7Z/PmdFe/09kdYHEKiz/
         sUJBsQaZhK3hCQZO7CX/Ra9YgbzbQXrHzWuiBSStwiCLYuEN9oj36JePSIUNkH7iEuhz
         RSiizFuxrJuTKQOPi6AT0D6J8BJ+mSv8PpBnSqT/Am8gAVRuLx+uV5lYJbplxJC3EM5/
         qdnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZwzsPwsD9GD9KsLtuSFGs8DezzZIVIa4QhW9fFyiS9Y=;
        b=HnsbT1y0aWjW1IyzL6ctuLaFa2mGNEXDw/s/oymCjq/HvfNrW8D0THkEyNci/IaqIE
         xnwKXFrDE25I2wC93/MGpiA5n1+egJfrEbv2ZAOReLtbG+lzuDBLULlTcj3eS8dvdi8U
         z6hOtNJzBy2liiLsklkua7FWV4fG3FR66G2ZULMng5Wsa4pj2VnEXq7IOnu0WDEPsMPX
         tBZz3VJYx2pxgFuQx2Ud4nBp0b9EIJ6q3HCJyEbPzIS1xvcBRw1wkQUDr2FeBK3QhxUt
         air71Eo4fVoxWO+jJWr3BcNPHM07bvyWo7ohNlL2FA9h3S01mCUioh2utVFRnvFGQ/+i
         lAIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lU6drMLA;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id x4si339877otg.2.2019.03.30.19.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lU6drMLA;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id k123so2261741ybf.9
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZwzsPwsD9GD9KsLtuSFGs8DezzZIVIa4QhW9fFyiS9Y=;
        b=lU6drMLAx7Hfmez/elr0DAbu6/b4UZ2Oiv0EkgIPfIUGgztKHoognqWytEyr4j/2js
         smsSh71cdDTisZM2s3RcgGK2vxrtR7bS1STFChSf8AJc9s4/8DhqPqGm4sZkdkfSmmAN
         +fCWxunk/kfUB3NM4fdnUbHgz5Pyu91WDeM2SoIhFdJPdMwrq51VECrtk6rS5OxF6xCR
         e5QI9puZ6MIGA54GF7cvEWfnjIGmRXUkYP2VzRvYe+XFsWnAFdRsIJ+yaHZ6xT1lyEZq
         4kWiq8hXo82xxAjQSPwIBzuES5d6GPuChKsZvcVDlP35F0gF5ToFs3/IP8IqIa/Wi8R3
         5FbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZwzsPwsD9GD9KsLtuSFGs8DezzZIVIa4QhW9fFyiS9Y=;
        b=OOjkNfEVKPycUPMsSIOF4xI/T/klOm4gWVrnE1Y7QDkXhntF6RN08cR9qxREBnJ0u3
         66RztGkThTXR7Q8n2CKe4r4gJBqzyEWPLsPt0bEFLW52qw5XvyCs8+mBfk+yBafYbEfU
         FOwfoBlmb7TzszLvclwYZD/bkOxwZ9rRAbAgASwmEnbI4MaQbI5qM+skWN5hLnIlXpVd
         sHMe+lq6r3XzOZPIe2vLY96JsYLcwHJvcbLPJOGLeU5/QQLUaBhjAULHOtr7OQOkyeqj
         fHmrqNOq44le3FXMOzzwhJMgSWLY2eCokxt1hdnp8n7dBGN+mbFwihmqE2KfwAaTtISl
         DXDQ==
X-Gm-Message-State: APjAAAWALfMemhAlNbo8fL/RvCVpGbRcukYWzj0AEvOKuEn5n9cMX1Iy
	WCv9d05dFJ5vvcaCLtGjcGc=
X-Received: by 2002:a25:44c:: with SMTP id 73mr7925162ybe.444.1553998926981;
        Sat, 30 Mar 2019 19:22:06 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:06 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 0/7] staging: rtl8712: use list macros
Date: Sun, 31 Mar 2019 07:51:48 +0530
Message-Id: <20190331022155.68569-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

This patchset
-  Replaces usage of container_of with list_entry
-  Replaces a while loop with list_for_each
-  Removes an unnecessary NULL check 

V2:
- Include new patches for using list_for_each and removing unnecessary
  NULL check

V3:
- Include explanations for the changes in log messages

*** BLURB HERE ***

Himadri Pandya (7):
  staging: rtl8712: use list_entry in function _r8712_find_network
  staging: rtl8712: use list_for_each in function _r8712_find_network
  staging: rtl8712: use list_entry in function _free_network_queue
  staging: rtl8712: use list_entry in function
    r8712_get_oldest_wlan_network
  staging: rtl8712: use list_entry in function update_scanned_network
  staging: rtl8712: remove unnecessary NULL check
  staging: rtl8712: use list_entry in function
    r8712_select_and_join_from_scan

 drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

-- 
2.17.1


