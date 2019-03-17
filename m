X-GM-THRID: 6668974051336126464
X-Received: by 2002:a25:949:: with SMTP id u9mr5496231ybm.8.1552782765362;
        Sat, 16 Mar 2019 17:32:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls2724139yba.2.gmail; Sat, 16 Mar
 2019 17:32:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygQzTDpSy0zHZptdk+JBfwU0cPPWiuzLsljTLxgUBev1/vGKI6lu5FrHqbeB7n+7NEvrzy
X-Received: by 2002:a25:c41:: with SMTP id 62mr6196215ybm.52.1552782764694;
        Sat, 16 Mar 2019 17:32:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782764; cv=none;
        d=google.com; s=arc-20160816;
        b=p952Hjg+NTQKNKsqbzwnXW5ia1QmC/AFu35CwI9LBX61los99+yULtnDqBCIZ3V4U7
         Tulabit9IWQuWa6dQ2engBPqu0hFReejKH3z00MGJX5t6ISeq9f2wH+guDz30ZVY83LX
         WpNYoQeLMKmOIc0zLjehlzb2hIwNkNAT3X4tR57+Ry6/ZPpNXKkgn3Fx0n8O16ds5w0q
         GQlAqIV+/X5w+bhiYHGQIOlb0S25FD/IJHWxB1MtONW28hoRGIR6jvWSN5VHp6WdYFKY
         YC3BQjrbNfiJIWrZvVGQdcTcxRhutB7Ip1UZ7AfxetJMNgAKCe1zfQGMpv4BZaGv9puI
         vbpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=znWRGVuy/xP8/zfS/YqUPjqVh6O8Bsz5a+tGpcddWuE=;
        b=M6UCeX7nrDiEDZhCDyZZ9hHQ+0egQVYWDQkF5Bpaikte+4rzXl9pwPKQSKYhoB/9Jt
         BxxaOEfirD1QcOmVjAUMkokVuMTAWayYBW9bheiHHiN7gdx094ZgeIn1F/A5dwAC3Ggc
         mMqpjOcZ0ZOYcd4JoUTQUpxrUyDJYpyhmHofd79Dzz15i2Vc3PTJOCcCjpzidVdzCTYI
         /E8K/RpKRMj0t4BZTHuui76q75AKE7reP+imC5F8D0dSlZ51G2UiMwBhfW7++tmzpVKc
         J5YliiDqRPNAcKOLAqafFLbYuM/fqwELNo0aAwZ2i2eymtsQo1VhTxbl2oWnoT1wyECo
         fKbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9l6lyKg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com. [2607:f8b0:4864:20::236])
        by gmr-mx.google.com with ESMTPS id r128si396127ywd.0.2019.03.16.17.32.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) client-ip=2607:f8b0:4864:20::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9l6lyKg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x236.google.com with SMTP id j132so7288893oib.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=znWRGVuy/xP8/zfS/YqUPjqVh6O8Bsz5a+tGpcddWuE=;
        b=N9l6lyKgacJAqiL656JIKNhERzzTF1PASFQ7sfeNe/tC1CEw1eM6Rok84ueh2JlDao
         QdFjxtbHbHgqlRUNMSDqG+nUO+Giyq+VlHpM8wwMudLngy/kvL/He2zcK928qCp4JTpg
         M8TgMq+e7+cIXdmExRS/tIBPoRqXcdpiNY0hhjVrRUaqEFiDe3Feo9KxaUnwz1C+cNCK
         MM1lnTBdYB91ZPU7gaRq+x+WQETGVjdVOYQjWuI8Nvwb3W79pC48Ac2rCzGXGEEKMUwC
         oMz5LkBHKnD/bmpujYlTfkvEMdUck949MjZp+1bCBDhkwp2L3sEOxeIXgOWVaMg8P7g+
         bigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=znWRGVuy/xP8/zfS/YqUPjqVh6O8Bsz5a+tGpcddWuE=;
        b=AlWnYl12gmZBAiMeRSMgpkm9wiP7t9gP7h6PFcYBprwN8kFvpMd85eptIOyCbn5zHr
         cSVfZ6dSijWe/2d1zYPiwykhN3ZzpkDUHpMUo9fiMC6UhtwJ3oGDkHQquWdYwB3XJqZX
         fEvMQxPiurxXlU56yz6VSWxOjQ4/PEN2ckYtzVdekqDDH393GCMaRwCrBGqczz/1a4iu
         7dJPcb0v7hc4tlng4ymg6aYhYNbntuHmQ+ozJ3MS+lLN2YIiCNSYnkVip+B7SldBduPI
         coP1VIUI8kukxhWMLYBF6bYa8eQPFSoZAqECDdXPN8SkdtxsjfHGVvUKfMTtbDX6tuYt
         t7VA==
X-Gm-Message-State: APjAAAXiDIU4MFpv0BpKIYRI15cyuDpKDJsHtf7b3EOkngEGoQXkwM7z
	TAa6bi9AoVtSvAdJDG68mepxnb00
X-Received: by 2002:aca:7592:: with SMTP id q140mr5917851oic.152.1552782764242;
        Sat, 16 Mar 2019 17:32:44 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id l18sm2321072otp.74.2019.03.16.17.32.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:43 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 6/7] Staging: rtl8723bs: Remove extern and change return type
Date: Sat, 16 Mar 2019 19:32:23 -0500
Message-Id: <9e0b79cfee9a1bb0feba12741bfed92170d49af3.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

- Remove externs and change return types in function declarations, to
compensate change made in function definitions.
- Remove space after functions and before ( in function declarations.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 299b55538788..96d71b70f476 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -129,10 +129,10 @@ extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
 void rtw_stop_cmd_thread(struct adapter *adapter);
 int rtw_cmd_thread(void *context);
 
-extern u32 rtw_init_cmd_priv (struct cmd_priv *pcmdpriv);
+int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv);
 extern void rtw_free_cmd_priv (struct cmd_priv *pcmdpriv);
 
-extern u32 rtw_init_evt_priv (struct evt_priv *pevtpriv);
+int rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void rtw_free_evt_priv (struct evt_priv *pevtpriv);
 extern void rtw_evt_notify_isr(struct evt_priv *pevtpriv);
 
-- 
2.17.1


