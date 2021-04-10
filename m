X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:6402:408:: with SMTP id q8mr20647778edv.201.1618046580865;
        Sat, 10 Apr 2021 02:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d7a9:: with SMTP id pk9ls5983856ejb.7.gmail; Sat, 10
 Apr 2021 02:22:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1m+7sizaJERjSFVU8etJdCv9ogW+PjxNKhmGQwQk7drirhgQA+z4xaa4S1UghxcCITpQ5
X-Received: by 2002:a17:906:430f:: with SMTP id j15mr19687056ejm.543.1618046579509;
        Sat, 10 Apr 2021 02:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618046579; cv=none;
        d=google.com; s=arc-20160816;
        b=T4iBox7EvSPRIVae5ZrT/U64Jqe7uUQ+loWGeFeNnzaHv/XD6XrRck/Gi4o31q8Ntd
         Y1pHt/5i4FfUaIRXf/nxwbsm20uzas3M5CxPhAsn66UTVfXAFA1TqjxrZ68v49NuLWN5
         +zmCFbxaZuNNrC5X1ngLwJwEMTqRWrhQNshqCAejr+iMxtP/54Ng4Sd+3/KFQ4lCGkmx
         hI5N2IxheS56b9QQkB2N9kVFfnDF5PLR58omJUwGPrZqk4OcGUcaZv3ZiDFGxAp6+uPK
         WwENR8ouPB67JvQhM+HYMeNEjlZsBo/sMRidMjsBN/x+qrZ2mvSnfXYUxElzKM7fU/Pl
         WAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6C1kuLI/6U1TSBMUqk9JLF9SDGzIgrVMBUMNpn8I56w=;
        b=u1VYCqa6dS2iUTnIUFf0Of/ThTPfuloFVZ8kaqxJq9Onoxazky8SeDPxTlwVDurQvV
         exARAFL3/VAZyLfMLGjEemnjVlb8nQOEvT39FghnaiOgUBhMs1H2v/E037y4i61lgJBF
         fPhn5HUAMCrWunHbpfUc4d553yousIr77x2IvZd0QeG7+f5unXwXnj7DRYDi9xTrJ7hT
         9SaWSQqtwOgDcL5WlMOHpwI1KmKTuz5AhfCmJFVa5MqMd/T3ZNFSJbmtYBWHqSpt094E
         H/1XqP/620NZsu3TlSfnQpqNf1eYn2MiqK6c6C8PtzUcl0GTXlkgFMGrSQIME7Zyd/j0
         wpTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHFajjcj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id ck26si620112edb.1.2021.04.10.02.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kHFajjcj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52d.google.com with SMTP id z1so9247512edb.8
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 02:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6C1kuLI/6U1TSBMUqk9JLF9SDGzIgrVMBUMNpn8I56w=;
        b=kHFajjcjeY0LaYCjifNIp+F+rpF48yL0JPVutu8rI57pss6iPMuHp1GmPfMX2wnDM2
         4FSYE0Zi6UDF4+YpSmKeVYy6ut0NUT49icEe0+AA/cpLSq5T7CRZmeH4TE+8MLmJ8eRL
         1NR0GFo1f9DnAdKS6/H9ziMLKJV8HnP9seAgKpKWWDfUoH0k1PQm4AVLL+wJ4VqfA0OD
         QvhSaWV+yjjCzeyeszgU2iQtujAR6Kj5bRcqSVZCcbp2zZKfQZBnVb19Ikx3s/9Ws0j/
         kU/2cu0hW4L9nFDHj31wJFi+JcCuYNWIoqd3rw91KhozGXySfnF+awjvg1dK5R0oNKU4
         0UWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6C1kuLI/6U1TSBMUqk9JLF9SDGzIgrVMBUMNpn8I56w=;
        b=DtrqYZ968D4DW7RqZqtj1aP7BqVg09psg+JofP3XPing/WeiQXhlw4fk5MwXeD3lH2
         t6QNjHWzZQz5CvJ3VIOF+L9EZiGGOEE3jUyhyLjLcOoEFAWGfVLsbQOLeBkyr6LZuMYq
         RErcq4W6hYBRnPT85kvHAGALHlkYB/3tchoUVX52VtrFVA2sgW5+Usf9dnIaRAK5h85W
         wMhz4rNwGL1/U2rvrl9yE6MxfjJNFfTWWoUYpHK5gMEbwOI0PEcqa2SLG0T2VSDKWRj/
         35d2eyCNxH9+Mkgt49bblWitLmJt2Ln61aixNRqennxIXyd4PacZuzexHxG0791uyxa6
         hbyQ==
X-Gm-Message-State: AOAM532GsObQnF4Jl4MNHL2j2JyO3l9D++Ip8AntIh97jruuK9gYtlv+
	4XMCOoTxiouBxmAUSe0S3y4=
X-Received: by 2002:a05:6402:2209:: with SMTP id cq9mr5651190edb.216.1618046579364;
        Sat, 10 Apr 2021 02:22:59 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id a22sm2801624edu.14.2021.04.10.02.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 02:22:58 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 11:22:32 +0200
Message-Id: <20210410092232.15155-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210410092232.15155-1-fmdefrancesco@gmail.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool. Shorten the controlling
expression of an 'if' statement.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
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


