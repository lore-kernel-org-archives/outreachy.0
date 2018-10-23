X-GM-THRID: 6615505186069676032
X-Received: by 2002:a6b:9057:: with SMTP id s84-v6mr14789617iod.27.1540292330350;
        Tue, 23 Oct 2018 03:58:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8618:: with SMTP id z24-v6ls911749ioj.0.gmail; Tue, 23
 Oct 2018 03:58:49 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c3Z3x6HxHLNrv/K0O6rimuQGQNMDOU1niJL2Vrn5D8ToBMFFiySvElAGVQcYAa/gnvT6x+
X-Received: by 2002:a6b:e50c:: with SMTP id y12-v6mr2890582ioc.18.1540292329597;
        Tue, 23 Oct 2018 03:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540292329; cv=none;
        d=google.com; s=arc-20160816;
        b=fS1WI6UhaLrSBpJoWsHeb0gdGqo91Y2R4d15a5t/2epkbU8Y8FSRGRtuxrg2fe1iQm
         6EL7duJUjIfmh9PDneGObyKFQ3X6rS5EMq3CJAk1qQwB1rH0mDUXWChi5UsDXcjZtFfm
         fvMp7VQrcpImsY6aoHoy0W5dLMjMqftqVvdbEre3ue3s3+ZZKoK86M/twEctVo5h/DEK
         z+0jmexpkVO68oxSAQxv5VFrC4XkoEfic26IkTw/K6rcYZvxL+wJXqXUILLNDcYC3Bf4
         r/APQTh3Q2SHGEy2ndLpoGuFlSCqiQPY/VTQX7OrwT+0ORmXJDe6aTxS5uxWELqmRIYO
         fFOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4Q+3zoXcXupdMqv0E1bxj0kQl+J3F6Xx3JXzSwuULBg=;
        b=laiHoZerx0OaNZm0ntcPUS08e1Mk+GAGLdamAnYdw5nkZkZXFXbSa+urXJ9YSHFXgb
         tz4Wbn1Q5XhruR0jAysuvYhWOBCKDfhyegCh3fnPSz91uTOZSnK7xuja1LnCDxm5hpyF
         Nvc7u6f8YCx+7CSWQTEwQPoh44DxTIiIGtyVMMlPt6l8EpFW3QNJLL6rGzleCYjEayoX
         uQzEmAl7yzHdiKSRj9zwEJJkVZDrScj2E2j4Gr8VJFKdMCdxgo3u7nkQysqGjUDf2F+6
         cNbPvr86JE6cisvbJp3vO8de5jT5PBdQqULZ4WCtp+j+ulX2uE1238sAOaQyRjSB+kin
         qdeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWLEy1jI;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n124-v6si871163itb.0.2018.10.23.03.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 03:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWLEy1jI;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r190-v6so442608pgr.13
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 03:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4Q+3zoXcXupdMqv0E1bxj0kQl+J3F6Xx3JXzSwuULBg=;
        b=MWLEy1jISE3frxrggC0LZMJYh4YOzedUPUbkvNKwidLu+tfWx0k3BtkEJ9K9vAoAgF
         iaJuGor9BGrggUL0/ZAg0DmPhuo1+zmjSW+gcscW79d1oJZ5GyUH3vRPFawVt7gBusoa
         xmPxdodwIsbd5EUvyTvKD85SVIoggvBDKwMOwldcli964fJg3yB5Nd1fZ9BnkSs13Qzo
         0Nad4PLpPPpqgogcsaXziiKYSHaTmz14UFxQYn2p5d+h1Ld2mcorf858XsIfFcYza6P4
         C5Yxm5W3mcp2fuSU/8TaUYqfbeANyq40u5Nr4kJcVCeO2PaR+QLfdohvQOlozy7lvRRg
         bg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4Q+3zoXcXupdMqv0E1bxj0kQl+J3F6Xx3JXzSwuULBg=;
        b=Z867VruSpyC1lGXiDLdT56yAX0IHMJkEhdwAo678+jZNRgQBUsCWDc5pI8xAGYDEVP
         6DuloWGxeAxzqNaJoMnzJZbeSA9j/9DRjCCWSj/ZUKYG+6tOQgmU5DG9nHdhs0XEYMKj
         z2+UY4sF9PEekmb0PP6wTHFYd3BKmcXx+LDKnHmZlwGIkK7ZFz0r12dupBqjevP+svVL
         jC6lrqUiQqdwSo3x+A97c7GHXED1O8jsoKtTmoxCGiCaQZOjAs0jqOyi2N7e1T/L8X8t
         +7MNZBYYCsmMjeQpsyLdtDcJz8W5yIjyuhz5M7TD7jeiSdG/WMCMJirCfgrtTvW298kZ
         xAVA==
X-Gm-Message-State: AGRZ1gIKprIRObzeSufUvJNjQV5G9xOJRx+0tTIoPKr4CCpq4Er5QNBe
	03BVFv5cI/rFa6APq7ydlkOjL9PL
X-Received: by 2002:a65:4208:: with SMTP id c8-v6mr10716202pgq.335.1540292328799;
        Tue, 23 Oct 2018 03:58:48 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from aakashd-VirtualBox ([183.82.102.247])
        by smtp.gmail.com with ESMTPSA id 72-v6sm2890400pfr.115.2018.10.23.03.58.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Oct 2018 03:58:48 -0700 (PDT)
Date: Tue, 23 Oct 2018 16:27:26 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: [Outreachy kernel][PATCH v2] Staging: rtlwifi: Remove Unneeded
 funition halbtc_get_wifi_rssi()
Message-ID: <20181023105726.GA13547@aakashd-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

In the function halbtc_get_wifi_rssi:

1.if and else are functionally identical as they assign same value to
  variable 'undec_sm_pwdb'.
2.Variable 'undec_sm_pwdb' not required to just return a single value.
3.Function not needed to just return a value and so removed the function
  and assigned value rtlpriv->dm.undec_sm_pwdb where the function
  halbtc_get_wifi_rssi() is called.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

Change log:

v2: Commit message changed. Subject line modified.

 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
index 24e19ff..b519d18 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -476,17 +476,6 @@ static u32 halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
 	return ret_val;
 }
 
-static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
-{
-	int undec_sm_pwdb = 0;
-
-	if (rtlpriv->mac80211.link_state >= MAC80211_LINKED)
-		undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
-	else /* associated entry pwdb */
-		undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
-	return undec_sm_pwdb;
-}
-
 static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
 {
 	struct btc_coexist *btcoexist = (struct btc_coexist *)void_btcoexist;
@@ -585,7 +574,7 @@ static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
 		*bool_tmp = false;
 		break;
 	case BTC_GET_S4_WIFI_RSSI:
-		*s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
+		*s32_tmp = rtlpriv->dm.undec_sm_pwdb;
 		break;
 	case BTC_GET_S4_HS_RSSI:
 		*s32_tmp = 0;
-- 
2.7.4


