X-GM-THRID: 6806516278512058368
X-Received: by 2002:a19:dc05:: with SMTP id t5mr7366909lfg.156.1584765579681;
        Fri, 20 Mar 2020 21:39:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls1805290ljg.5.gmail; Fri, 20 Mar
 2020 21:39:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuB65i7PFFM0dBDJw5lojzRRH/4ArKj09XDzsysvs3UxXar8HO9LnSuJ3unQnqBnjzgp/jn
X-Received: by 2002:a2e:5450:: with SMTP id y16mr7723682ljd.121.1584765578614;
        Fri, 20 Mar 2020 21:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584765578; cv=none;
        d=google.com; s=arc-20160816;
        b=YlF/8KNBra2+gR7xfRjxK+6Wf3lgr9BN3OTQaE4q1amnSijVkDr5iFEn8SHouGkQmV
         eLiYkPlNtJgNKj39tsyOQR44zoyav5vl5IAjp1izOuMLdAAgw95hgC5HFbMLAHbFfzED
         U9RV6Jf0Yci6jOO2Ny3G4Mavx0N6Bte85ZERj8R7m7zgZE+8SaBUB/NEvkwFmG/Ohk5C
         z7yYcjOIN7EwDu71ggVa8wkNEzz2ywX0iuyeUG4Qw5gqOTf9p3Jkq/zz5z92s8gz3ZmZ
         q1ROWZoAjv4Sep3ru78fwKylpofyZQ0JfXFfzFfpfQQsEpK0eQWEgtOqwS+LV1Jcnv7W
         kq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GUlbhxgUisKyFXtQZtX3cgZf60wlToRYLwZhWbCv2Lo=;
        b=YcbbRYeTUfj11rItxwYRHWum7rpRSV3SVEdqsnEL157NpDPK1ssaM77Gz0Gb35o535
         ZILj4sjKqW3PW4zhoQFv+Hyr3pejgYyRAyfnlpIyVYdOtTGeQKQ++Wr6GQx5S/GlPOGT
         hc/P8ohY6L98z+7U2ruWkeXiDrT71RnZqI/UeIEzxLUemVmzj7ayLg1L0VULOEktpHdY
         ITpcKNR/0Oluwh9w/v7dDr/mX7QYoTzY6PrVpcOO1nhUGDkFArP4au7FlLc0tRcnopOy
         qq7asYK2//qqBQ+fxzrlxea4JsXk0G7XpbPwslUqATFwQm6sHUQa84+tGz5IBVJ4JW5Y
         wa9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id t17si134402lff.0.2020.03.20.21.39.38
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 21:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 24274 invoked from network); 21 Mar 2020 04:39:37 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 04:39:37 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 3/3] staging: rtl8723bs: os_dep: Remove whitespace characters in code line
Date: Sat, 21 Mar 2020 10:08:59 +0530
Message-Id: <27b60d20868203efdc5975803f5f9d43e46526dd.1584764104.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584764104.git.vkor@vkten.in>
References: <cover.1584764104.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove four leading whitespace characters in code line.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Drop a code line with correct leading whitespace
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 9e1b42852500..60c35d92ba29 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -295,11 +295,11 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 _recv_indicatepkt_drop:
 
-	 /* enqueue back to free_recv_queue */
-	 rtw_free_recvframe(precv_frame, pfree_recv_queue);
+	/* enqueue back to free_recv_queue */
+	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-	 DBG_COUNTER(padapter->rx_logs.os_indicate_err);
-	 return _FAIL;
+	DBG_COUNTER(padapter->rx_logs.os_indicate_err);
+	return _FAIL;
 }
 
 void rtw_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
-- 
2.20.1


