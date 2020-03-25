X-GM-THRID: 6807941969778573312
X-Received: by 2002:a2e:9d11:: with SMTP id t17mr239753lji.169.1585097510182;
        Tue, 24 Mar 2020 17:51:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls33718lfg.9.gmail; Tue, 24
 Mar 2020 17:51:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuv6CWk84Q9eNtQZ/yALdrrTpQys7IIEQtebXqc6WjAUWQ6xkEG7K27CHtsfK9ONWvnxpoH
X-Received: by 2002:ac2:5e27:: with SMTP id o7mr444807lfg.163.1585097508883;
        Tue, 24 Mar 2020 17:51:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585097508; cv=none;
        d=google.com; s=arc-20160816;
        b=lRREiPqhRuQ7JQe9YC8UJVhDLNk6kNxcG2xpn0RrrG7Ju+5RT/C/TQO9DO1dKhUdy0
         Yc+kbSfbtySu6/i11Q2uoEUiVgG7KZMZ1YjjhU+XQ9ZtsChdMt+FhR4PrhrO5WJ7Bi6R
         oRiTiEWzN2gFyQyzwkUVOYqFGL99Zk1TGolu3bHTDfIUZHFS4TgKWIR9xXC4qMmbD1Vr
         zphi5TAObEctmA/E2ntmilpD4xk3seLts4WGHM54PbhIM663ltoxq+2k7+nclk04fhra
         OrCcpMbSlE3kqeqYpDK/vs1BsGULfUQw4flJ9IUqYRH+ojqg4C00HyZoaoOOSAlbm/65
         Jhnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fDcaXXS9aqBczDHJb+qtYDBvOH2IXoV04uS+SNwf3ZI=;
        b=FeEucoy8lRL9oDp2LTRuzKglNa2IIUbczapY546ISznyDOFg5OczX/mjlE75LV/cVn
         4cLqwt1cCAKRazgN488AUYQIidW9a3jxZc9t19cZuCEtLMxAm6M4SjRgaZFdFZOOYgNs
         cH5InerDvZ1jcO5Oweeji6PJj3sKJeG67ZjL+NXiAGFN+xjRd7CX1DHtG83zleMR5o8t
         pqZ12+vos090rK1o4+93n8h871M7cTs3qLVnNvJ2R6lHeYdP9AZbZmh3lN7gIY57yb1X
         EbQAK7T2XYKJteG+yjrJ4WDOvQ1E+Irkbia+klS4poMXeJSlCvc/VzbX4K1+DMbmMyqA
         mP7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWl6k0Fh;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b26si1359771ljk.4.2020.03.24.17.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 17:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWl6k0Fh;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id g12so710339ljj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 17:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fDcaXXS9aqBczDHJb+qtYDBvOH2IXoV04uS+SNwf3ZI=;
        b=GWl6k0FhqwvF0mwTudTfdUx57Mubzf0OCTJB7sgOK26QsknvJmtyBC73JMADDKIrsV
         2xUUa8bz4QvfmoHUTy5BOZn3GD7sgxJHzXnjnegy0Pe3GuRz+eEN5JemX4kqtSn2kzLZ
         tpzG3X+bxJ/m1RV0Ree8ehTtj2zJ9k3TbSIPWufFuh6fJxRhtX6guH+d32gmmEG5BpJx
         +bTJnFYA2uFZGxdax2q4fz9yL9huswbrktmW3Gj1dLX1IEotkW/56stzWR1NW5e5iurS
         kE3+akymAXhnScJBolHHbad5DGTMpD2X90z7Tav7TPZVxvxoyaslPuP39a/K2PotGh5U
         Oe5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fDcaXXS9aqBczDHJb+qtYDBvOH2IXoV04uS+SNwf3ZI=;
        b=BBiHEmojOjbywvFIz30e/6eeKBWf9NA66ND+G3FO+znjxdszDvDvuo4Vpet5RpUCr4
         nXUIpdL8YxYPPCnnueBL5hF5S0LqLpo8yfJOMD9eiHuYQEocmf8nTJYFeyP4ZJabBSkq
         M3/BMk0lSwooKBV/r8kvOBvxHyBJ8DusJ8gv1S4zmjLkrRwiorEsLWICCHV8r96D0LUI
         uNqSGxaVaMKEfLKHQRdnw9Zmv/3lU5zSUgX5MctEfRD+Ajn5mm4cD6yvR7UysVLnRI2H
         znZCOGUD5pXoOJ7RBm/47R/kOenFpy7xdo95yNjF39swOfK0GtU4yMbRE1eJykhn25u+
         GJ6Q==
X-Gm-Message-State: AGi0PuZuCuCbxIe+a5TApX1ZAkvBJ56C6V1DDmF12W7P58Qu7/oro2hK
	m3eA5hFouMO6nTM1/YV5M9VVjRfP
X-Received: by 2002:a2e:90da:: with SMTP id o26mr250512ljg.254.1585097508592;
        Tue, 24 Mar 2020 17:51:48 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.95])
        by smtp.gmail.com with ESMTPSA id l8sm10635890lfc.31.2020.03.24.17.51.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Mar 2020 17:51:48 -0700 (PDT)
Date: Wed, 25 Mar 2020 03:51:46 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6656: rearrange line exceeding 80 characters
Message-ID: <20200325005146.GA19292@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved from the comma character to the bottom line after
for it exceeds 80 characters.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 9439d19..796a716 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -416,7 +416,8 @@ static u16 vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					      frame_len, current_rate, need_ack);
+					      frame_len, current_rate,
+			                      need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_ab.tx.mic.head;
-- 
2.7.4


