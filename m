X-GM-THRID: 6802571997822844928
X-Received: by 2002:a2e:9205:: with SMTP id k5mr11352414ljg.133.1583847216300;
        Tue, 10 Mar 2020 06:33:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls2456358ljp.0.gmail; Tue, 10 Mar
 2020 06:33:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvN5/Pl3aGvkKZqbip0S6DU4NoeMX3BREJ/g8ERTYkjKtMO7jK8jvcPyy8EKh1V/55UWBdf
X-Received: by 2002:a2e:804b:: with SMTP id p11mr6298196ljg.50.1583847215104;
        Tue, 10 Mar 2020 06:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847215; cv=none;
        d=google.com; s=arc-20160816;
        b=jAGOWW0guPX8Mdc25GxYMRsTYCLw4F+VYkX8r+lU/YI+tJqwIvUn9IBsLeCT95MwEh
         QEGAE41i1tjSp6iFzd9jsh6U1rkpLh+Rgy4rm8UIYibjc/5g43G1lWXC9Qhl7b3Qfsir
         krXXbLKQK6B/4hl11dgBQ1+idR04yldH+poVXphY+iutWxpOOpKOp2ZTrGaaPlL5yVKV
         OsK+anzLEdPAU5AWqu1dGVlMz6Eyjz4u7hYzU0f7ZS1oMMiTbQfz6hNVbiGFt6RN6MqU
         Ns93lM229r3e5y2fysZxWjTTBxknUbLLpaNjV02P7cU7PYtpQoO3tccKlzC77cJD8ovH
         nWEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hE7IjXBIOGlZRENIc1nUG6Lud1Icsp14nptfIeWzE74=;
        b=SFaTieNLqGqmJN/hha0ZLIegTLuvhhRGS/lQJzAD8X4tCELUUetUIKzeyUYGSOcB2o
         evJlLB+uqhyjPoIEkSm+ZGrqhA4tTjA/FOKKitKpLn3lIkAtVA8tzbniOkM4R/o2nQtl
         c36vFj1nUDdTuUkSQCgcAn4rD9IE8h6AaJc9bhKpV3q5FbO9L/8GQs9PQquSQzG/9Axa
         pjL1wqhS2T/ToxWCKza606C9HIQgNlPGmY9gmbDk1qq21ryQop7hEDgTj9j3G7L7w8Kn
         IOt0vdK4PitmwywoiG+nVHEkMhciHi1Xk0hyiMhEZa/BrMI5hZX4ChoHXWvlVop3Ojuk
         1PRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=K1w4vXWG;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id s8si754572ljg.0.2020.03.10.06.33.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=K1w4vXWG;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x32a.google.com with SMTP id n8so1417894wmc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=hE7IjXBIOGlZRENIc1nUG6Lud1Icsp14nptfIeWzE74=;
        b=K1w4vXWGpWIYunmDV2Z4uoRJtcX2OZTLqky/Mz3E0fqx1qidJoj+82WEgHSFkIoIpQ
         kD/zesN6vz933P5ujavC3GH3yOJOHgh1+sXUiPM/jUyrDiiowq+UYfO/UnuBgLrueASx
         LXEI53LczZ5Im8r/oAZFFTX3IlaxIRuu37Tvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hE7IjXBIOGlZRENIc1nUG6Lud1Icsp14nptfIeWzE74=;
        b=fOFHxJlRIDu5f1yWy79ieX7TD3tWx2uvRYaPibnJsuM0HvSIVBdS0WMrMXqnFf7ISE
         KJZL6Kf2aXVZUN/UFeBZOWg8Bxg9FgWrp7Kbh2njDBm5S+wtiT4Sdi5ZRk8Q2u1X9EFR
         L3fL+nfohE+h/O4f5xBPqqpIhyOG6/wgO08iVY5K15ugXTM3s4Djcal9qHX2FD7Xp/5Y
         PR1pjDcn0+1IU4k5u1Q/VzyqIaSs+6QTSA4mmkDfkjtFzL6oDs56eqTCC3HeALf+1v/Y
         nkvN54vNWIwFCa+zGX9LYJynZ67oegsdV5ZDNQqV6F+KZGGXqV2YsrJrChKav69UN2km
         eGEg==
X-Gm-Message-State: ANhLgQ0hkuUv0NAHgcocqJD1lPFnN6RO8XZkk+jWpdUXP/8D6MTStCeX
	5PtlXi3nx2LcXcsfzevpetrwlWDQ8azdJg==
X-Received: by 2002:a7b:cb97:: with SMTP id m23mr1752095wmi.140.1583847214455;
        Tue, 10 Mar 2020 06:33:34 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f4sm10462018wrt.24.2020.03.10.06.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 06:33:34 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: exfat: exfat_super.c: remove unused code and improve readability
Date: Tue, 10 Mar 2020 14:33:07 +0100
Message-Id: <20200310133309.8332-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Here's a set of patches that performs code cleanup in the file
drivers/staging/vt6655/power.c


