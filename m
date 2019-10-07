X-GM-THRID: 6744906774126526464
X-Received: by 2002:ac8:373c:: with SMTP id o57mr30338243qtb.70.1570459647225;
        Mon, 07 Oct 2019 07:47:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3809:: with SMTP id q9ls63139qtb.5.gmail; Mon, 07 Oct
 2019 07:47:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwNQWbUiOLDhz1d15vNnEhGdzjv54Lg/M29NjIgtXd1zUKEU8283bBLQXhIyLKoAc50v2vF
X-Received: by 2002:ac8:3195:: with SMTP id h21mr31448055qte.350.1570459646107;
        Mon, 07 Oct 2019 07:47:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570459646; cv=none;
        d=google.com; s=arc-20160816;
        b=tPtKcb6R7eaVy2oK6iu83uGTCyuXrPqwfk/gouG/VpOC88qwUkcyEGhXDOVEuuXFvr
         H3HHOqdT4XsFgLMPg81mkb925HrpZhYkLnau06UwXgf6hklfALEIFUbO0Mtyz80l5NeX
         dhbbv1m/IIsIozWnbjBzCtRBFQC0Omss19uQ0h2QTX/b+6V2aOs13H5vvB6EdSy8AKta
         l9jIz5mw3zXXpC6lOMMiW7r6/79kGnXevxpylLsAuiGgKgnVzokjfNt+haIB5dPvAEL3
         5YMWsccFwHpe+iqNrHBnoLCCPM1SpZVFJxhJCgn3wRatQNDUDtnL6eMzBNXZ92wk3T3H
         Gi+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=y/ofltjpQ/0gOyfh06sbq5PB9H/Mc9TSI4DzF6mFp8g=;
        b=lAP7r6fuYn17U5lGHEVdePi9D6jJGKDRqIBIGILSz/13zgHWnFRaH1Q+q91iUzHR/a
         /DheThpSyivZ2kq5+4VWmAe4gl6Gb985g4ASOWgszIJQSa3LFldAmyYZVCAu0yw1UhD7
         y7+/eMwf35V9OSic8xkSX6kgp4Zmtut18Z9XLLhcHVxAhA3Ziz4wUt6ddcKZmJgRrmVm
         CSKtZl77CwRDVUeciO1E5WU2YKBL4F4GKmGUuxf9W92wjvdKISKHg+JweVC3a60UJ5oj
         SdwwjYT9STuXFIdklVMVlPLfIZ3/bKo/0YyhMeiDQGvPKev/7cYT+HOnj9XiP2PcxWHe
         4cZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J8/2p790";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id u44si1434384qtb.5.2019.10.07.07.47.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 07:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J8/2p790";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id y129so9078256vsc.6
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 07:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=y/ofltjpQ/0gOyfh06sbq5PB9H/Mc9TSI4DzF6mFp8g=;
        b=J8/2p790FKdlETNl3Sf9f12AlcRuI9Ij1mA6eyAe2JGQzS7PxI9mAkTgsh8gWbJNXU
         ulX2iIiFWO5jUYmJSG/Li+vuVNJnsDCxwxnlQ+46V5P/E9WaA37G/9RmujIKuNMvZtau
         07FOIhboqq6LPthzhMhhMjHNh2gdX/iQATfuQZ3tSMI2xaZyYW3UN3Ch/yLKDxApNV0o
         TqvIMgxlpyEvYhYEE/Z7Rs2PX5aAWI+GWLW6EwoWZp9hK/HfuYtRP+FZLSlAZ3wKnUvi
         ozk38OaoIjsvnUo+YK8LU/kf/M7EB/Ok7tAT2j+AQZH0SYKwuzWn8p5KDmAH3hLzfzDt
         7ATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=y/ofltjpQ/0gOyfh06sbq5PB9H/Mc9TSI4DzF6mFp8g=;
        b=CpVRS+WSqz7KaWrpiW//kqz+IY0ms1EL2X+dIGaID8B0j0RJpUdgLamK0BnVjTQJBW
         NI7lI9wrZ6CZ2oikH+3FKoPY06nJuup+8xzN7KfU7kZm0rrnDTnVs4vNJbix8dGfKIoM
         hxlkT12fP3OHxDhIybEXJNh7B5BYkoHjZSzOSvYh00vaTI/a3WJNWbWUH0k2fku18YJS
         tu6SccOdyMGTnx/HFJd1R6U4ZNti45AhBr93z6xZs7emwS2E32fSJEJ7ABghqzRXhk9C
         S9fNPicfIKDr31cO7y/QCQQPya70UfYiRYj0LLjhJajMbsaWIhFFAizEkxnVoCAFv3XX
         nZRw==
X-Gm-Message-State: APjAAAXUe1AGW54VDn5qgjkPpmQOnYjkT+C1ZKQiDBiUto82PJKKT5GA
	NuV2Z1zHOfr+LhLpz4hdNZBMMcjp/vFZgg==
X-Received: by 2002:a67:1e04:: with SMTP id e4mr9438765vse.76.1570459644393;
        Mon, 07 Oct 2019 07:47:24 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id n201sm4464049vkn.16.2019.10.07.07.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 07:47:24 -0700 (PDT)
Date: Mon, 7 Oct 2019 09:47:21 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Replace string with identifier
Message-ID: <20191007144719.2zzlljlqymdqgom7@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Replace the hardcoded function name with it's predefined identifier.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6f7a63f53d4f..fef9f1f9ba2c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 
 	if (!pxmitframe) {
 		drop_cnt++;
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
 		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
 		return -1;
 	}
@@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
 
 	if (res == _FAIL) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
 		#ifdef DBG_TX_DROP_FRAME
 		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
 		#endif
-- 
2.20.1


