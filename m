X-GM-THRID: 6802585330019991552
X-Received: by 2002:a25:6811:: with SMTP id d17mr2032844ybc.265.1583850331496;
        Tue, 10 Mar 2020 07:25:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls3691221ybi.0.gmail; Tue, 10 Mar
 2020 07:25:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuZetRO3qh4VN7XpqOP+7saw4f6m3Kk1Rvbo775KgYvCksZrd59lDm8aa7AX9D/31cE9rca
X-Received: by 2002:a25:8002:: with SMTP id m2mr23042994ybk.320.1583850330101;
        Tue, 10 Mar 2020 07:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850330; cv=none;
        d=google.com; s=arc-20160816;
        b=WeYEmB/ala2M6TTU5ZHJ8H9PVTBk2AXIqNrZhuaBHSyo3YugYHBMkGiSXdVwadtPwY
         6DRl2zst0Aoe84AR7FOdnjlUYpo+Sj2NtodDPHcyEmn05N7iZ3e7oUhdDm2lx3Qsqdsc
         snHGmpxyNEWK3LRkOGNhEJWbxxSkn+cwLIGAR7yYb987UakhfFIyUuEL8EcEpyhzkqkZ
         lsLV2DKwx5nCHVLl/Es/l7rFuKRCwOXQk6xMa874I5qlknDT0NPQGU0egqVZxBTsE2OQ
         UGOK0KmhEWH2k1SULuutoMYAeGcoWn3mqewlWXG7vI6DOLZnDMU8sk0Nl4Syd0bB1Jxt
         c47A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=4achyvC4jl/Z45B7MwId8VnA+9xtv8qpgMgE18U03ug=;
        b=a8jIH10/tKedQj9/lM9HLvTE0d+NFNAL9onJ3fEDDjLnQwTviNmk5BrF1Sef5DhEa/
         bgfssRNl3sotkE6rnFNfvMvypeuAm0p0ARd2Y6UvptivtUsC8ONHEp7XdFaRU+HtU7au
         FdAOhsStXfA5dred1+azjKrwOZFQnINyYFF3g2Qvrd5/GazWZwIK9snww6fUiIsGTf01
         RlCBM9a9x8L1ColiTVUWUH/gUG0dao+FU9wF7fhpJbUurnxUydkN6QH7bmCtRglGVotd
         0rjeNw+eSDLf6LW5fLI1ucznqRiNa6vmCEqaT+SZenR/FdAkoa2wz6zlbFXtGTKXL++G
         Q1BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SmDnfrSF;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id l1si197188ybt.2.2020.03.10.07.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:28 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SmDnfrSF;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id g12so5498600plo.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=4achyvC4jl/Z45B7MwId8VnA+9xtv8qpgMgE18U03ug=;
        b=SmDnfrSFkjdm5v3co94xqSmwmzBWLv93jlLy1UhWC+OZCLzRAUX1cMcCT965IG3n9Q
         6LAHSHd5okgbT2IbeqKHNdMvYiCXJT3NtS+JcXBN3kgzr/QSLQK0V4rRti6d2Gpi3/JW
         nOjFnvESoV8KDBs/yqhyc3OHWiTYkDL05vSoY0qISKHWaezlusxsZaLObvFMr4C1opzi
         FuETgNWW+Y3CwSrhhmCTr3fszyj0jomOenYQQcHD/NC3b17hxPtoTAVgh0on7PH9nlBh
         ZRqbMnb9yFqERPOGgeStZE6aBvh6myYR8U8WCW877lYB0hjiBp84Tc01pbVySr9ogyvz
         TAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=4achyvC4jl/Z45B7MwId8VnA+9xtv8qpgMgE18U03ug=;
        b=h1w7FarUszS5h3KlzXBEbzS3oaWCKq+co5twxCf02BTvyHYhNyTrXXB3++M66r79eP
         WvWs//UWByTjMfTsuNFa9QYpg2JVq30APH7TJLGsVeXvxfW8VVrxG8xEXFSjD9F0gMIW
         3PaOm8TOirGe1V3s3mjgSS7aKyNFJviHsuG49S1RNQnsahPp2N+huBZX6A/ZA2vRX49D
         Qgj99FhjavqwplLIhXmHnDYp/XwN9ZJuPkpQ46IQnzEhUD6dT7B6yNJsHcJqqUmsoGco
         YcPamd/g9ELm+8naShxwCK5OtJOtRNjBOkYSK9uQXfzxJ1ESLuRKyv/79QY5YTZIe/yl
         ZBQA==
X-Gm-Message-State: ANhLgQ2BUIZT1RLP4xYpyNYteVc8mt3i1qpfHzSwWc8qGucP4uBNE4Tz
	mmfy+hj4LLRoJGbCmlSJQJKNioex7XAdng==
X-Received: by 2002:a17:90a:f0d4:: with SMTP id fa20mr1934749pjb.153.1583850327991;
        Tue, 10 Mar 2020 07:25:27 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id s25sm21139013pfe.147.2020.03.10.07.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:27 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 1/6] staging: wfx: data_rx.c: remove space after cast
Date: Tue, 10 Mar 2020 19:55:04 +0530
Message-Id: <20200310142509.25632-2-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

remove an unesseccary space after a cast in file data_rx.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 2a09f6b978c3..c5b83fedeb55 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -17,7 +17,7 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev,
 				 const struct hif_ind_rx *arg,
 				 struct sk_buff *skb)
 {
-	struct ieee80211_hdr *frame = (struct ieee80211_hdr *) skb->data;
+	struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
 	size_t hdrlen = ieee80211_hdrlen(frame->frame_control);
 	size_t iv_len, icv_len;
 
-- 
2.17.1


