X-GM-THRID: 6745592460667256832
X-Received: by 2002:a17:902:724b:: with SMTP id c11mr334747pll.155.1570580634931;
        Tue, 08 Oct 2019 17:23:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:35e6:: with SMTP id r93ls150250pjb.2.gmail; Tue, 08
 Oct 2019 17:23:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2gyP9sX1oeCX6E7zpFXNBVT0IcKmA9h6KwOBvTjHNFz/+7FGZ4QckxnRzcBBFOjtNTlX9
X-Received: by 2002:a17:902:a988:: with SMTP id bh8mr296365plb.303.1570580633929;
        Tue, 08 Oct 2019 17:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570580633; cv=none;
        d=google.com; s=arc-20160816;
        b=WcRxi2AYOF7VS+ypmnzqfXDygrw9YiHAioWlUWw8k6zUPd53QNulmMe9ubXroXHlA+
         +5n0HwbP09DN1AizdBIilzJTXzUefXZcU68p7F2iBrGAbCCE9CZooPnC80rmE+cGF/3o
         IPsDs2CO4zY3zWMrlPG9YrRf3rDztIP+k9NMa9terbMllwDGsaUeR72RHOof/dJBI4o9
         497RSp1F+rYmzWcMUCHvV9uW3XtKc51sP8g+KhxgUPWAPGm1FO4yH/b9MdWsHc/C+of4
         rOsi+C7VANFykOMzN1Ewv6nGDEmw/Zz+Hg473D9cFfpvbfEodh9Q2Q/294b3J4qyOcyz
         hp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=y6AE8T4oxije9wffqf4/jMatwPzGDt/37/MJM6Od39A=;
        b=xvr483/cJtxND8n99zJ/HTWaJh6gD3HPftYllTrVDRV3+RD9rSONl2jWJzPxdFE0Uy
         pw8elcyB34Ll7UuOMtDu9CiB/pMnSPyMveUxvyk707ehoqFkjMqtO3LPR9Ne9a/W1uqq
         w3ns+MmYQ5nobvaBQlZA6bhneU/YlnKA2WyhT0fi6sgc7BUnvJKtC5VzGR5zRx1i8pgi
         DKFndwIfhHUA/jw7hs4KVG9kjnmCiSf2e9f35btbS8hcGBifgYzrNd/dNxGJ1sTFsOqm
         hHBRAxfKnIOaKp/bLiF5Ok8IcLrob16RDrkb6p0p83/r+noa1zKpec/OFZWy5jbpsd9T
         gt+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZIe7Ify5;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id b1si52429pjw.1.2019.10.08.17.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 17:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZIe7Ify5;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x943.google.com with SMTP id r19so219753uap.9
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 17:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=y6AE8T4oxije9wffqf4/jMatwPzGDt/37/MJM6Od39A=;
        b=ZIe7Ify5HdzE0Io4tpky3hTQGoJDZ8Ia085aDlPiGz8nHXYXdxc5WUq8nJI/y8GU1L
         NycuEm5REkLGqQSGMzeU1/Zy1XmHIdgqeumJHjqRwELI6OgfgllAVczZFG2QREHNy79U
         +HOwc9lkVnuOyX7d1/An6JlgeQ1yw4Eafu6wioo8eeAIgb9ZEGg7PNJefGMjztuo/Bo0
         tWwTIOlKfRk4yjMw05jvPLmsJ7EYhRw/dnfzYY6fhYya4Djj9LMwbld5E9a0eKEk2GYr
         NlImOD8D3r7+oFdl/YtC76EaLsNwcbIMm2Gj1TufBHsC3dViK2bVuOeIT+YbuyMI2eIq
         4Ccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=y6AE8T4oxije9wffqf4/jMatwPzGDt/37/MJM6Od39A=;
        b=Iz4uyK2WvCCQ5k/ndzR9oCNYMk0pF5YulYfRNJ6orTL5+zd393yvw1SQAjm30FZMep
         FsVt3EDJx+m2WqZUiDyd/u02FByoFLVoPcxWc1gr8qVMrYxdsfwuQpeII6RQQJBBD2tL
         ZfnkytSP4f/HrDUuXzGT9BJ76DQZb6FQgWzGU3/Qk0X9JedMVonAX5P+PSWKNx/JrLtc
         8xs288I6dcr1YnLRjD6Hy07SAhACFdnd8H7D5iNvgTWIasSiExLT8DlAiI9tLG0t0Y16
         vzaW2sLs98LoGtdVEoAk2dr3m/JYWPevbGTSmUxmdibPnKAthYJuvjfivXR2qKpHfWR2
         QgIQ==
X-Gm-Message-State: APjAAAVbMAguUJRmWyfEmoKqyQMin8RvrtlegMw9dhbytlHkQEYDIq2h
	QTsuAnEa93Zvr2aJfAtc7ECLM9G2CmQ2xg==
X-Received: by 2002:ab0:71c1:: with SMTP id n1mr487411uao.106.1570580633074;
        Tue, 08 Oct 2019 17:23:53 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id q18sm174646vkn.56.2019.10.08.17.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 17:23:52 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:23:50 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: rtl8723bs: Fix style issues in function call
Message-ID: <cover.1570577926.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

This patchset fixes multiple style issues in the same function call.
Now this segment of code complies with the coding style guidelines.

Javier F. Arias (3):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Fix function call wrapping style
  staging: rtl8723bs: Add space between elements

 drivers/staging/rtl8723bs/core/rtw_ap.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.20.1


