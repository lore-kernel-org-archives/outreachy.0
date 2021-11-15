X-GM-THRID: 7030748849446584320
X-Received: by 2002:a05:600c:3b8f:: with SMTP id n15mr59149662wms.180.1636973779888;
        Mon, 15 Nov 2021 02:56:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e16:: with SMTP id z22ls4952705wmc.2.canary-gmail; Mon,
 15 Nov 2021 02:56:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxQ2IUkKzEJEfe/dVl9r/90plxgX/C9NA6rRTOcnlJIupgipE/nUWPjTJrTma3SZ9XHwTDv
X-Received: by 2002:a1c:98ca:: with SMTP id a193mr41739408wme.162.1636973778550;
        Mon, 15 Nov 2021 02:56:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973778; cv=none;
        d=google.com; s=arc-20160816;
        b=y5yYgj2R2ofYTZo9qjFr9VKbvicOjrUImaExL0W8+iAFFEWjukEi5ucTHi7CBk7l8Y
         Mv98lW3ZNDU0M1Sk3rtBBHf187pe9UJrjbP0konZgjuP9HI0u87HnZttfjzcv8diPW4M
         tlF8/PHH/ojy9LS7Mc1asiXW2m1x0D8DkqBZlsKsUTFeexV8d86I9A90uWDhVeG4fSPk
         z0NKaiEY9eeSV9mcvqHV4mQgKWX4fxrlEnT6kr4jvixSrhNpwp+BYkMIlK2ejtCJlShb
         ksdMD1B2PtvHhLgrVPEVGyGoZYG7AXxNtoDMiDL6QeOr7862T6AVjgQTg0Hze7LW3ufg
         KccA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZnKAulS/vIGrw+3FjdDPJBScIMVfc4pnUettjnr0PVs=;
        b=CJ8UHoYmgRY1TlrMgsdZMDl2M+XvQgfUzUhZHlDPqkJgbmhoenevGroJr1o0XhXdoP
         NsFEc+o2IBn3qflshcfDQlQRs6cX2Pi9Ke18aPvVAJEnMwNwZIOwjRNTjoLiwIhF1cgD
         53enD9TZp1PC6NGpaIRHwn4zbEfZn3e4erEhEyQCAFbdyRi5YwcvVOmq+O7Kf8ScEKev
         WbAPKmwycG8CrxgZXN3Qou6i+vCNIkYXQNhJoc/wM03ZmIwfCzqR1m9oXwaku4/cnby8
         S3153bSc4iF3ZssfuH1qAkDFZXAmOaM5cYt/hKytiM5xX+xpHbx9E/40abVDg/577OGD
         0WLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ggSYQtrT;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id c10si623195wmq.4.2021.11.15.02.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:18 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ggSYQtrT;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id az33-20020a05600c602100b00333472fef04so14675976wmb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZnKAulS/vIGrw+3FjdDPJBScIMVfc4pnUettjnr0PVs=;
        b=ggSYQtrTCDS/DratDv0dlBLFwAj9deVBsJWmMVZx6J92cEBlai4w4a/zYhbFWA2mV7
         uki7MxwwBNgiaZPFSnfikq5WhBk+c2PKjirTU2uHLU/zCBm+ZQVB+kauVivYQHIUBEDL
         PTYvpQlN7CBNt5/eJUX9auOTh45dlvEmdMzZ1nt2Mw37zVbv0N/UjrxY3ELQgLgNUYyb
         N5QMBT7cjmJq3QhJkZ1cgo7m2IqW6ByUVIx0gLa6AZ9cORiCqguX4cOYsYN68VuiYXXB
         65AriatapML1EuSHgsQoa4D0jLEai2o4Ue+vYibUy+GsC8tbRInfbjP7yMk3yMXT1Iac
         lx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZnKAulS/vIGrw+3FjdDPJBScIMVfc4pnUettjnr0PVs=;
        b=oPRY9cZCbAM2BPoo67YzUMpVPKUTduP+OwCwzV7JWMmw/PkKm79uIiOsqVqFJYbf86
         4+IgfP1eNllu8Z0vUNpj1T2qUxqz1RxAzwcUB5OqMKywl9qq7p78cuMym1NdktrFTus/
         mAG62veqO64cJSk2MjsHoPY5FlqmB2eSHEsi0qDJ000jh/AWb50gFq92W6vGDIhPicyp
         wXG/24ARwVTqUp6gyxChGmMfnndQvZ1LEycbsGx4pNz0JwrigxEj7wNJn0qwGy7R9fnE
         Qe0xMP2D3PburRDR/K+o+8ZrUFcZShBV9O7Tcifz4XT/X6k2UjPWcN22QhyUf9V2UYk6
         yXsg==
X-Gm-Message-State: AOAM532PiKNXX6DzmN59oOpLZa8kkpfh0DZwWOnFiNwU3SUucNZp15Ak
	aUEPKX2Wh/K/+gbVxcH6MMeMiUh6gkI=
X-Received: by 2002:a05:600c:22cb:: with SMTP id 11mr41309165wmg.181.1636973778280;
        Mon, 15 Nov 2021 02:56:18 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:17 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v3 0/8] staging: vt6655: Fix line wrapping in `RFvWriteWakeProgSyn`
Date: Mon, 15 Nov 2021 10:55:41 +0000
Message-Id: <cover.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set is a series of small refactorings of the function
`RFvWriteWakeProgSyn`, now renamed to `rf_write_wake_prog_syn`.
The work here allowed to shorten lines marked by checkpatch.pl as
being too long by:
  * introducing two new temporary variables (`idx` and `init_table`)
  * rewriting a conditional to switch between two modes of
    AL7320 initialization.

In addition to this, the patch set renames the function to align it with
the kernel coding style, updates the function description and removes two
unnecessary conditionals checking if the value of `init_count` is lower than
a predefined value.


Changes in v3:
  * add a patch for removing the type cast as a first change, suggested by
    Dan Carpenter <dan.carpenter@oracle.com> 
  * merge two patches (using incrementation in `idx` and cleanup) into one,
    partially implementing Dan's suggestion

Changes in v2:
  * drop "staging: vt6655: Introduce `data` temporary variable" patch, suggested
    by Julia Lawall <julia.lawall@inria.fr> 
  * amend "staging: vt6655: Rewrite conditional in AL7320 initialization" patch
    to use indexing and `init_table` temporary variable
  * add two new patches to remove unnecessary checks for init count, suggested
    by Mike Rapoport <mike.rapoport@gmail.com>:
      - "staging: vt6655: Delete bogus check for `init_count` in AL2230"
      - "staging: vt6655: Delete bogus check for `init_count` in AL7230"

Karolina Drobnik (8):
  staging: vt6655: Remove unnecessary type casts
  staging: vt6655: Introduce `idx` variable
  staging: vt6655: Use incrementation in `idx`
  staging: vt6655: Rewrite conditional in AL7320 initialization
  staging: vt6655: Rename `RFvWriteWakeProgSyn` function
  staging: vt6655: Update comment for `rf_write_wake_prog_syn`
  staging: vt6655: Delete bogus check for `init_count` in AL2230
  staging: vt6655: Delete bogus check for `init_count` in AL7230

 drivers/staging/vt6655/channel.c |  2 +-
 drivers/staging/vt6655/rf.c      | 44 +++++++++++++-------------------
 drivers/staging/vt6655/rf.h      |  2 +-
 3 files changed, 20 insertions(+), 28 deletions(-)

-- 
2.30.2


