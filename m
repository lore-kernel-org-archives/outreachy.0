X-GM-THRID: 6670105232964321280
X-Received: by 2002:a25:2fc4:: with SMTP id v187mr1007593ybv.73.1553004894961;
        Tue, 19 Mar 2019 07:14:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls5122443yba.13.gmail; Tue, 19
 Mar 2019 07:14:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwviFchCnfMAI+GTfovF6lApHQOzmUAWEDXuufe+3sYg9t2sauyKfkIQJrJc2OR2pJ51GkH
X-Received: by 2002:a25:9345:: with SMTP id g5mr726449ybo.64.1553004893942;
        Tue, 19 Mar 2019 07:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553004893; cv=none;
        d=google.com; s=arc-20160816;
        b=InbuyXwIQtwgKW8BNCNHSHgECbDV60iMrA28RNEvUIJKTK16aoqDJwlAE5ubeFsz6m
         nwK8y1+LGbxir5onGIirLo5U+CuM85WMZDHjXCuWbWepiOU6aqwDqLl4i/Ewdnp7R0nw
         RCWLslt5sg0hqvcJPwFyMOfTdOYKCy0NU85/TamxrhMPbZ+jB0oVYQNwBeV4wMDMbEVW
         XFzvZPAxK7AIJ524i5JGmVklLZcbuXMfVtNbnWlHFOcS97ZP28GymMPQnT8UXXmHxANo
         tokYGXmUPVILO6ZI3OtkQzgW4DYeWsLyUnpoq4Vsvtw4+sRJnecODlqJt9sLKSeD7Cp8
         Njvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hq9LpafrUa2pMNtb0GSlfEWjNlGjLL50OCeOoN+GN7U=;
        b=wpM10j8MiTzZcHgMOIVe+jQzPG/87YiL0L+pmMGGRRBNPW3Ko7x+IeJ8katEVdJX71
         MmngKVstxJjz5JLjlbS8XgfPCwaSfo116O7Um/cBag/Rjr4Eab1T69LrnhlPsgmmoiPi
         HRlio0xuC/aa8WbuLwcday5T7OMSe+9TnT6I7Hqgu7PUVymVXNGuIsq6ki3q5NzJkB2B
         iVuMEHbaJcXqn2ZOS/h+W8Ks15ODkaO0qLbzM+KDaUv8FpEjLjod+N8eWDjrvDI0o+Xz
         DDmAhUK/zqBwFaqk/BdyHLdONX6mKKBQ/dEH/WMG2qptjV8AWp9fMREVoK4NHoz4cYFW
         vwrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rtSZykP1;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 62si946787ybf.2.2019.03.19.07.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rtSZykP1;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id a22so13911625pgg.13
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hq9LpafrUa2pMNtb0GSlfEWjNlGjLL50OCeOoN+GN7U=;
        b=rtSZykP15GElNkrKvd/93PIwAkiBED9Ht/xOdGnkK2T5Kv9uZZPt7tW16V/kl1clOJ
         wRYP2r7qbCgZ258n5VAxa5SPyzEjq6mS3ZBTKgCU9ozbeE8TGxK6JsNCADES8KNDS0qZ
         HYbOohB3uhOi+v1lQfFIcyM8xtBrZgI2V+/5kPou+HjXZNzk9mRc8cHBd6cFT7loH/6N
         K6r3mi9EP8IsDRdRmQ1eYcyWcMFA5SpS6o+YYENI0N+IkMPx94WuQ0N0tKTjARi1lY3P
         UB104p1iO2LjafbS0gVbOI6Oe0doWzQReW+fO4389+PP+JEBJMrQNzjVR2XHsH3ZKtUa
         MVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hq9LpafrUa2pMNtb0GSlfEWjNlGjLL50OCeOoN+GN7U=;
        b=fRhsPVnYr8h871CUlRWTU6p6ltm3ARhtFoR7SSooJn2LtcQHy5jEzb4bhjnBnEwcUC
         DplExZycJ4zKOTrI34yQdhFkiEdvRs413MAoDEZFXHMsuEq/+UtHedup85CjWIOIwvNU
         GXF/wxlbQDoKYE+XYl3Fgj+e9vdYmuToBrEfSSkbaqMLQhGNC7sOZUQGhhSJrHeYb2gF
         qQziU31+EoepJOPNcFJ+FzVV6Eud77Rvi+8PDNa6c6HPdMZWVnYrRF8gj5tBZ1Kk5dQG
         3w1D/GeoMDZA0Gs4REzBMpiNUx+F5VIGKHChLXsDy7PCDY0gyQ1ILn17iDqu8Crjwehx
         bp0w==
X-Gm-Message-State: APjAAAWfALlW8H28kbABKVjqLZFEaZ1tbMe8yYSZvoiJZJfBKHBsVpO8
	xn+kTkYZSe7MxqEPKqV28++wq139
X-Received: by 2002:a17:902:9a0b:: with SMTP id v11mr2308054plp.194.1553004893103;
        Tue, 19 Mar 2019 07:14:53 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id n24sm31764365pfi.123.2019.03.19.07.14.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:14:52 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix various warnings and checks.
Date: Tue, 19 Mar 2019 19:44:39 +0530
Message-Id: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This series fix the following checks and warnings.
1. Remove unnecessary blank lines.
2. Fix alignment issue.
3. Add spaces around operators.

Sanjana Sanikommu (3):
  staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
  staging: rtl8192u: r8192U_dm: Fix alignment issue.
  staging: rtl8192u: r8192U: Fix space issue around operators.

 drivers/staging/rtl8192u/r8190_rtl8256.c |  1 +
 drivers/staging/rtl8192u/r8192U_dm.c     | 29 +++++++++++-------------
 2 files changed, 14 insertions(+), 16 deletions(-)

-- 
2.17.1


