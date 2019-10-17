X-GM-THRID: 6746399399110246400
X-Received: by 2002:a05:620a:634:: with SMTP id 20mr1420339qkv.330.1571285072615;
        Wed, 16 Oct 2019 21:04:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls302161qkf.1.gmail; Wed, 16 Oct
 2019 21:04:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQUDghNukXF1hazPLLBlY9T+n8C8wm5etA/kgVkecnz+yzTqD/6uIoXtwdLirj4I0KEXvD
X-Received: by 2002:a37:5b46:: with SMTP id p67mr1442647qkb.318.1571285071259;
        Wed, 16 Oct 2019 21:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571285071; cv=none;
        d=google.com; s=arc-20160816;
        b=zLaxzYdRXkkAAehDv8XhaP/a/Bp17WhNCHFemwxhD4xjGxXYM4ECRt9ROLpgfHhVYy
         niFnfhXdVBks6VfBeb03QGQc5PGg9TW2inOZ1ogypQ3PgLF4GqZIumb6eKirbofnCA6p
         UnmErk5GO9SdImmMSRDFgzpBZbUW3XzrbWKyXoGIFrohXyY7qhRPmd3+UXdTKFnlcyVI
         b9g0uaqo2MUAPbsLhFANVR0BQ9usPinwfy35gsqHdBHCjh6/nzKUNtyEW0XGV/KyQ7uy
         PtQW741/KRUx3Ani9+HNz/sToUXWTSV15QhLmMHtgxiCfev0OrFcvL7rZLbl6E3YYTya
         xBxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YXEWW7RzqD3/TKSOJVGCz+Gj5RB41m5JbK55q3My8v0=;
        b=ChhjvoAPp/9le9n8Oed4PmZbxAs91OkyjX3+p/PnYrfYB9qYczo5+zo9Wl2LsLDRgD
         +0vEesnO6+9dqpqbqEMU/cnNmvqhE/y6ZiBnTGmtn/WSbuUClNCCokH6B+bu5zvn4ceH
         FlNQuVekkjOk7NDKhofhnhd85ddJFDzlqlz7tplVoyQoyBaK2DH6MJbTxo1bMBzNlR++
         qfsLJqb4vYKLJ2mAyXMNMP3iEY3AJR5YnvaBKaTNozH8kATHjXBDHkLCV2n24pk0fmOF
         O/UrFayITiy19CToCBd+6lTNYRffri3dJ0oAtQM+eZnDdpicjiH++hrRQ0vdxwAIVAS9
         4hnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orkIw3ht;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id o13si47543qkj.4.2019.10.16.21.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orkIw3ht;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id f16so621357qkl.9
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YXEWW7RzqD3/TKSOJVGCz+Gj5RB41m5JbK55q3My8v0=;
        b=orkIw3htrIgOxNbUm+apICHHZp9a0AOxSwYP2tUa8NAiJi9gmTlC67QUCGH9Sgjt1y
         0Jevqv/E57E8R07QS6zr9Xp5pabq5HFwmWhYnXRT3QUw62gRMWzewp9U7OIg4eBrN/1v
         40GP5ClaZzvtVHPc/G/3jrqs+kacIa3SBwWvGDTFTAQ6vqp6TR0NlnaLHJ+Dpij6XL5K
         o6IArGriOM/pAB/GWCV2ZPBJNmIlDA/CUsDgNFIYi43DVZGkmZFGxyFd5CQpdx4IcpoP
         +C+CF8VPfRhcr6iLZ5Eq6MMQnNw9iSj9J+f9bFHKfzR3i+u7XCHAzzPZDoa+57WcKkq8
         5Yjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=YXEWW7RzqD3/TKSOJVGCz+Gj5RB41m5JbK55q3My8v0=;
        b=gRzkLYuWX6vHPJutQBmQV0Jvb3BWIjW1rbnz+LU3bBqEmfwDJ7+QCwsIp47douf1OO
         1xZesZI+D5o8nRAZdhxxDfOOAJtA9AePX/NKpuIcGQOxRAruRuHAPT0Ivsdha61janyh
         oskJscVMKiOHgKyIXOhObsX7KBrrrtSAhh4dO+AfsVmH16SsWG49ohf3hPPtlgKvx8IO
         5riwEz8eUdsC3SRLk2ODlD77df9SpJjy8dmV4UGxbd6UY+SfyMtMvXY2OiW6r9P5h5l/
         adjny+8tASQPAsDj+girTCpF+sGuEIuzzae87hpv2d1A+JQpdM7S1OTorqOEnb3HEibw
         77/w==
X-Gm-Message-State: APjAAAVfrfNmPfrsI43GgdYKigCOrn00R3/ZrfPy1KAOeqZSEq7ltg7H
	67FzaZgXJHVtU6BbSFHD9DA=
X-Received: by 2002:a37:9a0d:: with SMTP id c13mr1415726qke.93.1571285071039;
        Wed, 16 Oct 2019 21:04:31 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id 187sm753389qki.80.2019.10.16.21.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:04:30 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:04:28 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/7] staging: rtl8723bs: Fix function call format
Message-ID: <828984012f4c58f9d10647511f98005e4d1d5184.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Fix function call format by following the coding style guidelines
for argument wrapping in function calls.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index ea6e5bad2a51..bf3fdf6d539b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1549,7 +1549,7 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 }
 
 static sint aes_decipher(u8 *key, uint	hdrlen,
-			u8 *pframe, uint plen)
+			 u8 *pframe, uint plen)
 {
 	static u8 message[MAX_MSG_SIZE];
 	uint	qc_exists, a4_exists, i, j, payload_remainder,
@@ -1625,15 +1625,10 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_index = hdrlen + 8; /*  8 is for extiv */
 
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(
-				ctr_preload,
-				a4_exists,
-				qc_exists,
-				pframe,
-				pn_vector,
-				i + 1,
-				frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
-			);
+		construct_ctr_preload(ctr_preload, a4_exists,
+				      qc_exists, pframe,
+				      pn_vector, i + 1,
+				      frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
 
 			aes128k128d(key, ctr_preload, aes_out);
 			bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
-- 
2.20.1


