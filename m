X-GM-THRID: 6674971503318007808
X-Received: by 2002:a24:455b:: with SMTP id y88mr6356554ita.14.1554137911576;
        Mon, 01 Apr 2019 09:58:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:574d:: with SMTP id u74ls32223ita.4.canary-gmail; Mon,
 01 Apr 2019 09:58:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCaYiAxGz6Qn94ajNeEmCFme30lYn+v6pXffbG0nCRjw6J1X5sXHqJH/bOnoHlCKtaxHCN
X-Received: by 2002:a24:9884:: with SMTP id n126mr6470498itd.30.1554137910335;
        Mon, 01 Apr 2019 09:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554137910; cv=none;
        d=google.com; s=arc-20160816;
        b=UYPT9T/opOwiiHRn+c8HImVUMraJf9m5sS/mjnYFN/4w3b4YwzcO6nJHbVKypMgAJn
         X9m/bWxnGrjNEYuKBQF7aBm5mXI3egspM+5H9RkN4wvfL2nNYBYL92C8MVjrHo9K6d/2
         Mq4ulv68BTlBCwlaLgRud2HFoQuOGYCDyhNdCRJ3FcRzqsaJhemBMxVNLeXxDapPfSQ3
         cuXB4cEmJi+rslPeuoyxJZ68iJpFv4O6iW6Te9r38fipRbij1SlUp9s/AG9WP/dOg3K9
         gOtQHL+8AP/a+SeLoi8ychnInijEo0ql29jV1/xvf0G5QalVUFmXLdXjTAv7bS7pq4IC
         2Bxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MMp6VRCzgrFbcJW1GuR1gI4HNNrihSuSPAjHkp6coT4=;
        b=bXu5TyI5c/TTWt4+KBaqMxPd6LKXcukuHSQtgoKEejVsT9BTxc/Dq/KUo2uxnojeda
         1Dr+4JFAamtwhDiqNEUtwDBu4c9HiWOecAfm5u9rq7bmxtzXvTvo2JGnLMKtSed9d7sM
         k64wrE39134FXeeH1/obegaqYC9tsfEHWseQBOx4dKSe9HFmuP20XHu3uS1fjkF4C+ub
         6IGkIuAfwB0pcgwsXtq89fleCLHwnPAM7fnNBNNJshSlH6AHuWAgNo7HJfhRhqKvezEB
         nZFippFh/nQozXV/Uy0ZxNFKIYm3JOEW9Rlld+oCjsn3DNh8ylJvXrNszsBOMhiMVG8B
         g1ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kO2hfvtd;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id f13si498177iok.3.2019.04.01.09.58.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 09:58:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kO2hfvtd;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22a.google.com with SMTP id y84so7856494oia.12
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 09:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MMp6VRCzgrFbcJW1GuR1gI4HNNrihSuSPAjHkp6coT4=;
        b=kO2hfvtdeJjj2vlyagCkyatjYaMHA/7AvaY9oaENFk8pMrSQwC7eCTUy8vyEVjsamg
         h+/Q/tR7kZP+i8fSC9+bTsTYrhFlKDHorsNLemSpA761Tl3mJi66WgI0dE+8h1glC3HV
         CPb0yvT1QBrcicTzI8e6yjOvx9YgxO3aLvyvznN0IWuesgJFv+uS5f1ZG+tkFn7jFlrC
         bO5LQH8GyFabqUQ2C8RV39ARgHhukXV6ehZgUHBsFHJWHJ1kYStumvpLYHU2Yafh6PSg
         DNd9zva5Muvbu+nwlptGeTLmvWbhgdkPOSxRmdte6QmpdWYi4ZONx1b2SYn5A448r8aA
         kcfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MMp6VRCzgrFbcJW1GuR1gI4HNNrihSuSPAjHkp6coT4=;
        b=scFvS7vzPhn+KhVXBn2vrN8b85OnIIpmkeX5ub/XDGEBfmaEBmBh9fWiKBW4rnXtEM
         FWCPRye8qNL6IHR4PqQr7iOuLOQzMElm5ohd2TTWte8E5+ywrWAdbp4rDsjYnp5sZWkQ
         bRFd1O5wT0gDKJahdjZyoOSlIRyIQqYib9AmE2aIYVAmQQmeQYFAE8rekoIbZCcrBij/
         SzV4UZLNUIbMlUSd0FV5yP5jmtMpZ0vEur9hTU14sq6A5pufFVGUeSFOtU1tUO5o4Eyn
         Sy2b4GgXY43zSzuhu7A8+OkjhH76z9I8pctuvuEz0s8nIw9RY2CGqgz24xZ+cZqsUeny
         wUPQ==
X-Gm-Message-State: APjAAAXE7gpq0yAOFJa5uJPTts7/vYBQNyuSIWdMhEnzLeiFyLEeKPed
	F/R1EkczhWT60Cn084L/xxQKviI6
X-Received: by 2002:aca:e8c4:: with SMTP id f187mr4407133oih.158.1554137909939;
        Mon, 01 Apr 2019 09:58:29 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id s23sm4364675otk.0.2019.04.01.09.58.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 09:58:29 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Use list_entry in ieee80211_wx_sync_scan_wq()
Date: Mon,  1 Apr 2019 11:58:27 -0500
Message-Id: <20190401165827.18731-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Use list_entry() instead of container_of() in function,
ieee80211_wx_sync_scan_wq(), as the function to return the
parent structure containing any list_head is defined to use
list_entry() as per the definition in include/linux/list.h#L348.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index 81020fbcdc20..76daec98212e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -300,7 +300,9 @@ EXPORT_SYMBOL(ieee80211_wx_set_mode);
 
 void ieee80211_wx_sync_scan_wq(struct work_struct *work)
 {
-	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, wx_sync_scan_wq);
+	struct ieee80211_device *ieee = list_entry(work,
+						   struct ieee80211_device,
+						   wx_sync_scan_wq);
 	short chan;
 	enum ht_extension_chan_offset chan_offset = 0;
 	enum ht_channel_width bandwidth = 0;
-- 
2.17.1


