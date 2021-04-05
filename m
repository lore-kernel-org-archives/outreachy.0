X-GM-THRID: 6947727064751407104
X-Received: by 2002:a5d:564b:: with SMTP id j11mr30551572wrw.326.1617643765088;
        Mon, 05 Apr 2021 10:29:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls8614066wrd.3.gmail; Mon, 05 Apr
 2021 10:29:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/Fci2WGkb3lewHGbFh4TYOZ0gWWppUyXwo8ymzo5Qz0JBVglHixj7jLWhMwS31TCYS7B5
X-Received: by 2002:a5d:424c:: with SMTP id s12mr3712778wrr.174.1617643763741;
        Mon, 05 Apr 2021 10:29:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617643763; cv=none;
        d=google.com; s=arc-20160816;
        b=O72lVNzy5m6DuMvwQb8OZCbBcI8zwhhE0tgddOqOX5aj4PepL1sLtKGNfeEaK11v+7
         bSwy0oR1/Bf+zJtmm2zMCFPhkjtu57UuqtDO7YJuo7ZsWDMFRbxnkl4ASpcznxkNLTSB
         HwEjy0O9v/55pR7wRW9J/OY+YRffO1yxaTrGrNh8AvRwYEAyme3QL4Au3CZBAqx97INm
         QaXUn+0txBh62e4r+PzqZa806EtjKHYkQLV6JTiykPvC8QY16rBI7+G8Z/Id2iAt/vwZ
         DYDMgwuH3EyPJz9HfY3SkL5iQAcLePON6Aq5RqshuR07k1GIAj+ePE1k/b4hAEE85Mnp
         Jydg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=IbHMPTLRe24Pd8+2GD6131LEb5Zqf3YCRdiVTSad8Sw=;
        b=EWRdNMxd0sPMRHpw/wqA/D1EjWjytitywMDkQYpS/Sbr/2kfoz7B1mF+astparT9PW
         4zeqlsGoGoRDVYDzwHj8SVEfDCj0l58YrPTDf0RXVzlgXQLuyFjw8YFIo/l3UzMnwfxm
         X44Rcpg6lVr0T1m7BoasvW96sOzEOVe1fTKmRxShK6Dggyuckrln6MEPRl8ElRdBYTcq
         rqARZoO3/7JUVFrrEin1rlWfWTAV8FLVyjHVdJ5OtsNRPih8uIKxoR2/LoeRD+mxg/za
         XKTNRNfopDNvcBekMlJ3PRTIodF7fX1zoAsDWOAuJARQ33ccw0YXqUWTEbzxo9Aw0r2I
         VYzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXAtIKMk;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id y12si2208094wrw.3.2021.04.05.10.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 10:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXAtIKMk;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id e18so11532725wrt.6
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 10:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IbHMPTLRe24Pd8+2GD6131LEb5Zqf3YCRdiVTSad8Sw=;
        b=aXAtIKMkdOIlTW0pk1jTMcs3R5NHHI/lXeyz5J78WNSh+wZeZeAv/Xlo+p8LdsOOV2
         KsMMe4Apk4g1YpUkEqWya8nOb8HMBkzJcXMK8WvFJeAwq3kRWPpk1wr3TxR5GppLcnr0
         +LwEF9yzSWv8T0O+qlX7mwqaWYYObJsU1T83m5Nm1vueaUTU5vnMF/5vOEo7Irgsl0dv
         dYB+9WLxVpaLHshwE9izHFfVLJjdAYLzQETjnnUJbVo/L0F41Fffqw5qNVoCkjALYUcQ
         M1PXiYKFiLh3mHYC7JqxI+HLPKPFoXukmuAswOkT6wJoa0GYY3A1uP4Ddhp26pOXQhPx
         9N9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IbHMPTLRe24Pd8+2GD6131LEb5Zqf3YCRdiVTSad8Sw=;
        b=lNdzU+xcxej1mET+NQHxc8AFantg7jlzbOd6tWjKn3lNWNiLzsTWgmfcbGan08uw4X
         DmN6/0bVbDiLl0Cw/fclvBrhz0UL4vacl1e258LgnBaRGxJYqu49ZPbyRePHqCc8QDUC
         smafkzam5grtO+HNbi4ebM/HE0T2lpoavjS+UBnR3MD8ILmV7Fj2IbyldcKHu/VvJfKz
         LvxoAimyYVRz42WGCN/wAQpLcN7VoCCPn3zCAjIlwQ1C7v4ejFIV+eyqYZ7n+0OkiPeb
         sq2GBOE8HfapwsQ0T97u2LzAx7jqhZAe5e0IMqtagPhXt3WnAVLTrS4+vUQjA0CGJJA9
         3A/g==
X-Gm-Message-State: AOAM531WdYfT2uHTpG0olVTYwkUUP2u5103JbozYw8y62LZ6U5jmuv9+
	rv3NfjgMqeg2lFDqATcLzI5s/rhTFBTJnQ==
X-Received: by 2002:adf:9243:: with SMTP id 61mr17346672wrj.11.1617643763484;
        Mon, 05 Apr 2021 10:29:23 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id x1sm17858699wro.66.2021.04.05.10.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:29:23 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8723bs: core: Removed extra blank line
Date: Mon,  5 Apr 2021 18:29:17 +0100
Message-Id: <b2961b2d354722d063e05f92bef5df431b8e7898.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up check of "Blank lines aren't necessary before a close brace '}'"
in rtw_ap.c

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index dc56477eb084..81acc6bcb092 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -910,7 +910,6 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		/* issue beacon frame */
 		if (send_beacon(padapter) == _FAIL)
 			DBG_871X("issue_beacon, fail!\n");
-
 	}
 
 	/* update bc/mc sta_info */
-- 
2.25.1


