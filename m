X-GM-THRID: 6949315230484660224
X-Received: by 2002:a05:622a:1c5:: with SMTP id t5mr14626024qtw.49.1618013538613;
        Fri, 09 Apr 2021 17:12:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:224c:: with SMTP id c12ls1825619qvc.1.gmail; Fri,
 09 Apr 2021 17:12:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxw7haoJxsmHU9DjGYyb0K6xvFyWpYRcDx38RUuXP2Gy2JVtavhyJ0oWyJpuDrPQYwKPUdX
X-Received: by 2002:a05:6214:a6b:: with SMTP id ef11mr16530928qvb.43.1618013537886;
        Fri, 09 Apr 2021 17:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618013537; cv=none;
        d=google.com; s=arc-20160816;
        b=Sw9DUgjh09KWSHE735o0dhVK2IrReF93bPX6gdMzVAbudCNTp6o3bzRqez/Fgg4MbH
         Us7nhtB3oASwRbUIj8KABHmVIg2lz2reIBGwzkiDTyw3NaOtbdA7eoRX8PDAnxoik/O5
         w11Ty9OzR9V/f4D6nrRnA0XAj9QdSn8JkDBtntkdl8nHuFar5z/K7/BOSsyTdxEARAgI
         JPNW0HzEpDLf76QqZoBHKpSZlWQvJqEHsxJVn1q7WnFjX2Y9QQotq+OxukX3onuQA4Ob
         QYyX/s+koYViFm7yrSa6OAy8gV2TTHqQFVoBsaAtYy2C9Q9PJslxIh/JiZLP+P/NGrl/
         jpUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=2lxfN5ByZEbEMKEjmWp1Q7WunCY5qRG4cae/+TcjBiw=;
        b=LYm+4EGDy3qIzES1vCk/ffqqB1n7b+QQkUq8zz8mnQ5k9A+IhCA2g3urqy1cUCAY/k
         lEUtXgzeO5jgFsSl6D79COjcM2UBuJwU7NK/UqIhFBSZdqjY8phC6Fa0OZ9r+L6abw2P
         fXw0a/Oc4iDPbwJjJ+BhWOJiNL+9cvZvDG7YNxC8+BInde22M19N0GfLg8bx6wHlQJZ+
         TYtxDodcYMp0Yw8tn92/ioQhFQBMSMjndBi3L8kai9XTUe0YtXIuyMln7RjPOF47osho
         GphlWTqlXnTcgOHap2afiV5RbRr0YXF4/Yu34iJBECxPh3r2o5zy5ELcVzjSxENurJ8O
         tQ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNLrhJg0;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id w1si215063qkp.4.2021.04.09.17.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 17:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNLrhJg0;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1031.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso3984387pjb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 17:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=2lxfN5ByZEbEMKEjmWp1Q7WunCY5qRG4cae/+TcjBiw=;
        b=nNLrhJg01t54nH/nElkvEhcvw2owYft633IxmHULTyL9BdkUnROR8QFoRypeZfkKRa
         etaDJ1PEK3ghpeEaXfO1legoCBaVQ55m9elz9GtyRAmCBd7hD2+jsvZZG16od8vZSaOp
         fcgc85nlx9VDpTU0rudcm/NrKKvTVpBZ+tZbsAFLbN6do8LQlndorth2PBAssBTrH0+o
         IR4LXu56UUnTb4W5dqCF4cc2PHfq4eP+ENoIMaa9BaZ6WQJZTgK30qXW98ydovS+xffZ
         pGoeIIpXDxzVuErKvFY1ebqZIcEUp/eY+S29dW7kQaTVz1fUVYVvGdus9WhMMpSrPxtU
         GdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=2lxfN5ByZEbEMKEjmWp1Q7WunCY5qRG4cae/+TcjBiw=;
        b=NshiYW/OaHtt6MjeRPV1MrzbYh1vJpWIyS28QqZTsTCeyVLzkU4IhPXpdHMzemzmpt
         LXoDoYK7hndFPvfE0NjyyvZR/m6nfvNb8+ysZvrVvPgkppDvu+TrnBhYmaGbAG0ZQHTf
         0oqfHTgpmR8eY7EU9MtZpcNyELJCoqNxyFvq/E8Hek6Tx3UYhtOEpeF++rEI3xm1Z3rV
         rO/A4RKuGMOTP+VT1k17xXB9YuvmvDM1lhqTyk54VhfBWEgJyEWGoFqF5RQXqf4++thT
         J2Os4e/ss5Cc2YFqNOeMu/4AWF5Sfgq8oUCgfiOcauKBftzv8swqhbUmDwCQSduw2r6/
         9p0A==
X-Gm-Message-State: AOAM532+45L5QwSpBGx2jYt0osv0i/m9kL8zm+q4QMeLyCkwBFMa6jlh
	uwzexTHf3UyHH3243NxB+5NQ8t2JIsZR7w==
X-Received: by 2002:a17:90a:2bc4:: with SMTP id n4mr5147236pje.52.1618013536891;
        Fri, 09 Apr 2021 17:12:16 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s19sm3203011pfh.168.2021.04.09.17.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 17:12:16 -0700 (PDT)
Date: Sat, 10 Apr 2021 05:42:10 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8192e: remove unnecesasry f-trace like logging
Message-ID: <YHDtWizzh5EVLL4/@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed Check: Remove unnecessary f-trace like logging by simply deleting
that statement as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 476875125e87..4457c1acfbf6 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -136,7 +136,6 @@ void TSInitialize(struct rtllib_device *ieee)
 	struct rx_reorder_entry *pRxReorderEntry = ieee->RxReorderEntry;
 	u8				count = 0;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
 	INIT_LIST_HEAD(&ieee->Tx_TS_Admit_List);
 	INIT_LIST_HEAD(&ieee->Tx_TS_Pending_List);
 	INIT_LIST_HEAD(&ieee->Tx_TS_Unused_List);
-- 
2.30.2


