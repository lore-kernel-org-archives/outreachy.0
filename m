Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3DEA4E
	for <outreachy@lists.linux.dev>; Sun, 16 Jul 2023 22:38:19 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-635f293884cso19703736d6.3
        for <outreachy@lists.linux.dev>; Sun, 16 Jul 2023 15:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689547098; x=1692139098;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ykGJKhWegnbQz2Xg5fz+7AfCRv98JfgRFzt704nFG2w=;
        b=NA5xBBoK12H4fR8dXuVWA4yMFxRR4RWXyIUKAu8begOIMt/efJ/FbB9xFXBpoWm9xP
         hYEIMFIoLi3cfcKNUNQWVQBmwctHgMVa2huKH1cIH7i3//H0e6z/tQ/+C4kLUhmUg8sK
         9YHEkDINh6hfIk1EbtYoLqBunm40jPqctLpYoZBGPTdCxlRAevr7hn409VgyxhMSsqvi
         IZO3I4ZIE/JBVbRnH4p6BMRuDmLMFvy3hvowdbGpq6RlWEomWpA7nWieXkYGt/eoicpC
         53WZwwm9eZY99oByrJll1GfFqOFovb6fzuVv0FywMUGo1EmLMmiNqLF3qDs3nVL2FNni
         lPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689547098; x=1692139098;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ykGJKhWegnbQz2Xg5fz+7AfCRv98JfgRFzt704nFG2w=;
        b=RQOgx0e9Et4k+jkRyvzgeOG762qFoK+n1Kmgx75NkeQqGAwdXG3pvcYZYzMOspNb8i
         SmSDLsCi5jLjjpTgqpoRi9qjikE7K3NWaKrKgyjeMgG43DCa/FiN4ZGGgZzRNP4jh9hG
         2uhx2p60OecOlQ8ULBtK/U+YkHCyCwoEMb9YqgoiiNJ0eiWbTTu8mauii3TEEu8Lmkb5
         KIJT4v1Ty8Dxkl5f4avGO57lQxC78C/uEFBfU6aKCMv8YFO87YwDHjwGin4G9AbyAL1g
         cfZhQhBAcg68fe65Nzq2eCmP57flF36WbEb89Fcy5t+LOX6AVDWn+aXfuFiRMc3Ep4Y5
         LsLg==
X-Gm-Message-State: ABy/qLb31S4XJABq1iecxMcIdKRJbkWrIq384fVR31JOeW9lvY6A+pDG
	nnjO0Z1rJrMn7AKGdaD5gGxwuV8xwhcQ+A==
X-Google-Smtp-Source: APBJJlGFvhGM7IWRZK4YFP9rqsCgWF8bnVTRvetKsNyCpTTEfRajIiSHjBv7sJtr/hGIxqbnrpmHcQ==
X-Received: by 2002:a0c:f4c9:0:b0:62d:ef1b:12e5 with SMTP id o9-20020a0cf4c9000000b0062def1b12e5mr9514880qvm.9.1689547098456;
        Sun, 16 Jul 2023 15:38:18 -0700 (PDT)
Received: from DESKTOP-EVNFDUR.home ([47.188.94.155])
        by smtp.gmail.com with ESMTPSA id z17-20020a0cf011000000b0062de51d8a12sm5893815qvk.26.2023.07.16.15.38.17
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 15:38:18 -0700 (PDT)
Date: Sun, 16 Jul 2023 17:38:15 -0500
From: Jeremiah John <jeremiahjohn08706@gmail.com>
To: outreachy@lists.linux.dev
Subject: Cannot see custom debug message in dmesg
Message-ID: <ZLRxV4CciqmQ4EYS@DESKTOP-EVNFDUR.home>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

hey everyone. 
 I have just taken up kernel development. or at least I am starting, and
 I have run into an issue. I saw that qrtr was a module loaded by running lsmod,so I modified static int qcom_mhi_qrtr_probe() in net/qrtr/mhi.c 
 so that it prints "I can modify the Linux Kernel" to KERN_DEBUG. Yet once I compiled and
 booted up my new kernel I couldn't find the debug message i set in dmesg. is it because qrtr (or mhi.c) is not a module loaded at start time?

I asked this in the IRC chat but then disconnected, forgetting that I would not be able to see subsequent replies after I disconnected. So I am retrying my query here.
