X-GM-THRID: 6747862437229232128
X-Received: by 2002:a81:2046:: with SMTP id g67mr14110113ywg.352.1571109154914;
        Mon, 14 Oct 2019 20:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:240d:: with SMTP id k13ls2624089ybk.16.gmail; Mon, 14
 Oct 2019 20:12:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaz/QvwfeIXL9eCtZydzVpXTMIyBur1hNqe2aX9YKYAX/rZEV8ZPm2rUKqqP1fYTlfLhK4
X-Received: by 2002:a5b:d09:: with SMTP id y9mr4240850ybp.113.1571109153539;
        Mon, 14 Oct 2019 20:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571109153; cv=none;
        d=google.com; s=arc-20160816;
        b=nJ0rqNZoxP8vK0Itkocr+KT8mz9axhAo7zAvFENry9vgQTMRv3n0peUE2zhax2Rlz+
         lOZfWQIw3zSpoES3/ueWQTQY+WP4xDtgSP0XX+EXdd4F9wMSgO1db+IMx8iBly69Kom4
         s3GOTJ1dgEPuf0LE6B8K88IgfoxbBu3YzczOtF3cN/ILREqF0XQITOlVJPHsY9Q2sJl8
         IHeNdlEGHhmAR/lH75hRfPDikeIwPW1AK/bJEK//JgRhYU4bGG/Seaysd1RqFEFILni1
         0v4Z95k0jl5vqCpOBOlwJ/ueqCMASMImMRjDVMu0HO1TT+Ig2+OIP+LxXIKx8iiae8LK
         nUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bFAxSpkkfCgIqBxvOIDok+oo3PUBuraxt59KA3O6rko=;
        b=ZP/nHMjd52g0i1/aR3VP457Wf0wK/YC7Uk0OAyaW2ocgTaRd8QJ0r7ZEtNvUkY0iIZ
         Ojb10NZPv/74xtY9G+xJ09fefxMU5IMJ8akwrcgFd6PnApaMvN33klyVtiN79NNm4ME9
         GpAnvRlFw0An5J+VBuxzQ6geb6/G46Qsbd15E1+zZ1MgKZFyY+WeUO1haPDT4bR7CVhD
         oM8UGj5pUxc/2CwryXnvrFkqpU67RLrBnDn+kEdfBrWm0fAGH19UROVtxE2CAdqBzVM6
         6HdghhuX57lXR8dlMtcuc/bW6zP+0dm5rdt25VaXxrCfeb8lCxpFNPV+NcXKVqHh+iuS
         ArNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YXf1CCzm;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y7si1128833ybg.5.2019.10.14.20.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 20:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YXf1CCzm;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i32so11203114pgl.10
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Oct 2019 20:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bFAxSpkkfCgIqBxvOIDok+oo3PUBuraxt59KA3O6rko=;
        b=YXf1CCzmcDJO16T3T9D4vsIuEqUXyFiOwuHi/exvbxq+f1/ORc9NMOyWhSuCAkEqSq
         +pje26rJ83txR/mKQF26W6xtpwzfO0p8Or+JLmqDHhZBAq8NUZTLq0HyTzA6zqJtm9Ta
         rBONwWNaOtJi++SWQRxdiFSXxalr6tMBJ1+R66y2JD2qNvOC10z4CnHGeG2VihgHU9xr
         xTix6JAzvFDswhNp+yRDUVXr88VxRseD4zZwrRs4cGZeC4XnJBFhjXUDfR03PNJGbI+C
         ncr7WE5HPohsO0KIMwv8PAH/7i3fmHyjJKAQeS2kMlnufzxApR5vYlZa5E0XUZwrL1yx
         0O9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bFAxSpkkfCgIqBxvOIDok+oo3PUBuraxt59KA3O6rko=;
        b=AgjTTh2IJWaMcstRZ1+o7hH0h8d4JcZIExIgo4Y1fR/IlTqdD3GDGknwbcGloZutp3
         /lJxWGBGPg1k2SuIZb064+XIrjEZC26r+FOMVE/Naa4Wk2/lIyNyIw/Zufkgr8yefT3M
         Ckwj+WH1BwHbTPA0Y9AzoPsOROuXeyAGD3tzjU/bPTQoqKaFgwLGnJKxeZtXPZxhrU1I
         Z/9Wpvhqc49MUtldNObGM8jK0NEXymue23M+LSr0w4luVIMExIDKyM9kP+5tpcU+v/9u
         Z5yqhUCtddrYAs7GzAJoZmBxrNu3tG1/VwX0svOMjQhPASAnAk0JPgdJHXu7s8+at1Mi
         GDCg==
X-Gm-Message-State: APjAAAVBI+DXGl2HXm2TmXUt4M3LWyN+fVZ9eN7yNS0C4CYjAZYRYRQF
	T0Yu/qwhot8DGQP6kUv7H8U=
X-Received: by 2002:a17:90a:6509:: with SMTP id i9mr39344976pjj.47.1571109153033;
        Mon, 14 Oct 2019 20:12:33 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id ce16sm17355104pjb.29.2019.10.14.20.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 20:12:32 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 0/2] Fix line over 80 characters warnings
Date: Mon, 14 Oct 2019 20:12:11 -0700
Message-Id: <cover.1571108943.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset addresses "line over 80 characters" warnings from
checkpatch.

The patches were split mainly for ease of review, however
 - Patch 1 fixes mainly function calls exceeding the 80 character limit
 - Patch 2 fixes block comments and variables over the limit

Jamal Shareef (2):
  staging: sm750fb: Fix lines over 80 characters
  staging: sm750fb: Fix comments and assignments over 80 chars

 drivers/staging/sm750fb/ddk750_display.c |  4 +-
 drivers/staging/sm750fb/ddk750_mode.c    |  5 +-
 drivers/staging/sm750fb/ddk750_sii164.c  | 28 ++++++----
 drivers/staging/sm750fb/ddk750_sii164.h  | 11 ++--
 drivers/staging/sm750fb/sm750.c          | 22 +++++---
 drivers/staging/sm750fb/sm750_accel.c    | 69 ++++++++++++++++++------
 drivers/staging/sm750fb/sm750_accel.h    | 51 ++++++++++++++----
 7 files changed, 139 insertions(+), 51 deletions(-)

-- 
2.17.1


