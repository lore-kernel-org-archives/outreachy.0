X-GM-THRID: 6675276130832875520
X-Received: by 2002:ac8:19f0:: with SMTP id s45mr8983778qtk.15.1554214666795;
        Tue, 02 Apr 2019 07:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a949:: with SMTP id s70ls5732501qke.2.gmail; Tue, 02 Apr
 2019 07:17:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyf8kj9Hh9/rREsckL6135xQmoscXOSwB4O6YrxGB/QSldAURKCSPElusK3dgX4F/W+GBwL
X-Received: by 2002:a37:4e4b:: with SMTP id c72mr7958716qkb.57.1554214666087;
        Tue, 02 Apr 2019 07:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554214666; cv=none;
        d=google.com; s=arc-20160816;
        b=uJWxPuQxSrSeewslQKVEst72Oh+i0eIymML8pjL5qZJfpcfy7KXFq2W/XeLl2CNe/M
         Rs0IBF3rioOn5QkIpW/AgVZjAm7x7fh+4p/j9sahqeK/YMB6FXpuMvSecVBv27bt+jqC
         LShdarvC7MTKWWV40Z2wVR6EVyxOahvHLh6Wz0PIdKgEFuJnGy9WiZqqyGsT8W2vryP/
         /WCdlWKpFDF0Of/6N/n0b/zEo4PvAlYDMgvv3N0eBibEcOd/PLhcIKeovAMmg06G8L3o
         z/KfTN+YH6gq4KgtHr0BRE1bZLniAWRudpN4uuy16JAWUiMa/vQ+7eUozvxabjsUrb7f
         JVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OVVC3QiwWLL3hzLEG9zMcZsLZT9rQr99nV2S6pZrhc4=;
        b=xcyBwpqdKBL5da8RC/bCvXi6oIa9MyOhOjt5Fmf1Ia90hnmzJ105WaJ3LA5SshJiUD
         b/jLCIWCKkDIrEalhIesAaMr/hBodtyrZ5g1lPwwTUfQvsMNHI1i8Q3Er+KK59wOKsUb
         BEQ2iuelu2ZRRKy5Xh/Hgb/3uNa4YM37FKfV5j9pSUW4DGBec2HFbGu9HV+K/SoJU9Tx
         9x6M5zZ6RST29cBcjPMheVd6s9W4xOCVXq/wXDofOqemph7Nnk2p16a5Pv/+3wzdf5aL
         QXpQBCIMShj24G/9lJLKG0tU0C1NjBFuCZxLF2tD5duB0Hhcz9pNY5QIcRj7REQczuH1
         uIKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pqpuAArU;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h186si805856qkc.1.2019.04.02.07.17.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pqpuAArU;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c8so6450974pfd.10
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OVVC3QiwWLL3hzLEG9zMcZsLZT9rQr99nV2S6pZrhc4=;
        b=pqpuAArUj/Pb/0YMTegxOB5JwzVSEUg+KfmnkyPuf2hvt6ZvXtfyBhhkkOUd3kK+Ui
         3Zm71Pqkie+JDWsFP3YcLszTwOfsAujowiEfUTc4vf7aDzAwjjO+MIB4WXFCDUZ2gSY8
         2iMPoy9+gI4hQBbme/DsIydrWHOvuS4Oa8Gf/jOfBtNgbKxxSjT5AiZNwoRkkWzECySm
         TJExPCgPAYybQIz8h/0dEKxpMdgsVFBGBV9FSyoMdwdCeC0zG/iPz90ZcVYfgwSn6PJE
         roMnovTC8rNWTjldM8EDOm1E78PIpupKd32kppVofVOw9iz+8UX4RfxL/C3hR9M4OG58
         Csgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OVVC3QiwWLL3hzLEG9zMcZsLZT9rQr99nV2S6pZrhc4=;
        b=oG5PejGcUw0s8mTlpNB9MuIbz4UcO1536vCylxB4N3DofYE5nX1H81EQXcisdCfMXv
         5R1oDnBfHcr7SCKIFmV/C0uhLkjsSgxna1UKLbNilW1YIbw30vbil3G3i2VzbqXEbHNF
         j5s/UPGryKk9c33CUTWLpqvQQzSLVneZNlCx2tHjQwm79YuZgUryGY6kpjlt4NQwW1L5
         6X8ag+ftHKiJWZJ2nQFKzXJbklOkdXN1nrv2qIO5P74/PKDiDs8qIhMS4+cKxSSgn2J/
         +Yw6LzcPzC6Aw9mZNU2VzeeV990HuL/KxgyuI/vD45UxN/hm7z8s7Rp5CFIYKbvhOM6L
         uQRg==
X-Gm-Message-State: APjAAAXV3QaKZn6PYIQL/S4Q/qxeNMsCzNIhZjpuB4RQBOdy2hP5xdUO
	IZyEVz1xAeXFXkoS5Y01+DzuRxU2
X-Received: by 2002:a65:5286:: with SMTP id y6mr22692538pgp.79.1554214664866;
        Tue, 02 Apr 2019 07:17:44 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id h65sm35764281pfd.108.2019.04.02.07.17.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:17:43 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 0/2] staging: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:47:27 +0530
Message-Id: <cover.1554214359.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Changes in v2:
        -Remove type cast.

Changes in v3:
	-Align comments properly.

Payal Kshirsagar (2):
  staging: rtl8723bs: core: Replace bit shifting with BIT macro
  staging: rtlwifi: base.c: Replace bit shifting with BIT macro

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtlwifi/base.c                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.7.4


