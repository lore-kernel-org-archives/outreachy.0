X-GM-THRID: 6754760383787958272
X-Received: by 2002:adf:8123:: with SMTP id 32mr16819689wrm.300.1572715208737;
        Sat, 02 Nov 2019 10:20:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f61a:: with SMTP id w26ls12187722wmc.5.canary-gmail;
 Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz9c1aT3id92oy1/HTlyAXA5TOXW7n3q1CkGFbtNAWMADFEg2E1TROlhZ2iVOGU1/3DXAye
X-Received: by 2002:a7b:c30c:: with SMTP id k12mr16045599wmj.89.1572715207719;
        Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572715207; cv=none;
        d=google.com; s=arc-20160816;
        b=01Ck42bYhSwSt3ZvFM+79+LCitW6FJcCRzaQ4qUPPYIwbQOTZV9gbI4f68xl2Dw7Ni
         SsQemcal4XqaWD0H/Pkp4twgZ0vwIMR+XB2BLCyaL7QYgLYVnsUuRany+0OSCoiQNjph
         RVuZ23ai63XhYGkwUUiJA9zh25LHfX1L3f0/L502+VTUR87RJhLeHpckHPipDBFJWQwW
         hwggIm77dwYHfJ4lMtWmdz8hhQCnfXnOh/HgDoUxdeJxTqsboGl6pz0jUhkABZjLvN+/
         Za8tYKPlhseviJzlCCyyiaF6dMGe3l78bIl18Z50wjPsZnQttrfPrujoJHz+iSIn5tsS
         gkIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=a/b3fc4c3RAaKrqk6PL/aqWDzh1P1rbcgTiJrJQViyA=;
        b=kCqAxMNn+Ghd72xTnSJPDlTDRdhYveXR2W2IU/mTKKqBsjYJ0DlqPmn/F43FnpH4uH
         KC3DGzp0XdY9A7kGi9OpXx2RPe/6k8o/NTdu5pVOYBh5Ipvy9nJud47cQxNL92KkyCut
         vwcGAPnvU/z/PTJvZuFhmw7SMzd+Wkr3+aAP4V1ajc5ddYqBapX/lAf3WrnkM+pDdntX
         x8VcCQ4f8wsJZgufkqWk17Ro/3Zw4qZTvrBAJ48U0HFNbPpuhew6AYoVfkJw8hdirAFe
         6S5aBn90v43Ir+l7OWzNlSp/m6IqN1cBqPhPpdPSW2xOMJ8R977QY9x5d6SF3szEkhVZ
         NZHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0tofAC2;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q3si671611wrp.5.2019.11.02.10.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0tofAC2;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id p4so12664386wrm.8
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a/b3fc4c3RAaKrqk6PL/aqWDzh1P1rbcgTiJrJQViyA=;
        b=T0tofAC2S73978LwM7RE4kKbWO6vJgyd8hXbBqRFqu7Kfj0lO00vcjY+l0AwVi0px6
         /sohck3CxLCjyu+xyey7BCMCogVpPMmsSUfnUqjmUMHfaPfcb0gganTf5P6N+Mhuw1mp
         VEYEUspGFhYjEwHf0NPcqGSJRWw6fMUTalmdNd1thCie5SWr/J54wSdv1CLASXLUfJkc
         epao9vAgB5vvFfohVOVDTf3rTofl1GwWYtxi+YgBzbCL4xiuNKa3cfFbqxpF//ELMTjB
         Qx2mEVbsMnwM8OQirHiAmw0fIsMVgIwHG+PpXxbOKDiYHdYcVd2I8vzN04k6WwLK8rE6
         AY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a/b3fc4c3RAaKrqk6PL/aqWDzh1P1rbcgTiJrJQViyA=;
        b=VuCRfPb+S/WqyC57pBKccLGMMquefAvQnmzVvBG1uIYoVsaQaY+7+bWR1rrNsFny23
         Gu5ZYrE4T1FE/0QrNXOSceyPnb5aZz0fPQWDNbigB28nrE1W/f0A/QttZ3J8uPoZtrbM
         o0uNwCH4m5Sxt9jt3Ez6BJc6VLhE8Jas4jd05KyaToKEKafRRL7tCxEhJHqyyM///wVZ
         M6kiS4WLJGiS1lg/svm1wzMSjHpGfJqTG8hhgH2WkpN0+/SrcZ+j87fVUn4e1uLFbXTx
         v+qdaLnYsaOxO5KnGg3qGEcvJlnAcLHUKp5ELN3WjFLLK84J5hMXMrxIyRYL15vNht/U
         RAyA==
X-Gm-Message-State: APjAAAXEBoyeFhy0lVtBOVUl+FYKE70XQkopBnuSGfGxFYSNYywN93Qw
	qMe9uTsUdrINriGuNynRG1cOAgJ9Ugi/
X-Received: by 2002:adf:e68d:: with SMTP id r13mr1859950wrm.199.1572715207152;
        Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id r3sm23504042wre.29.2019.11.02.10.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 10:20:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 2/2] staging: wfx: replace integer assignment to bool value
Date: Sat,  2 Nov 2019 17:19:50 +0000
Message-Id: <20191102171950.24950-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191102171950.24950-1-jbi.octave@gmail.com>
References: <20191102171950.24950-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace integer assignment to bool value.
Recommended by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
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
2.21.0


