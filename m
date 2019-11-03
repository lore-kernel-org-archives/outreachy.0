X-GM-THRID: 6754760383787958272
X-Received: by 2002:a19:8b54:: with SMTP id n81mr6743006lfd.114.1572804817033;
        Sun, 03 Nov 2019 10:13:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9581:: with SMTP id w1ls1544869ljh.16.gmail; Sun, 03 Nov
 2019 10:13:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqzE4CMW7aCyWE/8OVPcq0vk4Ym06XcpcK01mlh3vv0xdgI/tBahPvm0YWbnICefwRM/HGB9
X-Received: by 2002:a2e:a0ce:: with SMTP id f14mr1868643ljm.241.1572804815936;
        Sun, 03 Nov 2019 10:13:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572804815; cv=none;
        d=google.com; s=arc-20160816;
        b=0ld+01BYI1r2sS65GtW9lIwAodCkhgG0EQHxHSSaxH1Ri2IPl/+oSMfHrxWmYp6/16
         3ee8Xi/gz1s6trDUji3D2SgImLZd3yOMAyPgJP6xMHW/osAAuy9oNUlDg9bCB53IePab
         wbqOtgTu2EzQohzJRadZJqlRc80SHDX2hf+NRC3M5vHWtQY/nbHBhL62fwXo84DXmkBD
         Esb1u73G1KVDCnmS63bKNXv3sCahiOwyEsOwI/LumnVNEMYWMH7GJY8hqP23b6URRL/7
         BsicQSSTxgoO5UrwaQ8xYPQdzomYWSc2zE77qJg75duBKBB0MrAXhQblST1BHRgK4qbL
         EEJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=XjdGGTKuZcYMbi52n7ykZ1TAYYdk8upkr2Ho6GM1wSl/rAl53xdq4QR+ftzByYaBmi
         EYGBFNSJQFwLSCn58FK4IrHV9xHF/gNqEQj95BaRIGp/Tgcjbwo2JNzPfPp2pYCHB5Wd
         uWvKBV0ghrav3MqvIvi6yWsfrV0ffTqcNJ2t1YYi8lVAC/zZJrKK+bv/QPirSVbzOzIH
         oMRwusp3FqS9fqwdlUqJrfo9py+yy2v/uP4hXN/1guM1UhpK7UTJmPaACwP5fpMYYIP2
         sNxlpsctfDjS6lz3ckHEjgh3s98pSW7ACI19fZdj6KK/h4g4X2ooKX7dr6332MC3O3yf
         vQrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSaMD0w8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s4si1176265ljg.1.2019.11.03.10.13.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 10:13:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSaMD0w8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id o28so14549263wro.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 10:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=tSaMD0w8d3Drb7aIFzScIU0Ot7OHxJcVVM3ea420qLc9TXUxBFQY2OKb1DIfRFSCIe
         UCY+sQYvetFRPMQlTJdegIRZ0My1Q0dTI10M/OPnWdx+ofqWVuEo+S88Zex2xLkVwJ4C
         Mm6ZsrmiO8RulmKy+cL2XLYy5C3wwvSqqp44jDWNI4EBFeRnirmnC/fAz+JVMGyQeDYr
         7JDrHzA3URPK/1HiyisrteVB+YYm/CQLCvacP63JXun3QnhJYjk9RlC2LSn5YhP2V0Zf
         drfQCUfem3I0Zg3zQ9zW9pQv/JfyXQVJ8p6+TW7ErVw3ZoIOXgFUfBfj7Gu5Oib0Tyl5
         JIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FpoFbIZM9ifIww4YW3b4mTmE1CRomDkMPyQExokuAO4=;
        b=UnXUKz0BwTrFrs448dE6h5QVP3F9nmg8d2cRyFYB6Up7Yv5jUhW6RZmfZ8UkBu5Kpf
         Mw2k4xAkEbDwmsjRvIhNvJLxu8gC39Psv/roV8S+M4f8vsmduyzbXj8gdy9qgtl6PPWS
         sdJ/Vjksa9ZM7FDpHC2ESRXXgfHzCzjM3LJoSbvhQ7VQl+sUe8FmzxVGU3+Q//UdXKnU
         ab2YqedB+lIsiqm/QWLIBsFlwHTsw3msQ+bslGb/ADlCdjStLmenO5KebINCF3syy0RK
         364CrIcCUbgeB8PH6NF6uILpjgrJte6oyGzK7CINa/iR+MV28frUu3RoI4ceIksQg1D3
         TJww==
X-Gm-Message-State: APjAAAXOwtCdINV95sHhbuLuvJuiHS9/ZFFj4F8/6iqt2StNWaZCtxVY
	Bo3U8VM0nmQlRlI6R7buXIyp3UqINMiw
X-Received: by 2002:adf:e8c1:: with SMTP id k1mr3884855wrn.303.1572804815030;
        Sun, 03 Nov 2019 10:13:35 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id l18sm18467087wrn.48.2019.11.03.10.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 10:13:34 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 2/2] staging: wfx: replace 1 by true
Date: Sun,  3 Nov 2019 18:13:15 +0000
Message-Id: <20191103181315.26434-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191103181315.26434-1-jbi.octave@gmail.com>
References: <20191103181315.26434-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 1 by true when it is stored in a boolean variable.
Recommended by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 submits change of 1 to true with no accurate log message of what
was done reason.
v2 merges two patches for the same issue into a single one, improves on log message description: rephrase, change the term warning to recommended by coccinelle tool.
v3 gives accurate description on what was changed and reason behind:
change from fixing to replace to indicate what was done.
v4 includes logs of changes done on each version.
v5 shortens subject line to give only idea of what done.

 drivers/staging/wfx/queue.c | 2 +-
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 5d29bce65f71..71e92744fed0 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 			spin_unlock_bh(&wvif->ps_state_lock);
 
 			if (vif_more) {
-				more = 1;
+				more = true;
 				tx_allowed_mask = vif_tx_allowed_mask;
 				queue = vif_queue;
 				ret = 0;
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..ea5707ff8847 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
 			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
 			i++;
 		}
-		wvif->mcast_filter.enable = 1;
+		wvif->mcast_filter.enable = true;
 		wvif->mcast_filter.num_addresses = count;
 	}
 
-- 
2.23.0


