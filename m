X-GM-THRID: 6669239463558774784
X-Received: by 2002:a9d:590f:: with SMTP id t15mr6417631oth.7.1552803349027;
        Sat, 16 Mar 2019 23:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bbc5:: with SMTP id l188ls1866335oif.6.gmail; Sat, 16
 Mar 2019 23:15:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz46heEy8kSeIq5C+yInx13G0rnHtp1JRiCFjAcVXACpeXbY17R+qtF/M7EzGwmGdgEZz+X
X-Received: by 2002:aca:aa94:: with SMTP id t142mr7125082oie.17.1552803348545;
        Sat, 16 Mar 2019 23:15:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803348; cv=none;
        d=google.com; s=arc-20160816;
        b=or0IIDB3KB7ME0kKBJji5DRZILpaY5rP3JdFbpjVH0q1bDc/g3rQog1kl+dGWCjQBi
         3fT2888GBC0FRGK+apYPbi00zSzxz1AUlEdpqDN0b32jyrStyjfNxGkqE7++BFKR8d8t
         YXi2d/LOAgLMfN/hX0/8PhM1kW0eLEYK/JRLdV2ai6FFEVU+Zc/whvjO1mqxvGR1k67L
         VoyfPbq6niWQVjpqkeX+23SWtjn2Zb51mCzvEh0wTasVgPdjUaZZrT5lkuofCR7mP1ML
         59sqg30miRRUd5LH/ga8N7+orXyax6pU9AFdPLNiH2kCnZzIl/7cNOJUfCchx5ir87c1
         eOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4gW7GstsnkH9sggxmzVzCDG+Yjqamkk6beC/D8ZNpq4=;
        b=mYCIeFqrPsCGJO9bfJpl/zlOEaGZdEkfOvR9ehNZqztn7nfa7/YZJdROcz4Hlu+knx
         WdBGa0Zub9sxsqknhCBbzr9JoCfaYrpTDIVXcmF9OTQOVZTWXha2o5h3CDGZFFgd7SRA
         GVhjyBdlJsAcLxlyxlbCXhZKTroohLkuC8J6ijK4rxQ+NzxJd5HljhUihd+vdQ1erGMP
         4dQchyei7jA+Nv1cB0dleT8eSEePrghOZX5MxwsDzCzV/4xTasXhdps5L4vGViPXWhtA
         Wy13gdgbtOxSdK9Ftf+8+VWWsb5Y5Fv9LjY1/XHv5LfoiiUA9B0yGP1uls3LyKjB+a7X
         OESA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DiQGxAd3;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id l26si326980otf.0.2019.03.16.23.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DiQGxAd3;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id p64so7212255ywg.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4gW7GstsnkH9sggxmzVzCDG+Yjqamkk6beC/D8ZNpq4=;
        b=DiQGxAd3XIgybws73FSRDp73hf9/Ar+5nBOEJ1O+vSjURap6+gJ7dgp2TXlWji6k6d
         qclC4jW5FRyxzeHIvyN3lJAX6SxEMzzkEMVJWOf7X48GsdGuyQCrJh/7h7KP6x14hmQ+
         ItwXUBRNxksiOaQN+G+eaL6wGVWvvrvXbvD4H8OdDtMjqldkqeJtx8H5JSMMqeJ935rc
         HBLqUcUOwpyf33pff2u+1a8K6yqRRMAzRPY1qxhgBOprn5AtUlwxSFU2f8K44JyVJLSq
         CtdQrrXlPTbbIZbld93CQjkBrcyhO7KVdrC4TRInrhFApX4ZcSRfs5R+AQ43JK/7hKgk
         OI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4gW7GstsnkH9sggxmzVzCDG+Yjqamkk6beC/D8ZNpq4=;
        b=d694Rm4fCdKdkHiqWO9RN/wZA2SJKfStQBvl3pciOJRAfhQMpssmwlBS0Zdj7QYcFo
         q9QaNjO743H29J4UBSpPpAU0kIzAnrU1zDTsLdMrBXEZ36ybcRXtg7fMR3JmUKzmgZY+
         1igD7tVtVVo4zukoddDQnkcqz1+iGncDurnrO+vY6UOqT7/fA+AcjePai31xzdPmNSE4
         PJAGrqAq7DeWYs5wDZHEFS0vgOt8i024VCcRWnd+jXZp/SMfcDFhA1SxwSyMJIK0KXFe
         sE3idnHSbZ1rmpF+fBxfBFX9obRjXuV+Ax/K0BtIYuewavX94hcs1dJM2+olg82a5tOo
         3LNg==
X-Gm-Message-State: APjAAAU6ca2rdMNqXXKZWva9m6qU7LvO4QwA93vNcq+UcDJO/083U9zG
	kFNzm27i9Dx56wbZPY2wk2bzKiZp
X-Received: by 2002:a81:3b96:: with SMTP id i144mr9348761ywa.155.1552803348238;
        Sat, 16 Mar 2019 23:15:48 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:47 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 11/11] staging: rtl8723bs: hal: Modify comparison to constant in rtl8723bs_xmit.c
Date: Sun, 17 Mar 2019 11:45:01 +0530
Message-Id: <20190317061501.85447-12-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Modify comparison to true in file rtl8723bs_xmit in order to follow
kernel coding style of constant should appear on the right side.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 8120f6c85bb3..7b06aab04ee6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -58,7 +58,7 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 
 	ret = ret || check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 
-	if (true == ret)
+	if (ret == true)
 		pxmitbuf = dequeue_pending_xmitbuf_under_survey(pxmitpriv);
 	else
 		pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
-- 
2.17.1


