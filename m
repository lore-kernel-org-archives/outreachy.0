X-GM-THRID: 6753369380801740800
X-Received: by 2002:a67:e348:: with SMTP id s8mr985277vsm.176.1572391339361;
        Tue, 29 Oct 2019 16:22:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ee0e:: with SMTP id f14ls1729750vsp.4.gmail; Tue, 29 Oct
 2019 16:22:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtN47QOICtMAHAU76/o4HWqADajtOhOKIv8GlE6sSLtA53N/pbeIwPoaK1MD1lvW76S3ii
X-Received: by 2002:a67:e9d7:: with SMTP id q23mr860879vso.227.1572391337907;
        Tue, 29 Oct 2019 16:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572391337; cv=none;
        d=google.com; s=arc-20160816;
        b=J1if7LhCHUavGOFY+vUsnN6u2sLxE2uUxTHR7U6UChobcTwKfuKlfZ3QAS95eZ6sI/
         J5QSU/rPIcFR6riC/cnsfbXz5lMz3xRREm6v2AQyT5MYlN9azD2WRkmKv0tsUu5HAVKX
         QMjDBGy8BF2yagHlQN4rC4WUuGNvu/9bXgjFGzfw2R7GQvos4Yaavy6iX4lWY/QjaUOc
         njSwR9fOgbU9ebsZqtfdFVqLEA09xt7/pUnQrkw7+qlnIFGlbrplI5ciMqfFfNl39KPf
         A6IyVKg5c/hs0VQTkN3DcTBv7CJ7Ca9mEhOxd1mxOGBs1G4k7l6nSdYy4jAcoL/pLFKH
         Knxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/RIHrM2T5t2yjqxj2JPTS71DBT+0RqAHHijTzNDzZvQ=;
        b=tjUoB7bYMtARiJ8WTbgY23dSzE0E9Ic2QF3qJ4kKneCAT1hpJ0bofDWfUrp03wwV1+
         n/RydR4b27gUaxWPZcKXDS5lsnmrkQabvcHFezo6JK1+1fGcOLK3yMzBJFQ1Mv3iVQsN
         s3GG57TX2mCLJH3J/7fjclwNiGyN4mUVMrxZwgjBn9RIWjVC/E/GabK6Aihk7l5xSRI3
         bejuxM4IL3raCJa7+oRTVQrElz1w40NXkg17jDARmh6gYTffFUuVyL1TX3CQs6nofNMY
         ru1vu3UOFl+3TlQYjYsn0iHqYIkZCKDcBJv2pmoyeG9Zmad6Qg7IOVyPZk78z+OWH596
         kjmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oVu5mhpb;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s19si8586vsj.0.2019.10.29.16.22.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 16:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oVu5mhpb;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id e14so679154qto.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 16:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/RIHrM2T5t2yjqxj2JPTS71DBT+0RqAHHijTzNDzZvQ=;
        b=oVu5mhpbwaYDhSZVWLJHva8w1r3fWnI9tbf3bI81Z4kUpGcBcb2LQwxgA6rQyaaywy
         EDQZOJBJcBKsDP3+uO4LLxe+AJF9/wVa3YgYytzy/IOYHwXeAIrHkoOp+sizz3UyROHV
         84hjPfNn2mik6aS9KauqQptgafjsGlQVFQPL28vR+jYxSWLy0kkwodlH9evs0l69znCj
         ya1lmfDMy9OnxY0ecCnUtlUZaCfVcU0iKHC7XToeqpR32y1271NCKeA2+NVwK9r8Z9Va
         Jx8bR9zQ4AsSLF6bR4tzex2O8jvJjY+avCUTU6ELAV3OVxzap4FhFChnHUyeRy6fV+6w
         r9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/RIHrM2T5t2yjqxj2JPTS71DBT+0RqAHHijTzNDzZvQ=;
        b=WCpU99ZoamCMdwHvwtRMzRSeeM6jRp5CKwasTYKg9/DQ621CRpyHtwYKwVokXyPikt
         ns0PUoxAhEaU7aMH72Z9VBi+udDraE8OHZZsjvjZ2utmbCwR+3dA6+tliDXL9B1uYz+A
         WQQqyP5ZMNsVBUCWCbD0T7R+e9/VN9J3IgRAmujGlkzBnXabaZsNf/Lq6X7MmED9XC3x
         x9c6ahUUCYpn+gBbpjd4k0LcU6FtyLrhykZKEKeqzJeDHhqupNlur8Ub5FZHZ/vemM1z
         3OBivocuFL4OvmM98SXvQt7P+bokFBaik/QxtatNiPXJOTyI4us3giauC6G//dV1o/BS
         dTew==
X-Gm-Message-State: APjAAAVcJurZb74g+8GA4x9EYJuvL/PJBOp6557Tv4C243MNocMxwnN3
	fhwa/1fP5tuOtaIMn2VtoBMovzFT2Cs=
X-Received: by 2002:ac8:6146:: with SMTP id d6mr1980022qtm.271.1572391337209;
        Tue, 29 Oct 2019 16:22:17 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 16:22:16 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 0/2] staging: sm750fb: Fixing codestyle error                   
Date: Tue, 29 Oct 2019 20:22:05 -0300
Message-Id: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixing typo and usage of spaces/tabs in file sm750_accel.c

Gabriela Bittencourt (2):
  staging: sm750fb: Fix typo in comment
  staging: sm750fb: Replace multiple spaces with tabs when it suits

 drivers/staging/sm750fb/sm750_accel.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
2.20.1


