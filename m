X-GM-THRID: 6663618170330284032
X-Received: by 2002:a24:3a4a:: with SMTP id m71mr1142155itm.12.1551745456954;
        Mon, 04 Mar 2019 16:24:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls6074165jaf.3.gmail; Mon, 04 Mar
 2019 16:24:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqwgnXbKUJm6iUVAXx/KvF4zliHX3uYV4aQfaYPGN/pyaneX221K3QQj5cQ4llX4JAqXrjgj
X-Received: by 2002:a02:3c06:: with SMTP id m6mr12715688jaa.9.1551745456104;
        Mon, 04 Mar 2019 16:24:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745456; cv=none;
        d=google.com; s=arc-20160816;
        b=kuktqKJhM9Wy615ZKyL3dPWHmMCv2p9F7aa/Qh/twIJZoQq7jpsr/IBigSZIjF/AUY
         bTdAmHSlUA1nqvRcCcWlXzIT9it8HXvU75ygJ4Fu9G4XNKAUzs4K75UGrfm0QbElzzYB
         YZldkOPYFy33hIZDmUlQFgmvXAiglzpkXE8/Z7PBEfz15xCeTK++PXj7ClZUTK5vlneP
         u/YOV1L//JLEenLw+H4/My9ov5nXss6k9gNSUqp+J3SlQABg7bAirXRhj65P9jHxj3QN
         90w3+jUta67s8IEf+mbp+Kym9TxKF9cyt0gsJqH7pV125+oASgO4MRdsgsPNbv1GAIuM
         VLiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=enneNft37iM6iQD2oB1ioZYTBqZn6Z/Hu+Nspo2sVOtba/EiZc7H13KThJzegmlKCe
         Qp0GlIUUMEU3ZRuXSP0iF1m41RcJdqG38rm0DcE5jDNZosYF2A6Bmv1Xf7hxEfJTgbfM
         XGP+C1mSqrm11LJVqtrc23ThomqvjxKgMmJ+QINF+81LudZ40XVRss5I9Z2INbzRHULb
         9KED7ySL0YtGBUDlsyHCdSOq4/dL4ACJeBWdO3uSPrc0F79SNp25l/MvMl89WyLEeQzv
         mMJ5o5S/cz+OGJn5/tUE2zqD2ba379yDY6VPitjmdze0ItnzMoqEkiP9FIRbyLJuZyBk
         ud1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MFX8W/Ay";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u1si496564itb.2.2019.03.04.16.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:16 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MFX8W/Ay";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id t7so5908166otk.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=MFX8W/AyV2fb/tQW0HP+o0iKijLBCGNkuFdRPK7g4JVv2D1BAwYkxHEBv7nBr6728q
         kRGjVHkLfDmPzm+mv2BL0U3bRr1vJiO3/CKn0jZWo3Ds3p0dZTFXOft/WGWE8THOpsjg
         y/jMKIc6A8yHMCTcCEYmvkdw/EBsa5HnSnSZP12RKAMidlU3CV2ZyXKX/3CzVbcsApy4
         g2i1WdPcwv+sRWw6FhY/+MFp+icr6RipPLAoJH5RKxCfVGy/a6HPzsXGoPK06EOX+m6E
         RETFFYhKZMD+lrRc1WY2m+GhTnFw7GTHQPJCJ54GF0HkMXs8mIFkRCmHnWHp8hSTuLwO
         3T7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=T39omPHvv7Godei7Z+k/MiDQ3+QFtBa9WxheHaOgWUpc+JJejVBzKPEn6IkjTtrIzL
         Q5ABGauYllxIwh/xgDLLmGRgfP65kGC2aCmxjBsjSdJsq4yD4reiXQ6VWVnEibem/QKX
         q7hyLMo4UgELBa23vrhtYRyO3p4m4YvubjSwKvgH28Mb4uYOR/avBNWB2STA/b6OU2N3
         glvf+RvNXuVnfQIoTeZiKFC+f2BESDx/Y3DY4NRQY+efRdFCpIYotRPrgR8EEHRC2H/g
         upo2H9G8U3l16Vk6aBSZ0UKDNraeC49sqavRnpIujRIIdZw40vjCi1VyZ1mTAmAp2RQP
         tdlg==
X-Gm-Message-State: APjAAAVaPtU+aWzFXDWGnv6vTAUugEWYwR80W+BVwHjXDp7VpNsPSkob
	Yk/QIwIhVT8gDvPHtB2yz1o=
X-Received: by 2002:a9d:5d0d:: with SMTP id b13mr14390323oti.53.1551745455655;
        Mon, 04 Mar 2019 16:24:15 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm3420905ois.2.2019.03.04.16.24.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:15 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/5] Staging: vt6655: Fix line over 80 characters
Date: Mon,  4 Mar 2019 18:23:59 -0600
Message-Id: <5e7794fe0da2a05d264d46edb11cb64116b3106d.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>

Fix the warning issued by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index d71022aa3f86..6bbbbe1314d5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
-- 
2.17.1


