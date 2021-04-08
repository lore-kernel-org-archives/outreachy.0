X-GM-THRID: 6948788358969556992
X-Received: by 2002:a9d:65cf:: with SMTP id z15mr7655004oth.310.1617890866815;
        Thu, 08 Apr 2021 07:07:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3a44:: with SMTP id h65ls1227212oia.7.gmail; Thu, 08 Apr
 2021 07:07:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJgj/8IHxmSx3TAvk+xCBLTkTDW9z0Q6h4BcvLbduTySyUxa0PM5JoZVcMs+mW1C+2zcD8
X-Received: by 2002:aca:c7c3:: with SMTP id x186mr6302038oif.96.1617890865982;
        Thu, 08 Apr 2021 07:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617890865; cv=none;
        d=google.com; s=arc-20160816;
        b=HH+bX4obo8NCRPrII/y/r6J0kIkN+4vxq4/lwjR/rxgU2G0vG/KLPn+fXHc/unKOYo
         NZwF31gHOHoDJaSsXQ9l/AlTUI7EtgDLWlTWdISL1o99fFwJelZeeIurrcYYpiEwCBLK
         FSbZ+6u3T8H9zuYXQ7PDWxUAS0yDoaPjpixpp/c7wXyAuKER5u3pG/TdVlF0xon6Q2X8
         WL63rs/sLKIpMYz7aIw0DG7nIEw0+yK1q3B6lKXHYbUsu1wZ3+4TdzHJ2zRQdWf7+p0c
         ilFq5QrtaolqFkKlDOA8Tpy70NtpJZ79wtxnZucGOHiSEsHtWH7f7kcmQ/DlfDFv0rw1
         2Tsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=dfG01TkAIDl05z8VNuDRxm+BqAmBId1k66i3qll3wMRxeYOn+RJ0QUsCmIYtFW0oKP
         Ev4oI+jTKmkvlyIbRZbJnEayJTkQ1wIn53Wx7HoNc9SzyiTB4SdDMJ3bbfbqBAZHLoMw
         GqJftNWROcswExKVdDV51ybMGk38vXplpxi3RjGS/Z+b/6wSIPlK0O3sXET0ymJuNR5k
         zd6WLKZMztkQjUCwjzg3b8UgL+YS7E2JWmlXfktHeFzqoF9a2XVSNW2JTS99XfKhk3Yl
         hCCd+HQn4MSV8dPzd2MXoYrSkmm/jF+rpnfwN80gZyhWWIAkCW3ZH0s4neKSJEZuWfY7
         j2dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oozl2fPn;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id i14si1992877ots.4.2021.04.08.07.07.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 07:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oozl2fPn;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72e.google.com with SMTP id q26so2256534qkm.6
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 07:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=Oozl2fPn+qxC9SB8PVO+Mmcec6ecQ1nNUJL+42GibZJFjhqkkoVh16IIMtAKdo5NWB
         nHJCyci2Sg8pq/uDnihvClvSIADUJd21eq0YcZX7m63GilZuaa0JlqzXTZdFSBwnl0Iy
         1S/QxYArGZrXgaVSD+XGpekzl2n5+HO9/UKLhw8j71hoULuRDDzqR5sGSa/LrV8UDuJM
         LGaUoFznTQjnMWtiNNwWxBUfu7mvH/5IZ4zn1nKnahtx3/Wt4PEY/DqbgIQEEXC9kTK6
         l9sg6JHdMSOFeqqw2nVOtNMPf4Xsr5puzYtyfQhM5CMoEyU5KkH7fqQvIjzCPf1nwfDQ
         Ch0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rBvCDlUD9+QrMvuUFtxmfpbAHHnvTaccTwMtx3DApDw=;
        b=kJDg6AFpHUfEyC+76F5tjY176E2Q+wepjsqd7l8D4jjvZmrPbN333jRjNTu5lLgNOC
         9+jK+1ymKboKmK9Aymp3RMPfXeoS42PPLqK2groHZuP9qLb+z6AM9LQx+SClubKrotht
         rey/gdkdhgm1L/xdPn996KSCz/K4jRUUsigoSCTxBB4B3BHFdhWNfxvC5KfMKwt4uhjO
         EN/E5YUuMmsZnp7BOt9sd7sx1K8t0d+rB+XG9B3rmuHDwk/H1g5Txfud05Z5e8hBZH00
         w6UjnPwUklc6A3+ybNpxPpEeVgHyGKGFZgj1AV/tGtTZrZHsKD9/Q20RlDn5ZWZIst5A
         U8Bg==
X-Gm-Message-State: AOAM532Htg/W6YrExsXzcgh6grWin1eOVsgQI8QWb804OgMLg0T+TDv7
	HBSXlOgPgZETxhzDjaVWn7/o0e1L58OWw+f6
X-Received: by 2002:a37:b8b:: with SMTP id 133mr8407502qkl.401.1617890865340;
        Thu, 08 Apr 2021 07:07:45 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:175e:8b29:c386:d20e])
        by smtp.gmail.com with ESMTPSA id l6sm19069760qkk.28.2021.04.08.07.07.44
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 08 Apr 2021 07:07:45 -0700 (PDT)
Date: Thu, 8 Apr 2021 11:07:42 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2 v2] staging: media: hantro: Align line break to the open
 parenthesis in file hantro_hw.h
Message-ID: <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
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
 drivers/staging/media/hantro/hantro_hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e46..a650b9c 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
 void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
-	const struct v4l2_ctrl_mpeg2_quantization *ctrl);
+				  const struct v4l2_ctrl_mpeg2_quantization *ctrl);
 int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
 
-- 
2.7.4


