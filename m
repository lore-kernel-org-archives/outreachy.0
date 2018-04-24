X-GM-THRID: 6547933385592930304
X-Received: by 2002:a81:5f07:: with SMTP id t7-v6mr5011302ywb.211.1524559544622;
        Tue, 24 Apr 2018 01:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:838e:: with SMTP id t136-v6ls11673ywf.4.gmail; Tue, 24
 Apr 2018 01:45:43 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/nQUiEMPROg8wCQJkK3iLNC3/wCUNIcUNEmZ6U+h3+753pwkZGq80wtOjG/rsMAXKi8Bj+
X-Received: by 2002:a81:494:: with SMTP id 142-v6mr7235407ywe.233.1524559543479;
        Tue, 24 Apr 2018 01:45:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524559543; cv=none;
        d=google.com; s=arc-20160816;
        b=KzJUJOBCv8lr0FYZRkOdZVvk0VeHXS6cvTL7/YAF6nHQmY66MW3AWOJP66G9th6a60
         /bRTN97zWaAlHlmZGVtc6EjYW8vwaO4RI0q60MEG+JOvqqLjGAbCGDye8yhSdkKTo592
         0Iy8bQTQOqPoH0DWishbDLFEXTrp1NwnRIFzgnpi9iBVThWukKha/LQ2kSeHIhPMGFG1
         quBYyyu+tKTe6rr0/9ODsFwVYVgBHtASDPnde1AnjFKvzyc+YH/GL0LrMtazi+n3DLsN
         O+hYNdotBbtZ7uocYz94kALQz6vVSg2/eBwbvEApwxEJ19wa6aPkMNl6HjOuBgkCUeEj
         wExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=4QSo8Az10/7jmw76zPAhOl8c7LrzoGV6mW6hxGQnL84=;
        b=jhP8T8u1xrxG3CPa5fUILLIMppKgKMLen6wbA+3ctWjJ9BaJlz+CnvvTRhoKwqPYm3
         3IEJtcT2SGlpFC2IJoWo6/GypbhfA3VqnwCl3dJURLnhLFkC5AKoA116HJBsWi8MNHt9
         WR8al5Wv3Mwp0THD15keWaf5bl1AMLkhimbV30AUqhsoZoMaJG1+11v572lglolhgpC1
         QpZugMbxcUE8aNIvFjzmOBhJ9a5ty4M7nD6BE7F5o+jst+ElS1bMn6cxcFt9unBh53uZ
         wcRtv2THo0O9j+vF2E9B1ngvsBc4wR1jlnZSCHzlM34XvhiL3/LyCrDQMlgDe66SeWl6
         HlMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EZgi3HAn;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x235.google.com (mail-io0-x235.google.com. [2607:f8b0:4001:c06::235])
        by gmr-mx.google.com with ESMTPS id i142-v6si605013ywc.0.2018.04.24.01.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 01:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::235 as permitted sender) client-ip=2607:f8b0:4001:c06::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EZgi3HAn;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x235.google.com with SMTP id a10-v6so3785950ioc.9
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Apr 2018 01:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4QSo8Az10/7jmw76zPAhOl8c7LrzoGV6mW6hxGQnL84=;
        b=EZgi3HAnPCL0UwUbUng27GjSmolz/Ewf1kttITkYSKe6E+NSvCNBbmuGlMuzwPKfsQ
         NebUXm24SYeFhCNlJ0JNrcv0LBl2Y9m5jkM0FJTA6SEvv4GG+3nUxfKUX9zwTT8MiunL
         0QK3UaD82k1m/WfguFTq97bbjPk4ZrJh0CYXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4QSo8Az10/7jmw76zPAhOl8c7LrzoGV6mW6hxGQnL84=;
        b=QVoNJUIMfTKTj3I78PY+GEmwyjFTVUjJTK5yrOP14k3X74ahBRDsQRHBpwtnq+Ucsz
         +OnOnWVU7TUWCEOm0+jOiZeSe8lDPy4j9GpRh2qRT6a+4RboYPUVtoozOSunDLGzl82T
         4s5UTSINZCfMIDroxzGIpBb9pggWwR1KuJXflNcGSVE5riistP/sEr0si+N9DuA6NbSe
         m46ezouKTSLHsjRgZ1B0T9SDYytszOaqPXEd/dLg8hqsrAuTCAwq20XOozGIERbpz7uE
         kuAsiM73gmwSZgOZ9kjrmzkE/yckBc1rMT3E9csQJAqndzoaU5VlzRSbj7b8mX3+HC6e
         y3bw==
X-Gm-Message-State: ALQs6tAKZ9Tu3BHGvm4eR8IQUJEtuVFxGf3/fUFLvSye/YRBVu50bH6/
	4npbFRN9WtAu6u3PcNVcycu+RaZoyT6wUuNb7enyKA==
X-Received: by 2002:a6b:6918:: with SMTP id e24-v6mr27184917ioc.242.1524559542922;
 Tue, 24 Apr 2018 01:45:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:cc82:0:0:0:0:0 with HTTP; Tue, 24 Apr 2018 01:45:42
 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 24 Apr 2018 14:15:42 +0530
Message-ID: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
Subject: Continuing Contributions
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"

I would like to continue contributing to the Linux kernel, without
waiting for the next Outreachy cycle to begin. Would that be possible?
If so, do I simply send my contributions to the driver maintainers
(leaving out the outreachy group), or should I send it to different
addresses as well?
Additionally, if it is possible to keep contributing, should I
continue submitting cleanup patches for staging drivers?

Thanking you,
Nishka Dasgupta
Undergraduate Class of 2018, Ashoka University

