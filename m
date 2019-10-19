X-GM-THRID: 6749515623301120000
X-Received: by 2002:ac2:43d9:: with SMTP id u25mr9568286lfl.142.1571494073502;
        Sat, 19 Oct 2019 07:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls1067630lja.5.gmail; Sat, 19
 Oct 2019 07:07:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzjjYSluYySoVSFu6e3w9tkwoSm31uRiXTo5dyjFtIYI1CuNAeM1f6RUwqWPMLsKqdl9FO
X-Received: by 2002:a2e:9117:: with SMTP id m23mr9381070ljg.82.1571494072570;
        Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571494072; cv=none;
        d=google.com; s=arc-20160816;
        b=V9RKLBfBVfG8cjM6LoSexdKX6MEotxuRNMuMZU+Cb1868QLOzOa2sRP7AZvp1g4LWx
         UATkcC08wXMkYQMPW9sS1OTZ9OE4AWpvqXymGUkV//Px+gT6cbTYn6sy6IgQjZw1nm0h
         dQn/JtCUsJU1w5yh43DXyqfWetjtSlN3Ysy3HTqa6F2orQEOhmxI8FmLnF+jAKhwkXRp
         18ID2ouTbrpTkUX9esl0MUgKpSJVZcRsCfKM8/a8GoONWDglYttVdKFaW3EQ+MaSllDm
         e2F6batAV0JL8xGTmdVZRYY0OxVfrQ+2el617SaThPWyhwq3x8NyF9doDhRY1MXtqtAn
         6Dlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rzESKhvNCTT5RhFCFcaQxIFkB4Hb29h8Yzywkz7FpuM=;
        b=ctpuELZD6yexdIqf8XSuxpx29pk3yjc3s0DfYxU6D3Oku+BuschUqvUxs8R66TruuM
         0y9/vYRUP/4jrLS9nOYTTA+DO+rdbI+htGAc9GRs/b2wOpyMbnIacCbR1RwuF/U2Kt0y
         p/hfk2fwE/NiSfkRMBjqnaQ2BmZzOZu+W8dNPoLGICZ8sJd4Fj7AaorSm/G5+dQ+6JA/
         G7DwMrwZPanZK10Q/pyBrzhcTotwWEQMuz8htrpiwc7UGA1mcezBhOtGTMR6P4/MwS74
         W+LwbQAX7WtKz9J5eadKLZy9bPCZqKPtgrkpgjD8RaiaD3KafPD/7k7Gx5WiVH37OIUH
         vOmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZSfm+/fz";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q25si505060ljg.5.2019.10.19.07.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZSfm+/fz";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id i16so8863645wmd.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rzESKhvNCTT5RhFCFcaQxIFkB4Hb29h8Yzywkz7FpuM=;
        b=ZSfm+/fzTL4ZRtIdnUiIR1EvTUPJZO7WwqsR8jUvw3wGgIcIwQOTEjvTWJVI8IcOCk
         +ei9PZnUiNIA+avq6qq7Pl2oZdkxUhn6jfV0qApzlixXh2SAX8YZJjM1PFSwcDD3Em+J
         dV64V4W2ncc4XUJL+buTOeLqJIBzaYKrB5jTvp67/Ee2I0l2bgXLY6Wa+RTQipBGEnMQ
         hChNCc3U6+snFJka4AFt90jIV2DEJoHe/MikXtJJoZvOFeeDaYy99uexZAbFgQd4ayrH
         cMJj+zzNS3v3hmmz1ULZo5/KrrsicsjEayg6yM4PYZNeveC3d/QS3FeoVvkBgRzVwjS5
         eA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rzESKhvNCTT5RhFCFcaQxIFkB4Hb29h8Yzywkz7FpuM=;
        b=Fr3MiFR1Ck69NJI1I9EEnJPTcQIm1DFtvpVcIuDpucdsxVI2aApz83bNTg/zIs8Yly
         W+JV7ayN95/Tq83k4YOYZtEqOECPHt8vjjfKwrmbezitk7J11IAYEY6ei9ljTwrux9St
         96MI82ybVorEqMl8Xw0p+6XgzaqvONKeqlOxgvrO016WyUpv23ZXOWHrxfPTE1NolIm2
         8LqmzpD1AyorOPZutBw8Y3g1erCC0fX1Kl4agxuZy0p/cK7yysiXG6m3zgetQsJYkTLO
         jughP0SeZjmacsWsTlL+Ys+T+n76VKbLKj+/j/p+RpNw4CBGqn//ZqlYOHoen7SymO+f
         /EBg==
X-Gm-Message-State: APjAAAUCA+36YRPm5pirIyOhPCuOc4ZZrG9qRKxTY/4zt2XRKb15ek7T
	5jOboqudSQE+k7BVEPaz7S6cmU9dZoNN
X-Received: by 2002:a1c:dc83:: with SMTP id t125mr12384486wmg.50.1571494071661;
        Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	jerome.pouiller@silabs.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v1 4/5] staging: wfx: correct misspelled words
Date: Sat, 19 Oct 2019 15:07:18 +0100
Message-Id: <20191019140719.2542-5-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct misspelled words: retrieved and auxiliary.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 619ab2cac5fc..a02692f3210d 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -32,7 +32,7 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 		}
 		return rate->idx + 14;
 	}
-	// WFx only support 2GHz, else band information should be retreived
+	// WFx only support 2GHz, else band information should be retrieved
 	// from ieee80211_tx_info
 	return wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx].hw_value;
 }
@@ -664,7 +664,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	req->ht_tx_parameters = wfx_tx_get_tx_parms(wvif->wdev, tx_info);
 	req->tx_flags.retry_policy_index = wfx_tx_get_rate_id(wvif, tx_info);
 
-	// Auxilliary operations
+	// Auxiliary operations
 	wfx_tx_manage_pm(wvif, hdr, tx_priv, sta);
 	wfx_tx_queue_put(wvif->wdev, &wvif->wdev->tx_queue[queue_id], skb);
 	wfx_bh_request_tx(wvif->wdev);
-- 
2.21.0


