X-GM-THRID: 6948788378746748928
X-Received: by 2002:a05:6830:118f:: with SMTP id u15mr7617872otq.43.1617890870119;
        Thu, 08 Apr 2021 07:07:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls1222882oig.11.gmail; Thu, 08
 Apr 2021 07:07:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxw/KSXjeDpMnA3C9mimWor7MOCzriBz+0Y/yji6z2oLWHKwT8aGoadXsX1/7UUDi0oSDFv
X-Received: by 2002:aca:4888:: with SMTP id v130mr6381812oia.3.1617890869417;
        Thu, 08 Apr 2021 07:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617890869; cv=none;
        d=google.com; s=arc-20160816;
        b=MoM68cObhaGtx4UVyXvqXd9AzcluoVsEMSOhhYs07iGtMGOXVZt5SKi6hNRGi923jR
         Ej+5MJynRi8G8a730UPpPEQKj2pYbCJAwQ/2owxPqrUiKrzQBszE+NlJ8PoB581JbL5X
         aGYkSXenU2aM19OzehCK5bmVQnMawbXpdqhyN1R0uOnFKjHDaDfJp1DfUIa26mrS63Yj
         gQDQHQeuw7FEFXuqzP7PZnCrISB6/MqPYv+RJ7vZfiDkZKHBIHC3y8UyDR6MThGaROu5
         p6XNQ5hgxFVYFKtKNJzRAlqqgsrYzrfvUJmTOWWdrBbxfTHCzexykQwWKQuhD73XWjK7
         hAVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=Ax/AwqYay/AbPOEEyXFA5mJm0HalOygWrt8NLfZeB6U3lZyELHlNfn2Vqmw+Osjzi2
         zmWTdU36P2W6GsRDJxUxFneCawy3JGWQi/tiB/AK5+xZ1BWPUF3m/E1aVrAvoHtbBvxM
         BCPO4ykc8CVDIMAZinqRFVzQ47mxec2CiyoR0IQ8uArLO1IguYQeCQBtLBz8T7VXSSKU
         iROyFCm51q2Yu9WIDjqzg4e4ugT3dAHsW/mcPnjqRi6i7sjQgealIf0ldSMKwVIR5b2T
         wWA3D9eLl9k3GKP1RJ+Vg0TLG5O3NhVOGpm1pHifeDKuqtPnH4DIrI44InHZlWu4wYnV
         CbDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oHXWP2bG;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com. [2607:f8b0:4864:20::f32])
        by gmr-mx.google.com with ESMTPS id b17si90111ooq.2.2021.04.08.07.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 07:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) client-ip=2607:f8b0:4864:20::f32;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oHXWP2bG;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f32 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf32.google.com with SMTP id o11so903585qvh.11
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 07:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=oHXWP2bGqx/WEx+RNKLuU6bEMQt589jw9z42sIvZwxkecxAYroGAJMwMfzU7F7U+J2
         OuvQR0a5x0SfkcZBOqQoE03rwQK6v/OAFe7ckWiPCodFbKCPxEw9f6wpepmrCq8ehd/A
         4rPN0M7qmkKQ2ZNjSclrlXWkNmXdhRPfdBe3wW4KGdiJGKugG4WWnbmO3Y2QmFEp4thI
         1eHLH8vpeflGx3C3iNw4NBBgwL7yillA29nUnKxktcfXx799Kl5ExVkeEiMblWtucd2B
         h8s7hJPzrmXutsRWj6SkNjafvQujSuKt61zZUE3fhx5R5YWAfC3c+DmilXoO78D0Slrl
         Vk9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=s3WuK8FMaagGUoOOJXMKerH9SHcx9yPTW4mFvZi5iCg1f4s9Ovfgay23vkHkXTiLAE
         3ODy/XHpSj35klUrydFvhHmFBoi0XaSYhiKkfTW+kw/Kv6zYOZq6iz/M8qANMOpc7QqZ
         KuXKHrSACjmPfZPHiZF0O9r9cweLNP66HRKddldVdMAeCakNMQdehBO2UZj3a6rycQZd
         L/41T7/qmLBHZovIOwjl5kpopLxHvyNvIke7fGs+D6Il/KLZZhYVzbuER90+ECs4Ye1H
         HDFwsXhbJwFvk+oRUivHUwz4mesOresL8asesF9GQQxFiBJINsTOzT//j/K4VT8MeKpX
         iYdQ==
X-Gm-Message-State: AOAM5338T1SgklrJSr5mg/jtXUxRyXGc/Jf+bnXi0dwIiWawaA/28EW3
	TmP7YOBiJ6dj3jS6mDt9HWkpx91ZwhJLL6cU
X-Received: by 2002:a0c:bd25:: with SMTP id m37mr5407569qvg.17.1617890868905;
        Thu, 08 Apr 2021 07:07:48 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:175e:8b29:c386:d20e])
        by smtp.gmail.com with ESMTPSA id b9sm17761584qtx.38.2021.04.08.07.07.48
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 08 Apr 2021 07:07:48 -0700 (PDT)
Date: Thu, 8 Apr 2021 11:07:46 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2 v2] staging: media: hantro: Align line break to the open
 parenthesis in file hantro_mpeg2.c
Message-ID: <8209d15ab3a8391b74939cb942daffc556d72942.1617890467.git.alinesantanacordeiro@gmail.com>
References: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/hantro/hantro_mpeg2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_mpeg2.c b/drivers/staging/media/hantro/hantro_mpeg2.c
index 1d334e6..53a99a9 100644
--- a/drivers/staging/media/hantro/hantro_mpeg2.c
+++ b/drivers/staging/media/hantro/hantro_mpeg2.c
@@ -19,7 +19,7 @@ static const u8 zigzag[64] = {
 };
 
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
-	const struct v4l2_ctrl_mpeg2_quantization *ctrl)
+				  const struct v4l2_ctrl_mpeg2_quantization *ctrl)
 {
 	int i, n;
 
-- 
2.7.4


