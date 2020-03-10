X-GM-THRID: 6802570683700215808
X-Received: by 2002:a2e:8105:: with SMTP id d5mr7110173ljg.172.1583846910369;
        Tue, 10 Mar 2020 06:28:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls2451095ljp.4.gmail; Tue, 10
 Mar 2020 06:28:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtny9a+0XK2aaMg6iJZExfq2soC8ZOj29aJRH8UjLEvteErZv+3bogrVLKdauMIhtGe91Wr
X-Received: by 2002:a2e:330e:: with SMTP id d14mr2681767ljc.72.1583846909135;
        Tue, 10 Mar 2020 06:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583846909; cv=none;
        d=google.com; s=arc-20160816;
        b=ysEVkdPqMsk2bT3vznvxfCtBGgVe0/oiXDKuVuYfDcdrkSs/xekrPQjggY6gIRu9m5
         mTio+hc5WHqiuWK3eTF4agC7/YDFm6Vv6i4DUHvvgWWmHDY/BMeDaKcO3aOp5knh510/
         dRsfFFebHZxsnY65Y56ZwaHNDnTbIMHYLYsXNgQPWhNQ1x4vulaCXDWT+UoCBBv43BG3
         SVM5TgCX+FvJ/q2CMzyqTYdGChbbS7J675AV7DH1o/aG5iip6QJkCRBwjI+pzpeRLYH3
         j6HGxmNmEgEFP+6GNP/F9aiOzzIMNmi4YW/vFbaUgyq7mkuUP/uBUsmta1wax3RGrfRO
         IhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jUTsF3qfWvGprRA0NiYXJuSGI7S9+8gKHzrtmMexyRI=;
        b=L87J7sqUpdTzJ8oGnIKM0KJNAlIanx2bmsPPdyPhncqIjr7bziRxdCwsqiYpRjrTKc
         zQXqmADqeiBB5LWJdle8OkuIOVgnJCBegsUFbaobOCgp6VBxXhvW2PWKVD2SAMY9ek9C
         Fw1wOLqCMQqGnbnzCiH1odYRnb8Z+UGaGwE+h19ucG7WN8Bmz1q6UO/BguL0L/3A+hj4
         h5kDWIFmYJISAjHIFZGBCFDkI1LeKwqYNQ5JVRnFnMoRXllEzHVbelVqUNIRwwTj5TjJ
         LirwWdZGhOMO5l1OwQ9POGF1ZG9N42VQfj80zQFCUnmlaTRVTwyyNxJayp05JOf5WR69
         9qKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="ZOx/TwsY";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id p14si380749lfo.0.2020.03.10.06.28.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:28:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="ZOx/TwsY";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x331.google.com with SMTP id n2so1347533wmc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=jUTsF3qfWvGprRA0NiYXJuSGI7S9+8gKHzrtmMexyRI=;
        b=ZOx/TwsYMo8V6mF32D1DCNE/2VznJk+xmmGEvJ10xlUt6MIyWWPNDmKSA3lATESuL8
         spXbIns9SQ/WvPVdqgEpzdNdjG9NKUVEovW57vEyFT8tx/SnDKL5jjioO99bcGv8D+Hq
         GosoFjSAHtvEXAWxr2+7/T79B/+lPOl20oFOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jUTsF3qfWvGprRA0NiYXJuSGI7S9+8gKHzrtmMexyRI=;
        b=kfW8YLi0XKmIBgt/i5e1nd27S+0Dkm1nd9kGIRaymzlNdKgEniprrhF96ZsqGg6vz+
         MeJrZOgjB9i0NgAg28XCFqW/IV3qc73PJnq8C9mO6e93EuDuq8W/1Wn29xB/20B2yGJM
         f5i+8dEynbcT/It/HwAc5sGp1+ziYw5cjvQ+82WnE3b2GKj7yIzif37qxebj1FmRSuxE
         x3tHXW0JnnOYq9ogomnl+AbhGd4EsXx2tRMw1hElAGC2JDmsbMjIT069YCnLSS6u9s/Q
         GhjFJpKXTI2qMtp6Tsb8I9nYOM+PWiJkAweZ5pAHJZRd0RGPgHDwlrHchhCuIZkDgdCK
         0vgw==
X-Gm-Message-State: ANhLgQ0F3gA8ujEXWjEtR5uYhBdKc0/HYWbCVaT/4JUG9nyRDib/SRf0
	IPfVy5Yj9d+gTQmOvN0Ub3te7cGTE3Q+xA==
X-Received: by 2002:a05:600c:278a:: with SMTP id l10mr2128739wma.45.1583846907918;
        Tue, 10 Mar 2020 06:28:27 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u17sm3871275wmj.47.2020.03.10.06.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:28:27 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: remove unused code and improve readability
Date: Tue, 10 Mar 2020 14:28:12 +0100
Message-Id: <20200310132814.8269-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1


Here's a set of patches that performs code cleanup in the file
drivers/staging/vt6655/power.c


