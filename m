X-GM-THRID: 6809858298158776320
X-Received: by 2002:a05:6830:1296:: with SMTP id z22mr7834895otp.108.1585543690106;
        Sun, 29 Mar 2020 21:48:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls7079655oia.10.gmail; Sun, 29
 Mar 2020 21:48:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsgwqCeK+CtDw1wbVVCD2SHjgl2GUFB10NtVK3NBfEGZVcBfpuuBkZm1y/l3uiLSP7GTaV6
X-Received: by 2002:aca:fd0d:: with SMTP id b13mr6498826oii.179.1585543688935;
        Sun, 29 Mar 2020 21:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585543688; cv=none;
        d=google.com; s=arc-20160816;
        b=woq2O4LzYV7PSR2yGMR/33tSGDKL/HD53I4n/UCCFK2bxJ72zM/bBXYDPCvItJ8Jo4
         DX4YDBK3P3YKUsVkHinGUB0u7X8e/qoH3pHajnPuor7BPY2tsCSZFu4uPf5V+SpRjNN8
         hU5h/ortzbqYRe9nu8fVHhJ4dtH0XGt9W3QAhWJh5MDWfmfZkE84quAlk+3MoGlQPMff
         3N4lejIfxgWQZOUbcvHrEYXJmVgqf36EyVytgOtxcmMHw8SnpkBy3ygwWka0J1oiT/AQ
         r2d8h0awgyNwUMTJZW9QkBgCoa/ysmpQ2meHm2pkFu/6r+iUhPzgqno0gKZUC0ZvmaR5
         9okg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3oRQGiakgMy2WolABI0GRB86zyWgnSZ9MVKq+0AVSME=;
        b=SO1lsQX5pS1SBW7sW4orAHowfMCwIX1BqckzXJ6HVrZWx7yp7E5t5AODi4JXzKrxRp
         5QzBK2QbsQ4E7aqoI3rt0H6infSKN0ERgvwuFO3TeDgPfoDB0kbyRZlmXvW2//3fTbk/
         tsXcbE4NlkAEsFzOAV2830m8myGPbGDvudm8Ih1o68PjD+4mHNSmuthaPaSDjW2FzFXs
         phoKGRtSopyrfO9lUSeFHjfxYhqjB+juvjaLSS7O2SVV6cv/gw594pKQJICp0yTmZoQG
         77tQMvJWLk/IIFSlaRgSYIh3J+9JyrXun4nvX0kDH3trhtEH6ZwtDyeiro3LsgcX6yCp
         nXVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GR8dL1XO;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id m132si940728oig.3.2020.03.29.21.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 21:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GR8dL1XO;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id 23so8024270pfj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 21:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3oRQGiakgMy2WolABI0GRB86zyWgnSZ9MVKq+0AVSME=;
        b=GR8dL1XOsI4Yi7ElOgWAr6IAVIaO87dlPf/rH8E7hBJTzXE5mzJNDXoB6yukq6PMVf
         tb5pxkqbXp9H/SpHaxTaCO1XRTIAzX/ycogvga0662ELkQQIzXPgmMLHhbN2MNQKG1CV
         66Tvppz3KELQG4/6BL3JmbK6Rh7vzkDHnXDXAU+A2vEem0aQ046Nhk6U+FfCjdgQevwn
         KA7ITIiAWeNh/TrU2NwnSlCspuhyaid0HWSKGAkmKhfhRCdfQDDNvjDiFjOLFNtSofUn
         tgvM/qIobHWU8mcH9xV/oZsTu2ej9W6/4fpU5nbJXEUkYUUqBTlglE41fswSJvgCSZzt
         7qAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3oRQGiakgMy2WolABI0GRB86zyWgnSZ9MVKq+0AVSME=;
        b=ZkhumeSDgeCUaTi/3Dbxs5O7P6qn/49vA7Qj/s+E1BBcUQyRYiG3mObYAuNA27rdie
         kC16qlQHhEeKt5kiWea2L3VzcR3aH6mAdI/S7WCv7Ookp1D0kE28gWQ5wb70PLChNwzq
         Ujb4VNyMgOk3eLTZGd4mPitWaOFg3sRqGhbtV4VME1ZEGXoSUH5/UA68p6Yul8A8XFl3
         +o0raJJV3rI5KgjoqpsSLlwcahVMydAykLNTGEAClCVHjSUKwVtCPSeZZkwFM6lJB3Ji
         oHE0/5r7ioPkIZ42Dif5TAJ4BreDOTOQHpfk3yGyK2K3ejAVU8fwy7pEjvoRBgCY7EiG
         sYvg==
X-Gm-Message-State: ANhLgQ3oATUxhlCgN2wQNTXf+evP8QTTzFXlGnL352jEENVThUo2p+wF
	NhctdN7mLxCk0ox+hh/Nl60=
X-Received: by 2002:a63:be09:: with SMTP id l9mr11115508pgf.439.1585543688164;
        Sun, 29 Mar 2020 21:48:08 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k17sm9099460pfp.194.2020.03.29.21.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 21:48:07 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	julia.lawall@inria.fr,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 0/4] staging: vt6655: Simplify statement logic.
Date: Sun, 29 Mar 2020 21:47:58 -0700
Message-Id: <cover.1585542564.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reduce code duplication and complexity within switch case statement. The
goal is to improve the readability of the statement so that the outcome
of the statement is more clear. Checkpatch identified long lines and
other formatting issues within some nested logic. The last commit in this
patch series addresses checkpatch warnings that were not fixed by other
means within the series. Some long lines were left under the rationale
that removing them rendered the output more confusing. 

Briana Oursler (4):
  Staging: vt6655: Limit return statements.
  Staging: vt6655: Raise rate determination logic.
  Staging: vt6655: Create new variable len.
  Staging: vt6655: Format spaces.

 drivers/staging/vt6655/rxtx.c | 118 +++++++++++++++++-----------------
 1 file changed, 58 insertions(+), 60 deletions(-)

-- 
2.24.1


