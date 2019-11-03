X-GM-THRID: 6755114272133480448
X-Received: by 2002:a1c:9c82:: with SMTP id f124mr20753384wme.25.1572797693696;
        Sun, 03 Nov 2019 08:14:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:efcd:: with SMTP id i13ls5676990wrp.1.gmail; Sun, 03 Nov
 2019 08:14:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqza/BN6yw6Rm70a+Llp+l8JnXcfOB8thepmqcZkZd/ei+Mk0SR1hOFhVEGuZmd5DnWPjwK8
X-Received: by 2002:adf:f744:: with SMTP id z4mr10805753wrp.205.1572797692619;
        Sun, 03 Nov 2019 08:14:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797692; cv=none;
        d=google.com; s=arc-20160816;
        b=k5I4bW/AUrui6uAlNmK8aJWXaYsOASzpVia/eaiqVG3II+6Zye17dhtrI1EqV5rWGP
         XtO1653Q24/MPiH0UgsSV52i4PH+nh9DziHqvBiSSpEbZBuNXRnUNool/vfPjvychqIJ
         H6DhhfkWOqIJU8vmDvgwmLxcTTj097AaW0jv/mF10chQpd6gx3X9b5QLX8v5qMOZvB59
         gGRzbQgf3DLxwRF6LeRJrEx25FytR6Ol4hK+8c7LQN6pP+88IuPTbtVFNfftRSQdAtlw
         j6EN1IF2frZq3SGIqooiiDPlYowBj5nOBzQaUolWDi4GHoAwm9G8tZM5T6LifZS2LpPy
         pwSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dOpQQKelOC3tNh3BQzXryGleQAyrlg7IJKFcEpASwfY=;
        b=O5dpCIy3QBcNuGc42PrgdDEDQjI7ido/rbFoZEm6wlVorFxi6IlNLRCy5MUnt2eB1F
         J9jT4G8f9q2Ik3or8FXe7fUKSivrNzFBOy6u4Syq34vhrS0U7KECTx7mgERQ/ovI5YVW
         O4BK2dU1hVasCnufTU7PFTgvLqCr8cFQyRDZFoVB1ZoGnw15JvADFV/3ivIC2zAnb2o/
         bfi9wCkJ3lr0f/RFwbvpuzpocJl2/LDYBHGwk7CBrmvmU5NhM7SPTQ6TX7m0DYCxwvW3
         5uHhiKRmPYXP9ilpkm1S42N7CIS+OgFxPF7XwSq7F/TTECokgums9/FTj0O3Zewol+I9
         JrPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IgrZL2/O";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y185si703536wmd.4.2019.11.03.08.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:14:52 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IgrZL2/O";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id p4so14345969wrm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dOpQQKelOC3tNh3BQzXryGleQAyrlg7IJKFcEpASwfY=;
        b=IgrZL2/O7af0/h0rDNoei6GdRFKc+xVQjFWdvXZ6effnYI9KYs6fXpa38jifVn2F68
         J0Wr7TO18bQp9DnMrhhXnXYKBm5l0FTmgF1XKoxoLGvHKlEnYD3vLdETQVCmt412hye/
         DZx1zkilc8lX1EWhqth3GqYaLUNaF52RjH/g4VGIUDltZ5KVaPQX8jjf0C6Vb9FcpqVm
         4IcOnFL4Fztjo15b7/AUhS96foLp1t/q4qpFuT5B1rcxx3YWMWs7E4tmm741DjkRUTsm
         fyilPcvgIUqRo8hSVWeoHSDNSfAlbmSpU3vHMFcVykRXwHNKOU8cRYfOa4rNTZ6NWyZ1
         kwww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dOpQQKelOC3tNh3BQzXryGleQAyrlg7IJKFcEpASwfY=;
        b=ukPmJGoHmiFs66GU3iT1RqN8tr/yIWJfdfiUI+/rX9ml4pO+kwmOQw4494aGY9TzGl
         SOOpvgSJq7jcCfvjlrPqAGyS+lZeTGQhre/NOFQVdJn1fO5ncHecbmTouB1uV3fuAWkY
         Goa5ZiQpRMiS/PiPC8bOL0dqrC+pHSAT5A8VYwBF76sJB+3zzzeUFMT+uNNmbXuz/fT4
         mTcAgOyWL8Ywa90Wr6FSrzt8ySEg9jMHeUmlnYckgbXlx4n0g9vYJtwjrycJoGVik8jQ
         kPiPYjfYXi99QpAY0uyGcKBSgLQbXxNiVBRj/3yJ6ebf7tkYpXMsU0/DVX5zV7Uf2Zco
         6Dbw==
X-Gm-Message-State: APjAAAWIW+F5xkrF6JOlmx2hWKSA0OflPlsuBalG2GdHA3vGguLcGW0v
	/uXOz47eT5mat19FRveuaTA=
X-Received: by 2002:adf:ec89:: with SMTP id z9mr4715918wrn.153.1572797692280;
        Sun, 03 Nov 2019 08:14:52 -0800 (PST)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:fd8b:953d:f833:bf1a])
        by smtp.gmail.com with ESMTPSA id d16sm16439315wmb.27.2019.11.03.08.14.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Nov 2019 08:14:51 -0800 (PST)
Date: Sun, 3 Nov 2019 16:14:50 +0000
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Subject: [PATCH v2 2/3] Staging: media: omap4iss: Add comment to memory
 barrier
Message-ID: <55eb1841b82cb2b5506a219ce217ebf1501e60ef.1572797322.git.chime.evan.dri.devel@gmail.com>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix "WARNING: memory barrier without comment" from checkpath. Add comment
to memory barrier smp_wmb() on line 653

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 5156ad8e4b96..ce34c19874c7 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -650,7 +650,7 @@ int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
 	if (video->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_UNDERRUN) {
 		spin_unlock_irqrestore(&video->qlock, flags);
 		atomic_set(stopping, 0);
-		smp_wmb();
+		smp_wmb(); /* Prevent stores reordering across the barrier */
 		return 0;
 	}
 	spin_unlock_irqrestore(&video->qlock, flags);
-- 
2.17.1


