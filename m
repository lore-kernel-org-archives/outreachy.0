X-GM-THRID: 7021921902776025088
X-Received: by 2002:a05:651c:1194:: with SMTP id w20mr825455ljo.303.1634918596285;
        Fri, 22 Oct 2021 09:03:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211d:: with SMTP id a29ls403727ljq.10.gmail; Fri,
 22 Oct 2021 09:03:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx21h5+8EhnT/ZhGn1SMiFleRGA0v9YhRTvUl8+KqCKp5QhfAzsd38ZQ95456otfjOiPNlS
X-Received: by 2002:a2e:9c0b:: with SMTP id s11mr831446lji.259.1634918594572;
        Fri, 22 Oct 2021 09:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634918594; cv=none;
        d=google.com; s=arc-20160816;
        b=YdsfBQbQSLgLmq3jukqM2Rhs3CO/N1kCztT2MbMypLZ3qAIeTZheatYSojC0ckmsjM
         pYDLTxDNVLRRLK+r4d6z4mo/A1HubMCXLIOCHz40R6PU8WE/6SZs9iDzuQ14lM4bGJcH
         sfWVIZ+d/z0l7SbQgEIQHbVBhYzLAKsCb2vreDmZeiP9ObNvcVZlQ/TY2xzR0vJ3OgZj
         M27rn8oX93Vu4Et43XcPcA7UpPbO3PKVXKiz01GTlmm5M7S0GJq/HVqFPIrXTYO/sPzz
         /08aVoA8iYg3naRxbiT/49EfQIoSp45DefVTH0yL1WCL0i4tfuTRSC6fv8mloROrGr/9
         cs4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=4M8xSTk9i7wuC46tf9RTLi5RyB++lKEMrapQOAYu6Fs=;
        b=hDMWsvYzVbCkdKiD998sUUSbrBczTOoqz0nA4RmsETunJ2gbG6oHThvkxdG88+ndf1
         9D0hFKNaU5DgeAFF5GEo4Pri6pXlVNK9xhJ/kxnwjw0+3QueS9rK8vAnGnW/8isNevNa
         tS7yVodVB/XaXCdtechzng0GX5n3Af8ZQRFqnlJJRVt9BgKyG1F8R8/ftL3Awa+cILmg
         izruqBZEsnFVIUds6th8EjXGxX7owVzwp8FGLzzBrwzyNJmfV+x2VSRkSRaPfnmuSnjH
         M8RmN12m9GRfxw7hTQ023c9atfIeC13AxxOvVu5yRdXqPa5cuaT5sHydU32eHRdKhoU3
         0/lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IsXOF6nI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id q4si705209lji.6.2021.10.22.09.03.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 09:03:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IsXOF6nI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id r7so2994547wrc.10
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 09:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=4M8xSTk9i7wuC46tf9RTLi5RyB++lKEMrapQOAYu6Fs=;
        b=IsXOF6nItTi/Zybxme/yj7goWZMgcUiv3Ptpnh9rw1ZxL/3DaWUOWNL3lTUTWnqLcE
         ntFNOckNdULtWBgCIBmPezLCCPZ/3CTJhjD4laGwsU1vCn666AJJT32I8Zju7bOllKsa
         B7VuLyIiBMUbEjU/RKeOCUfaw9+YTC6f9bl3LJT7U8w3bx+q1x0PuvdBROsBQPc4WNHZ
         D6LSkrirNPVraq2+XRtt9UkkSmqGXEnPZIUrJlnZA+nyC1cHbkpQsoNQKoc1UdwQUCBN
         t2AOlUZ5Q0vQoG4bQAjZ8DxtVQ5iJBhk/czsH38jZFSMTn0dGNcrjh7+TysoQKr9xDPh
         wDHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=4M8xSTk9i7wuC46tf9RTLi5RyB++lKEMrapQOAYu6Fs=;
        b=AIYSgK5iEiGUqncoBGzoK1AolVIXGG/Bto36qTymRJkQEPPk26GUzXR7lDkzwPRyGS
         x9kULS9kVEcNJT3vtLJljLSes0Vef+lhn8sYmerIJanjk5mgplXJqllHvX1/T4VZUuDh
         /vgMUACvfgKzycJjWNrbNO3XnnsxCa5tDEEMg871Y2cBydGCZGMWw6QUoqL/YEZMmGFx
         UpJoaPKkmxBuPVJM5/i0egJ5V/bpOMHODJNpkHZSMu0qS4KNt/egIcIQdIAvUQSOknub
         UrsdP/H7RoT7Mx0GVI4EhBu8HyrBErK7YkMV+9BXrIX+tqb7Idmvf/jENpQSXKNYn7HG
         prLw==
X-Gm-Message-State: AOAM530AQgH0f2Qy7gk8tJzsQmwbm417crKKJbAvBtB7GBaLzy1xqNiY
	B6V6r4KjiKEDnholuHZSftU=
X-Received: by 2002:adf:b1d7:: with SMTP id r23mr862083wra.145.1634918594310;
        Fri, 22 Oct 2021 09:03:14 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id h14sm4089641wmq.34.2021.10.22.09.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 09:03:13 -0700 (PDT)
Message-ID: <0383e80d9465c23dd69defb867f604ef7d482d00.camel@gmail.com>
Subject: Recording patch sets as contributions
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy-kernel@googlegroups.com
Date: Fri, 22 Oct 2021 17:03:12 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi,

I have a question about recording patch sets as contributions. Should I
add it as one contribution or record each commit in the series as such?


Thanks,
Karolina


