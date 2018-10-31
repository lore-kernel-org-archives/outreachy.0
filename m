X-GM-THRID: 6618414504788099072
X-Received: by 2002:a24:4781:: with SMTP id t123-v6mr1090015itb.31.1540969709451;
        Wed, 31 Oct 2018 00:08:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b007:: with SMTP id z7-v6ls4058011ioe.6.gmail; Wed, 31
 Oct 2018 00:08:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fB+dtz2rVVJuRgOmgmfPsLwhdd635V7pLXjJemmDYvkhumDH6gWGnWYtaZVLHqzNuOzqSA
X-Received: by 2002:a5e:d509:: with SMTP id e9-v6mr1233348iom.15.1540969708387;
        Wed, 31 Oct 2018 00:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540969708; cv=none;
        d=google.com; s=arc-20160816;
        b=cvDGXXKnPtvsvXt8LeQrGe5EzgFuyVyEKTzUpy3CtEv3Yr+eMIWrSEQE3o5Flp1MpV
         0wfBTRj7PAAISdxGYtBgfyWJ+H6fJ5cT6tqLCeJzI7NaAdm3lr+Iz3I7bO7MrTfc3Gkm
         4GgJYU8QmKa6Q0Ywls4VxNwbMTb0CH0zX8NhQjH+I9WumX3aUxfUhQdxvZy3qd8C1sQS
         ssKhfczb/aAE06qkzVMg3+w55UPJRx5K6W/dr2BEes1eqaokSo+x2CMv4qNh8zAOokwr
         vXMNsKkgAiLMGH/7k2ulRgBFFZ1/uXCkaHDKb4Tm5gjmnkX6rtueuOXE5uTEIvuosAOo
         ps8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=xxWxMIzc6UcrjQF9V3YbwTDk2l5LaLrg4cgyMpcxWV8=;
        b=GwZnfBOr4J6LTMhAUrHh6MOgdg+c4nRuzXULcGN394pA44ES0/KH2c4YnrJtJWobkm
         FbO3+7bamxJHEZkRpQBCiuX9hQN33OdMZbX2l/gF6Znzhbpdh9h+0QEMbhXf0/S/enug
         DcSwPY69oQxvb1hXnS5V7CoZ1XxFkgf1nZ+BmpNsnwpLOmVAmaJ4AUIUwUiUpMmjm9j8
         WHG4xNeN/x9RMUOrv2rfumQhNb6l+Uxwn/v1rbotnlkqSKqc1G8sIZ6bukI99IMm0/vZ
         UTXO/MznQy7uFB8gWeqMKpdYHICb/q/PyUsMD/Ak7kOtY+EonJW1USjqSkYKA8tM/0RR
         gqYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWZp8GrK;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x12a.google.com (mail-it1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id m5-v6si363522iok.3.2018.10.31.00.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 00:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWZp8GrK;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12a.google.com with SMTP id p11-v6so676846itf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 00:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xxWxMIzc6UcrjQF9V3YbwTDk2l5LaLrg4cgyMpcxWV8=;
        b=CWZp8GrKAFxGLrKl/tkd+YtgPmIUu33U75rjGx7eXPlGEvC9GFtErq95Fdtg/UImU2
         ZMiE+7jGXcJSR18pg40WS8ypNLwgdFINlR7h8aUqnMCK8kbdediiHN0ZXCZ9+bNuLQRM
         EQJ5l1KabEzmnwJjEzzTavI9zOWodGtTYqIhiUOjlzj6oRUa6bMKA3gMtKBI5BKinXoI
         cQuQ4DhQO5dfxhvlaP1BPsPlXHCCAqh9/SQ4KN6XdE+4mUtT7qfDnAiFV+XDwHz9c1fM
         CAKwy9BDXTlRA5c5pom1N46ajlmjrnbG4GMjLq9fb9pl7Z9hqi+Q6jXCumcmTatYmiIV
         OZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xxWxMIzc6UcrjQF9V3YbwTDk2l5LaLrg4cgyMpcxWV8=;
        b=dc5WX05aEFrVGWvfLh+tFq1qo4suzBtVFfZp4wYmMof3SbXo+MCPLXBuFy9sLfP23x
         aDPq5v1U+Avrrh3/o5TzQSaRMADrv/BwoyA+IbWg4IY7dTp9lJ5/Y+iXg66Z7gKsJTxK
         Ypicjthqi5QlvS7C9N1aTjE8bR57qqBrhp8f0v07xnJqSHCe7r6oDyB4YQyBAyMZE/bj
         ynX36sbjnOrslvBaTrDMRBfifVwBoYsbQAOSRs6A56Bk6WvRaPFNg2EWh7s/xejWE9xX
         5F6CiF+1XqzItqID5EZ5DySyHdzxmf9bUvQsjKfksXZbv998aKocHlBj3GcwHz/B5JOU
         2eDg==
X-Gm-Message-State: AGRZ1gLWk2/Bt0pBIL7vgpO2OAC2xGEcsc/LalZNW4AFxQ9csMV8xYJd
	JijxkuNZH32PyaIQfTgmkdalAHYSYK0=
X-Received: by 2002:a05:660c:143:: with SMTP id r3mr1189299itk.74.1540969707880;
        Wed, 31 Oct 2018 00:08:27 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 8-v6sm4162435iog.41.2018.10.31.00.08.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 00:08:27 -0700 (PDT)
Date: Wed, 31 Oct 2018 00:08:25 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtlwifi: Remove unnecessary conditions and
 other cleanup
Message-ID: <cover.1540968891.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove conditions with no effect. Issues found by Coccinelle's semantic
patch results for cond_no_effect.cocci. Eliminate checkpatch result, a
line should not end with a parenthesis. Edit statements to keep
expressions on one line--one from Julia's feedback.

Maya Nakamura (2):
  staging: rtlwifi: Remove unnecessary conditions
  staging: rtlwifi: Keep expressions on one line

 drivers/staging/rtlwifi/phydm/phydm_debug.c   | 35 +++++++------------
 drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++---
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  6 ++--
 drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +---
 4 files changed, 17 insertions(+), 40 deletions(-)

-- 
2.17.1


