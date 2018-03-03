X-GM-THRID: 6528466201738215424
X-Received: by 10.129.134.131 with SMTP id w125mr3730115ywf.236.1520055229791;
        Fri, 02 Mar 2018 21:33:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.125.11 with SMTP id y11ls388738ywc.18.gmail; Fri, 02 Mar
 2018 21:33:48 -0800 (PST)
X-Google-Smtp-Source: AG47ELuO0HVUXBBiBUg/ENDmALGj2vUUyh1TljwBaj1m4ZNN456uODLATgzR7axXpMD7tLa0DpcP
X-Received: by 10.13.201.65 with SMTP id l62mr3831118ywd.77.1520055228595;
        Fri, 02 Mar 2018 21:33:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055228; cv=none;
        d=google.com; s=arc-20160816;
        b=CrwWkLDKds2mjYKqU1E0gk1MxOWxRUvczPDkGcV+GsKd5+dmGM+83rW1PXC/3Kadf+
         gFByczne+f6OcOrG9pMXg2TAihGpOEIMKm/kxJ0fSwtG8CwGFnMsjCErrzqHASkGJvta
         nCHUzgXMZKkzEnDLHGt+dv5dBJWfpSo4L/bl99tyYLtHZqdOvaXdDrJg0r8hT+1prjcY
         hIOiEQb+dTEW6hzauQZ9d2O5uiDXv1NYY3UGXvkLt9DK6+1mQK8bzAqKAl/Y6hL6uvIi
         /DBZtWZEg8hLi8Ergz6lr1b1AoHy3SSDtqLH2T/6jGwQGgEtgiWJ5s6fcwHQfNNVY160
         3t6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=PGueBdy4u53YJUwgJxaYTRZ3BgmM3RT58DR0cOsZn3s=;
        b=eXAlBilQX9XNAysyOSY+f4RrjGVO5cAR/M/tY0l/UCRccydrtAntCVpCDID7i2CNWg
         bu1x0vuXqykfCCc4k9ACvA1uJpTV5J/djYWDYWi3hl0r9M2spflhmDlV+nMuyH+7LATd
         ctnc9DUq8BssDdFr14+sYvkIAz9uibTMZdd+ObFE3S/AgKxfQWO5Gv3L3dHnAGK1TagK
         qipK0A77TizqJpjnAfGanrSBvXiEUEmWH1XsnEKddxDOIQ9GuGhqlmzkPFiheD9fqMhO
         wFKZ+GgZIIdckNZSI80jxkE9JfBBCuJ7Ja53BndxXm7dEj4+oyj9+dG76h/2XnTutfTH
         iz7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jg1q+kLG;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id q128si483051ywc.4.2018.03.02.21.33.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:33:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jg1q+kLG;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id s13-v6so6903485plq.6
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PGueBdy4u53YJUwgJxaYTRZ3BgmM3RT58DR0cOsZn3s=;
        b=jg1q+kLGz1zJ12sskrD92GELY+7z/sDhqt89byINQt5tSCpfNXa2KIfnARUjLMzBqa
         dx9VLxk6hojT1hOtSyt6X3YFxeQ4Wdb4/SY012AxKDxv5i+3woLFTW0Od9kgDF3+P+l5
         kVKJrz+806s6TrmN2Hb5/9wKQY6k4YsO2JsUf1NdG+4NYeC4lEVbcOmDlsrfwYf12Kg/
         oE2u+Mv6XqwerD7FA5tiYASUkqN93m1NU2Rw8phDJ8I+hK0/s6scmOA+6zzQRFOg/WjT
         vMIUTaZ4Dh8FFKsohR6hA/walccmEHmR/S16RvHFfx6+IJlH44wid7mQ79lIzvhkWF+R
         SetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PGueBdy4u53YJUwgJxaYTRZ3BgmM3RT58DR0cOsZn3s=;
        b=MJV4BtC601WDVdU21Fgy95WfHRHJdmL7iNIfRV0L417Qef3GVLQqt154KDqYQh2fdE
         8Id2icz3buYAp4XCQOO8reGmNHn1Kq2Ty/yFcUmmiMWl+xxJkHaex5qRczJBXyvRkscx
         hvfOmw1VrtlbokWsxKljyooiphn6YNZ02znO/5lLIsq8L6TZMziT60xTdp/fqkP1DEid
         6YEVp6Ob/yiPtC+BkLqrsqSoNGDhCmRxEwX+ukyZfwDVgQCt/HUAW8Bdy6S1Ao8muPDl
         V7gP1qgt+SUWanZvKTAnqp43MacEdBELhYZa7xXAmImNp2SDToNhKcj0Pjzas8N+tEAh
         rm7A==
X-Gm-Message-State: AElRT7GUPsZdPSdD2fgDqMA6AW09qPYj7mTrNWYYeOiZS2Xyp8LajtKd
	i6H2vijR+2tLT/r1e9fv960X6Q==
X-Received: by 2002:a17:902:5a1:: with SMTP id f30-v6mr824448plf.124.1520055227398;
        Fri, 02 Mar 2018 21:33:47 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:33:46 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 1/6] staging: rtl8712: Fixed 'tabstop' coding style warning
Date: Sat,  3 Mar 2018 11:02:31 +0530
Message-Id: <1520055156-8388-2-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

Replace a mix of tabs and spaces indentation by tabs only.

Fixed checkpatch warning "Statements should start on a tabstop".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index ae79047..ede99e9 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -161,7 +161,7 @@ struct _adapter {
 	u8	EepromAddressSize;
 	u8	hw_init_completed;
 	struct task_struct *cmdThread;
-	 pid_t evtThread;
+	pid_t evtThread;
 	struct task_struct *xmitThread;
 	pid_t recvThread;
 	uint (*dvobj_init)(struct _adapter *adapter);
-- 
2.7.4


