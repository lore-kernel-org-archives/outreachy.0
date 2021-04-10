X-GM-THRID: 6949544081527668736
X-Received: by 2002:a5d:4b12:: with SMTP id v18mr1428336wrq.45.1618066841549;
        Sat, 10 Apr 2021 08:00:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:285:: with SMTP id 5ls5626108wmk.3.gmail; Sat, 10
 Apr 2021 08:00:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDN9iZB5vfqWnHLJmqZpTH6nD40+85TTbtXrknISbbMJvIU34sPGjmiprn4cCN7PNisFDu
X-Received: by 2002:a05:600c:44c3:: with SMTP id f3mr18362983wmo.8.1618066840224;
        Sat, 10 Apr 2021 08:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618066840; cv=none;
        d=google.com; s=arc-20160816;
        b=XgILMVKNiaRqWktsKBrhgQ9+g6yrLWXMKAUqKmH/eOuwF+/QkJ4UXHBCruVJiJNk/P
         hvLsEAoiFFV1xBbBiFQVV0GPnlIXFZA13BWO30UhT94rpeciuf1Bh9K9S5qGdLPTfZNB
         kJSTxU5mO2AuDD6GkJobjF67cP2CYRzk0GhBy4zAZmY9+bwsh07bpaj7osm0JPdgXl3A
         lgZfIIVTgUhnncjP/0kmsBHFopZLaRQgjZkZmP1t2NjX870V4oOK820VyIHfpspUwDuZ
         ZkaX1x2thqnjCW0ChobzEOxOqD271xluLIYjY2hAyAQXEprxGc/Z9Szem96J9jVUc8wU
         imhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+GS5YSfWFuaI4QAKIQGwDg4lsv5EguJ6x2s2YbgKL78=;
        b=n0ELXBzIYLwPQYjcHx92jLJxi6Zk2pXFVrfJly028BYNZr3aoY4Ou9aDEPYR+cStUn
         gMIvJaQqJlf4j2dcfal+kU1NOMBKd9olWa/LQC4jl1PIjWaueCZN+lHrow3emop3OsqB
         ox7/onaTA7g2PiVT0tO3pTSADHb6U1QIQPB3Fq3b0aK+THAVvymL6VK4QyZd0AnKDV3g
         tPgPeA1lr3pvzlpeP7u1jp2kG98V7aHEyfc0Bc7YRiCcu0jwzB+0V7hZa2xwCn97GUbG
         OwZ+/AHYHUyLtZaPvQ+aTkaXa9Wm29Exaa1v4Cyq2hI4jQc2XH4vRH71yugUG3hDcNK8
         IQPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBAoLJGU;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id y12si795761wrw.3.2021.04.10.08.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBAoLJGU;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x630.google.com with SMTP id u17so13157641ejk.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+GS5YSfWFuaI4QAKIQGwDg4lsv5EguJ6x2s2YbgKL78=;
        b=XBAoLJGU1Gz/A/gMAcXAIHOyw/xJ6GQVtG9UVSMOnNEDap5BWU+A/2pekAzKgy7QGj
         nvLIonwIrbXh9TDom7KndIiqlQY9StdWdUFZOm7Zko3OGv+eOnHeysa0McQahXW/DHRP
         kAUG8Zi7EWayOGG+JgB/sejgspfOvRLyetjmPo96fsQ8p5E8vIBXxnIyxqlE4QCwQ1+P
         yPDCUeUX7Nj7oo1ptJQHDzDKqdo/qYp3QBe3KZCi2WH0lgyXoMi7wzs6U0Kb1RpZIS9p
         sSsWTL6TLaCRxsddem7IYmfNuAfh5nqVCIP7lNjGj31KewzOzwrOg/xPtbl3nVfttJbr
         ts6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+GS5YSfWFuaI4QAKIQGwDg4lsv5EguJ6x2s2YbgKL78=;
        b=Qfsmor+AOoQzATw45FxdlrNuICTwGBJ4gVevnTgPHWKKiQQXl003JqaxWBWUX3+hFV
         sE+UKA7l+IrW29Y3TXNK6NI4JfEbFotFEgdbY/7XD8RQTQQCL7HqSP1Ipc85zc9ZOZvY
         s9QGfRobtxKqZfMh1NNI5e5yPqhMvagKquSuWwZraI+ThA7YEMKiUSJbouD7r1i1is9M
         YuDfGP+gB0IIBVkk0wI5no4UAcGCtvN6PEx6GSd4ewXgGwmMpMImRByW+JMk6egsaSJI
         u4ffYECFRfRzS4+kdMnb714SDRKeyA11fUCSbf7qVw6N7D13XxnCSlhp2zA+TRIbUhw4
         NbBQ==
X-Gm-Message-State: AOAM532bX8Y9hABEYan8rvC1J8mrRAsW5A7Z2w93aHXlQ3bKCwlrUJYy
	cJHbN82fA6Peh8jybFTBWG8=
X-Received: by 2002:a17:906:5413:: with SMTP id q19mr1563472ejo.8.1618066840031;
        Sat, 10 Apr 2021 08:00:40 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gb4sm2719494ejc.122.2021.04.10.08.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:00:39 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 4/5] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 17:00:07 +0200
Message-Id: <20210410150008.5460-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210410150008.5460-1-fmdefrancesco@gmail.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool. Shorten the controlling expression of an 'if' statement.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: No changes.

 drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 96fe172ced8d..8dc4dd8c6d4c 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
 
 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 {
-	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
+	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
 		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
 			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
 	}
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 0a48f1653be5..0767dbb84199 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -203,7 +203,7 @@ struct pwrctrl_priv {
 	u8 LpsIdleCount;
 	u8 power_mgnt;
 	u8 org_power_mgnt;
-	u8 fw_current_in_ps_mode;
+	bool fw_current_in_ps_mode;
 	unsigned long	DelayLPSLastTimeStamp;
 	s32		pnp_current_pwr_state;
 	u8 pnp_bstop_trx;
-- 
2.31.1


