X-GM-THRID: 6668981360875536384
X-Received: by 2002:a81:994d:: with SMTP id q74mr986484ywg.18.1552836597502;
        Sun, 17 Mar 2019 08:29:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c6:: with SMTP id 189ls766977ybz.3.gmail; Sun, 17 Mar
 2019 08:29:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyv5Is0cNuc5rYOp8w8eSZaF0MuhIhoQ/cHO4ffU1I2ZZc+nBn8p1iI+g8zkaEW5IsBr/r2
X-Received: by 2002:a25:7485:: with SMTP id p127mr3285979ybc.17.1552836596630;
        Sun, 17 Mar 2019 08:29:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552836596; cv=none;
        d=google.com; s=arc-20160816;
        b=0pd28kaM6fShdVZAqfSqfiT/0tmGR6d87EcGJJdEHvTnoWDWcXiqRE+IJ811rD/IBD
         M1D1G1QxzbGv4xeM6/ffEi8zoaByBhCRbsqsW+NH22sxDsTFdR5BGUv4K/i/ATKPfAo1
         2pwVoSD4DUSoM6qwcuPOWAvQUx4CakOUHtrhQZo4HiP7LqDS6DQ2pCOcEMTNCZmzsQId
         Vd4W7MsYrcZMytuZ92fzpyDMnDKEPbiy3CIr8A68M5hR6lAL0a/x+iofC/yXAe6e0LvC
         x+3B5x3Ra7wFELhTGwTw12CLm9M/U6OTxvyl58Bccy6ezfK28nSVKypGKBNJN4Cuk73u
         vp5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7DYMahxIQGfMbFKuKnJQVMAcdGvYlU2bgAJUX2q/0yc=;
        b=Ed2LtDfu8/1aEyq1KeVPC7xaq24fTVuG64wzyO6MqxsS5OWcFdBjoA4qkIv5iujVcw
         AbmIA6XTa4ccSpw+OHvLfuXKTDBj7iRaG8xiKxCS89rOPfKXW3WxDgBxSPj9LwdeW7qb
         MVlQZ3OW0ZnxvlNhQYXULwvGG4b576v23JinO9xKzhtQUEZQoxtgcdWq3Hx1LMupOfpo
         GsjhgghYSN9q+pfL+qS4NuAOBYnS+M9yI/abCI/5fvIpZZA7iEY/+sqwwzolbghloarG
         3/dKbot+s2ZotAnmVSCrM/an49jymzWkznRkctBtBnDNhjbaJki7kPpcGMIxO01sMF8I
         oqZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wuf9KoYJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 62si488500ybf.2.2019.03.17.08.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wuf9KoYJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c207so546079pfc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 08:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7DYMahxIQGfMbFKuKnJQVMAcdGvYlU2bgAJUX2q/0yc=;
        b=Wuf9KoYJQvlWrvEjL0DWrQaLs71O1KJZVwXQFh7RlZBQQM/51BSdFW9RA+hv6xrca8
         Jr9XuZZPJ8F0wPMwx9kUmlvK8EHdKUtunEu2TKsmpKFXL8ZT5sRvhIMfwUobQt0B6nvn
         QEc4jkYgjWw4N6g/0BiYD3Qm7b5l05TuipNP1g4GEDEu37wY9d0TlDoZxT0ye8IQG/cp
         7KNyHK6c/Bk3V4ONTlGlVLziwZC0nxze4AVy/N9hqHQbbEUAFzaGEItpgkySHapFKKbC
         iEdtDiGVWYHktASwLoGkts3Cjhkz3vTNrEb6R2jnkOmsb1+xEbpnQDx/ifDi7RJkc3rh
         Z0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7DYMahxIQGfMbFKuKnJQVMAcdGvYlU2bgAJUX2q/0yc=;
        b=e8lIZZjKvwlQPk7EAoFbUf/fU9zsNb+8XAwWo+ITLnfaWUadWGQGRj/f0JT2E9Pamp
         7ceQ+a8EVYcWpN0hGwi8pks2MLJzob4waFNO3n0CLlvnHVjq35PAXAN09aXxwwLuSsWx
         D5YivtNZ5pk/rMUEthe7T7PTWBgf/zZMbSyBQX9ESks/JzVexsUi+zoboiOkb9zLSTAr
         63uvRaC6gj+x27h1MCeL2PsePeY8+ZVvKzrN7jUlNuLFXWEmFy443PYwb2N99VDErlwe
         e0J1K3nEHWjAwluu1Bq5QkN7IhErTpjmUTc3Hnz1Cx6Xs/3cpXZG3ebzPYBhCJwQ2/VX
         grvQ==
X-Gm-Message-State: APjAAAVVsGpER/z8liB/wb9htu9D3K+4XZ69Q+ro//QKHHcgraYVtjEx
	MPbvRHEQ6wcwIw2e7CRNpBwCihL1
X-Received: by 2002:aa7:85cc:: with SMTP id z12mr529528pfn.142.1552836595847;
        Sun, 17 Mar 2019 08:29:55 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:24bf:4cf8:99c9:eab4])
        by smtp.googlemail.com with ESMTPSA id i25sm8110615pfd.52.2019.03.17.08.29.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:29:55 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 1/3] Staging: rtl8188eu: core: rtw_recv.c: Fix a tab indent issue
Date: Sun, 17 Mar 2019 20:59:38 +0530
Message-Id: <20190317152938.16429-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317152736.16374-1-sanjana99reddy99@gmail.com>
References: <20190317152736.16374-1-sanjana99reddy99@gmail.com>

Fix a tab indent issue which removed warnings after compilation using
checkpatch.pl.

[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v5:
Fix the patch sequence number in [PATCH v4 1/3]

Changes in v4:
Fix the patch version number in [PATCH v3 1/3]

Changes in v3: 
Change the log message from the [PATCH v2 1/3] 

Changes in v2: 
Remove "From" line from the [PATCH 1/3] 
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..0d04057e6cf6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };
 
 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


