X-GM-THRID: 6751257049994100736
X-Received: by 2002:a92:d784:: with SMTP id d4mr49183559iln.1.1571949332463;
        Thu, 24 Oct 2019 13:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:b104:: with SMTP id t4ls1309102ilh.1.gmail; Thu, 24 Oct
 2019 13:35:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6h1u8IoGxBHz+ysCgP4BRT5jAN6DBUUEIwCcqcLRZZMfK1KdsAN1FQu0iaWorhbhJdhgn
X-Received: by 2002:a92:d0a:: with SMTP id 10mr45683204iln.129.1571949330927;
        Thu, 24 Oct 2019 13:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571949330; cv=none;
        d=google.com; s=arc-20160816;
        b=0PM4vnlp3CgS9MJHQlANKJiipdjxmgAdO2Z06xu/NCcMmtQbx1MveMas/Biaqf4dxq
         qMoEeOHUeRuVEbUbGpiB0ndWeEx7TunVziGh+2H2ZMLKV+OFN/aMO3F3e2OZsEUL/stg
         UpIdCAa7kk3tCQPfYYsJhBJuVUoefgtyQPRAjJvryS8wcK3GqO1GdzoRtYJSM5mbSwaG
         jkd9jlceG9N8ChBmD+TX3zW4cVDzp0bS6Kpq+5gdr3CcJ8w0GHmVa1V9EHMSzEAFtJNX
         wzmnaG51g5Q9nhB4Wd0K0KhYRElvk60DDoY0rf1yFmvY5cXNKADSaho1zEDh82F3YPwl
         LHWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VOYBj3jIIo2xeNVOJVbUpzTp0fyuqghukXWQetl7Nc8=;
        b=SOCoNjyoOHFJmzsvLVjsItkYrxDKE51UW6I5f8ByWzmHzJO6YSsC/7hhYKS6+B7Esu
         ZFUy2IfvsBK+Hb5ATFtOmy0z87z7ctFibSaTcPn24ZLONafH76wBVIQ0LiNb+XsJugfp
         idERPiBcSq4VmSPbBfQj+QK4Pd9r+4zCBdMMrfO4VbtMGxxuFOAJE5v4uoJNarnenNjg
         552Es9hErIjANg/SJFZx+ktn0Q7y7nQVqPWModyQPMS9cjxsGQS/Ib69BibbZc0oHJxy
         gM+CYyCIbjv5qye1pJ3gRIOIpZnuYbI3O5OK8byt409CIR47UMq+Y0ee+1XnpZUcami6
         l3BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEghDrRd;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 75si686167ilw.3.2019.10.24.13.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEghDrRd;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id p12so10316pgn.6
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 13:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VOYBj3jIIo2xeNVOJVbUpzTp0fyuqghukXWQetl7Nc8=;
        b=UEghDrRdbtUAHSdmQiqzDDU0PIjWJIZfgyo1Wzy4XTB/G5E0FdbbPCDcyvqXfXfChF
         2kiheCzsY1L9J0X/x9/Zu5YSBTNCcqyk9if0gK8jVuA7N8hbuElVGeEm7kN22GoNyE6L
         suctlUMkrUGnzabFykiz7nCWjcLCdhE9v9dupdwtKpBBOntEW7NkBId9DBt3wJYtlOva
         obNCEDh2XN7M1x7ryVWvNHal58q3BNMmQ4vmtAdNZzoxoL65YMbq56TdMZst5hTkL5yS
         R6YIsC8+YqVoTGj17N9tjy3uXNR6zQUVPGFXAq9UDkKaJh+a6uBL9GN4/NugBEkBTSBH
         n08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VOYBj3jIIo2xeNVOJVbUpzTp0fyuqghukXWQetl7Nc8=;
        b=WrSTNi9lg6Jy/kxP0CUkaQr0yg+keiaB3n2D4Ty+Jfd4LWUPVb1oBRyBHsXo/GySdO
         Vqr+A6kxrz2yWkuXdW1pHj6th/tH2F5Y2sp3PN1MlqWVm2C3yifQ6L8hinWfzQU2f4r5
         qQM2hkYmX3nasEJNheHlcZ5okHWnmKVBLzMjppSRNTGAlV48xfv9FUHFoMp06SlaS4L5
         90USjuVEqVh/31ObiL4UiWXK1gGxyaJGZ7C3kmyr8r5gIRuJO2l0XXkFgDWmtTcj6W6I
         vDwDtvCbHnBInEwS2dRlC6ao4/SpB2zxwMczcSMymyRtf21pEULH/RFJnpF2FQHf2OJ6
         9JgA==
X-Gm-Message-State: APjAAAW1BgLvataQGCFsf8+0GnNnnYd2IPHKin4A8w4jtOATBiqWWIYA
	XUf5RASCyXEoXFi0PZlUGLM=
X-Received: by 2002:a65:6492:: with SMTP id e18mr18925950pgv.111.1571949330123;
        Thu, 24 Oct 2019 13:35:30 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id u131sm10182485pfc.11.2019.10.24.13.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:35:29 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 0/2] kpc2000_i2c cleanup
Date: Thu, 24 Oct 2019 13:35:18 -0700
Message-Id: <cover.1571948876.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch addresses checkpatch cleanup and general cleanup per the TODO

Patch 1 fixes line over 80 character warnings found by checkpatch.

Patch 2 Removes some commented out code but currently a few commented
out code remains for reference.

Changes in v2:
 Patch 1:
 - Indent code with preceeding left parenthesis.
 - Remove extra parenthesis in while statement.
 - Place related code on the same line where possible.

Jamal Shareef (2):
  staging: kpc2000: kpc_i2c: Fix lines over 80 chars
  staging: kpc2000: kpc_i2c: Remove commented code

 drivers/staging/kpc2000/kpc2000_i2c.c | 206 +++++++++++++++++---------
 1 file changed, 139 insertions(+), 67 deletions(-)

-- 
2.17.1


