X-GM-THRID: 6948745075073482752
X-Received: by 2002:a5d:4884:: with SMTP id g4mr18504487wrq.191.1617986749249;
        Fri, 09 Apr 2021 09:45:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls602293wrd.3.gmail; Fri, 09 Apr
 2021 09:45:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx/KS7L+1W7uWXfns67K+szgY2ZMfgNCCG0lFVOsk9c/uyd2kACYm0MutyjBi+C0SsCyL/j
X-Received: by 2002:adf:cc89:: with SMTP id p9mr10747942wrj.223.1617986747899;
        Fri, 09 Apr 2021 09:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617986747; cv=none;
        d=google.com; s=arc-20160816;
        b=0edD4PkHK1H2bHzoiMNIXb7N7wbzttE77+X/SvEUjeHdctMHG2tN+RcuvsPDd0SNQj
         2vlgyMxmfxU8QN7nSjN91C8xmg3vcnTZPvp+mp/E8hxK22y3R7/hW/G5acqZXey5tNYH
         Qw4DuPjN90b42DFTYEqN1yJjE8tb2WjGikSzLXHjzo4Mmk/Pt0u+YN3Us9RXnKyKhX5L
         Hy6QyBc7WX6LDM22oEwcOnAGqikSXRKCSSUOQX/ouepyxJ/QAmRAsd21aH0/u1aqHDZj
         wxk5n34erWuc2TVqlHfhNmKYM1UEA0e6gUOWwJ/ZRlnyOslRWASfy3qL4GPwx/BWmxGi
         TSnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=e/em5EuQEHT+Z/PGnvdzE9LeXg+II9Wp6x7IJLoWZ9w=;
        b=fBROXtndMHOYmwhMYLQwmTfbk/vvyXHmqmRNtZSvUVC9M6hkxdlAQmZDSx4jTNhnIm
         Wpie2B4cSCjM8zBW/eN5xtWBZgAYX2ZYE6gXPIrg3q51Mj+GN+MD2qWJwd8Yewf51iXp
         xHSm8yauojU8HcLcLhqNbWOn/9HsmpKVWyXuLHzKmj8K5jYRSHannewBQ/0yBsOswln3
         YXd4+zPjt3fV/seYWCcCbIF/HkLt+W/1wDVMjDZE3XlOUnLhYS4fhRi48uyi0o/6NbDK
         y6f9KQTFGoxmhOhr4VBZLHOMDrlxGVhepD+VUmunL/euGltzYv+mojzg18vnkCyEdwc7
         AhkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sftEeqGM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id a4si253399wrc.0.2021.04.09.09.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 09:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sftEeqGM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id s15so7308044edd.4
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 09:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e/em5EuQEHT+Z/PGnvdzE9LeXg+II9Wp6x7IJLoWZ9w=;
        b=sftEeqGMQ73HmmfgNBNQ6lTc0oTCxDPRrt7cQWCEyZr+TLVCj9fj3HJ/qdoyx/Z3F/
         7DG1LAvqNivMSX6nGZVjNkwfNvh9dAJE78jI4NlIpexLR/s8dn/5gjHekcIQS4evE+dV
         MNTjt2EWSqUrKIs3O1EH+D/pj8whcIbgcnY8tf2jQke7jRpQRQZSkhxe//eGnwpvzo7L
         yhbuEiKDGWGxm9vjaU0i88rvuZmr7X+HO4dnJTuuM3uV1E7WzeTKGnZHLr+zc8xcfXpS
         Q8hJBpADbLarpYn/ubFkvHEAs4zIA/5MS5QrVeTwhSQwNtlm3A5rKN4fcd6tqPkjwG/6
         VAhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e/em5EuQEHT+Z/PGnvdzE9LeXg+II9Wp6x7IJLoWZ9w=;
        b=XL84W5UW+4l+Zxyt4/7JBnCccfKhgdOlp45Cd/pLgh0wNwgWinioeOH8F3kTK0AxnO
         h+K1KBL+C+sn1/W0XhdzOhlYmXe/kxqkb+05ppplqVV7RGvnnDIulFkCXFrrQv+TMOu0
         3XHFYBxYQ1rSVuAKRKvyEqaMAYXPBuu4uv/Ex/LFErPQyrE6bq3gHLEJtfi05wYo73p0
         I8Y9H2itwKUpjjxOeyE6TlD4rXQtVfaHXxYNU+FscEPsaFww4Ds5HA5LbrIeNbBPvR4i
         DIfi1X/okATs+frTiezzLXfxvnV7wxMJJ2PgG2fDRfofD/6njT6nqQOnGppWkA5bPMBS
         GQlQ==
X-Gm-Message-State: AOAM533Oy70RR8Tf4GAWdkwYOezV/yX5VZ0fvRZcslO25wFNetZDX36Q
	Ffgq+PB8zItbTvwTVUao8iE=
X-Received: by 2002:a05:6402:1857:: with SMTP id v23mr18127004edy.362.1617986747682;
        Fri, 09 Apr 2021 09:45:47 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id dh27sm1706143edb.28.2021.04.09.09.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 09:45:47 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/3] staging: rtl8723bs: Change the type and use of a variable
Date: Fri,  9 Apr 2021 18:45:43 +0200
Message-Id: <20210409164543.30878-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
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
index 5450d20b44a6..c03ae33b0aa6 100644
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


