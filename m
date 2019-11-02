X-GM-THRID: 6754510207440650240
X-Received: by 2002:adf:f685:: with SMTP id v5mr2165989wrp.246.1572656959594;
        Fri, 01 Nov 2019 18:09:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls10661568wmb.3.gmail; Fri, 01
 Nov 2019 18:09:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxpkpkJQ8lAHi8o4aHrtkMcpizdgzK+EmVnygdsSt10gicDVs+lndbnIKqjNzpeslL/j3GS
X-Received: by 2002:a1c:6405:: with SMTP id y5mr13601223wmb.175.1572656958571;
        Fri, 01 Nov 2019 18:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572656958; cv=none;
        d=google.com; s=arc-20160816;
        b=UVM+ufJW2p81XhD9cYuOZyvGUVlTa/Rm/OJsB14ESsXB5sBuCs7+/+48svDNjfF0Jy
         /GwQ16Ir40/s9z9v/t10hd5TJmmHoOIZvgmh+FKltX2DPBNE9vH+713+v46xI5QNGh0A
         CjbCnIZBLSl8cS02SM0U5nG/6M7mZAen689Zjqy1w6ZPmq7uyIGfvNF6bIgu8bdnxhjz
         wTwa9Ij1ImVnz5DpwhL5C/YRZxmaKj0FbIjpksTxcEyazeMeerPQDbh9CtjQAcaNL2XF
         4902PHwegYjV+SSK3Y4o686gThnsiZ9eMCCGudTobzAFbwdwArLsKPorkTNLyXzOhJB5
         NpkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zphYPhKZY9CyIEt2ijL99yxiqx+qpNcFu2BCzqTGVUM=;
        b=hVZS9ox9S6uVevWXyxNUJyH6zoticBc7Tb6iqgQ+jF6rAdbtd/zK0shaASJEM60ghg
         /NDwsdVmGL56yWdx716EhT4yDge0o0aMFufp7QkBLKc1jX1CmnymdYgogb0lkt8ks568
         T222i2iphptbi0+M9mCIzXf6tzw/la2wplYjO2gWnNrw4QrUyJZpQd8pO3XFXqLJ72EA
         PjK1zr8+JWUzUnj2MLC1NnvuL95IWpm0ak1b8UvAjw9IB8SkvU5TZjL48OnkRnMhbo9f
         WYQz40FMBchOKwdxVc1grie0Otnhts1aeTC+k1LQOQAG2noIO40YWaYJ+jiqhaI+Uv92
         uNdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dXh4/M5A";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s15si472618wme.2.2019.11.01.18.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dXh4/M5A";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id o28so11201940wro.7
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zphYPhKZY9CyIEt2ijL99yxiqx+qpNcFu2BCzqTGVUM=;
        b=dXh4/M5ApPgqPvyX3K6B0hS54l4jokPBDVa22MuVzxM0K7DRP1hNHKjXNV/kuf12il
         a2Kg489uWTxfNDO6xmOhu826uWIT6SRgZBl6Y/MyoXNCoDm4OEV58EMKE/k90BTA2328
         7CTkEFvQboIubjV+UmPxII7up4p/sBBPpCFmme2sAl1irduShjrrKEkbnzVZpsr7voXe
         aSrlD2Fg6leFwfMksJBwTaYKnOOcqVBFCkwE8I6fAYZAxVxgtp9w96lYAq0OlfjdMcyl
         Mv2+al2R/dv2NcX4QcQOjqwA1TtCluX6cKEJQCikYAXHJ092EKRrRAxF1vb0I0NtgB8K
         cWCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zphYPhKZY9CyIEt2ijL99yxiqx+qpNcFu2BCzqTGVUM=;
        b=pc1Yb0Wn1ZzUqoMmVaBpgmjVj+/0zUGRYK8SbJ06bJ/Wz/Kyo6NaAoCRt46XKZ9wUo
         Rp7etfDyioMA0n+SCRn3U9DvK2DRZWqFsYtY9FIiq5qBg96S/KzRRkqV0Hjg3fQLy9AE
         c/rdSEhyK9JBtkjTI7qXrYyeuh0ZNjEhTermHLTB2yB846i4RZu+XFjA9DxON0MMUNDc
         RUcY1g9/6Y5ul0s2YxQ1C68/qzujc2msmz5S9RamYpSuc4pZMgOGZswVOR6ni4rQS4r/
         j8CeGQJtY1VRtfDtAccqm+hDgNuGglaD92PiAQPbtktXeodi84o9zlPlUI0Dz6D3KhKI
         znwA==
X-Gm-Message-State: APjAAAVWj2+pvIAi1rCktAE09W+/f+FiqX5Ub2kTGahaVi9U4bTeC4fC
	+nk4XZp77IPhwnr2egOSTNPlPo5Io8xI
X-Received: by 2002:adf:e506:: with SMTP id j6mr1428653wrm.19.1572656957926;
        Fri, 01 Nov 2019 18:09:17 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id m9sm9354249wro.66.2019.11.01.18.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:09:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: wfx: fix warning of assignment of 0/1 to bool variable
Date: Sat,  2 Nov 2019 01:09:08 +0000
Message-Id: <20191102010908.30269-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of assignment of 0/1 to bool variable.
Issue reported by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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


