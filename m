X-GM-THRID: 6801909209397985280
X-Received: by 2002:aa7:8283:: with SMTP id s3mr17155500pfm.106.1583772937298;
        Mon, 09 Mar 2020 09:55:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls3631030pfd.4.gmail; Mon, 09
 Mar 2020 09:55:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKrxjnO9ZgKp1/qJdoH3XFnmk18H3xkvT+LEKQ7gowK9VlVGaSwUP/Jq6unxcO3uqTUkMT
X-Received: by 2002:aa7:8089:: with SMTP id v9mr18217631pff.182.1583772935628;
        Mon, 09 Mar 2020 09:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583772935; cv=none;
        d=google.com; s=arc-20160816;
        b=dvjtS89Eb+mS2J6lyCOhmT8OLiSnVbaBrpRKxhWI6dFlN8nqPpsBEVsvLdaUNc5uT0
         6vVvGa5VaY2gKiw97Y8jHZiwzfk2V5IAPlEGxRdf6flhz/b9fBQPC/mvBtJ48V/kokpX
         hEpf14pBDX5we0cpAT3d0DzKbXSN/WcmZUiLwkTyuD+Ubguk+cBoO1+KDbwJZH5v/5cf
         urofB4KOA7nWMWb8554uCmsYUmTN3jtCsVIgUxEk0eLkLVYOVuLlUEc7hUR8rdUJBZK0
         j/VasHq1Mq2PPq5JqVzzDD9FEN3BWcWE7nj9HYF/lhkrWzbFCyDUxwZCV8R+6vDgUQaM
         nGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=E1dRMWgeE/IftHSpKoeixVi9PAw4jKku8EPZUeqrwGRxhBpqaeapdALEhYweqtgOw3
         8ufgdqis8llzYCO83CYmh16BziqrAx3D0DBZxxZ4Gs4uds8T5v7JfiFxs7naEJTe99KS
         +cIjqO0zH0NOJQYFVlni49MmCgIwcY+IiAsARHr+DsdsTStQMNlPBULvmCZQhi0zesTO
         O4cwtJj3A7lJkfUpA3NlBxTYyXtk6Ym6Mm+QWevQnPKkNWXQNTPqXY0Q8ThGMdKtgUl0
         jnfmsie0LvXXuPiV7VWyjYDdfEnhTVJo9Yhfznj1oYzr2oETYA2HkAQaJZMPj0MYJshk
         J0Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tBOPlSSN;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y3si607799plr.1.2020.03.09.09.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tBOPlSSN;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id w65so4535349pfb.6
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=tBOPlSSNkfx3JFtNIGP1bSkkN4uGrXllyYkWBQxCfZkx1fW35X6hcGylnCRZ6WpZrW
         MUDlY9bTCPIgC0cwrnmG581DohdT713aV5X4hpts9OeYJtiCLf7Azf/uIrjbxiUIS3em
         RbqwTjPtlVyp+ygPQewUOo4TBd/5oR2N4/xa2FuNRdOs1Z75A2VFjBEg5NbXxwyQSaJS
         6DLltN6tMvlBkXkda1kj7A155tSztgQm7CB34yvBP5jICbOx71xJqSNMKeSTbjDeZFJX
         YuS3yem9hmKVjxSucUKuTDKDwYJcxRRxIEjsnvBwbbFqoWhEhdRICIJ2lFSWd8x9uVbn
         9tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KZcBSne3NQL5WYhAMhkrZSDj6PrNqCRZgDHjM/oqLAs=;
        b=c4BsLRXAhCE4GHn+lceuoSPmmeNevXMTsUYJc48zUS2eLkydFsTcDiDo9dIxxOeQBP
         LGONoGMdGih5aG8LVUSWLTHZ+VOwS2cqCVv5qp+TyXS9aCiN+RbIzJlFMaYV1oTBg5FB
         Dmg4wVJxj+OIwSmw6FAC/FloOyayQ4F6GMV0vqtL78VBN8+Jn+/YlQ4WVK5U3vnLrunc
         8NWNnjWB4eAy8TH2tqWnSzJFgMHNmukXKu4EpdLBOkPwmnMu/UmCDu/ifQit9gRkcz6x
         qB6sH5bFCGAc0DAMpaUrBefUV5nhFVo0wsPc76h5yoIVpy3gvSgImFpjXXp4fwXHbbIQ
         0fBQ==
X-Gm-Message-State: ANhLgQ2QoyvEP9Td6RTggK8PcfhZ44tu0HWJRYTjHd11hvjTYC1zOX4r
	0C1iELRjijNjwqlgLM/R7Kg=
X-Received: by 2002:a63:c601:: with SMTP id w1mr16495671pgg.449.1583772935313;
        Mon, 09 Mar 2020 09:55:35 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id a31sm29415355pgl.58.2020.03.09.09.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:55:34 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: wfx: remove blank line
Date: Mon,  9 Mar 2020 22:25:28 +0530
Message-Id: <20200309165528.5721-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Blank line is not necessary before a close brace '}', remove it.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/wfx/data_rx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 5d198457c6ce..2a09f6b978c3 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -62,7 +62,6 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev,
 	memmove(skb->data + iv_len, skb->data, hdrlen);
 	skb_pull(skb, iv_len);
 	return 0;
-
 }
 
 void wfx_rx_cb(struct wfx_vif *wvif,
-- 
2.17.1


