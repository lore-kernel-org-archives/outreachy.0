X-GM-THRID: 6950999915860328448
X-Received: by 2002:ac8:6906:: with SMTP id e6mr3881998qtr.121.1618507102819;
        Thu, 15 Apr 2021 10:18:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e11:: with SMTP id h17ls3438738qke.10.gmail; Thu, 15
 Apr 2021 10:18:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYswbar+/r5eg+2PIikEpcJ+uaOk9dJw7fs8PBueheJ3okFz/Qo2za4nYQC0M4SVoKi7xN
X-Received: by 2002:a05:620a:670:: with SMTP id a16mr4802070qkh.428.1618507101909;
        Thu, 15 Apr 2021 10:18:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618507101; cv=none;
        d=google.com; s=arc-20160816;
        b=OXWqHghCAHMIOdVQPNbJ9mnCGoaG8rXnqpAV/evU/ux9pkECyLMDW/HcpX2aWaQuPh
         IZYB2jpwAUCJuWARyz3OzpvFvBk9lKehuMrLQkRSeSiftkMoNXLplLa3V2hk7z/Hxsh1
         Nzd+7/QZ3VTQxpa8eBqPnQZk/TM5FFODwzQE1HnK+h5qBmLEbsRULD8nL5nc5/+64CDB
         tmlD4o3Vf7sISkR4HcaJ5H2gu9Y4spM37/DKzp+wnooFS8RDVoAj9hCu0vYVWtloQusp
         gJ0DPxL/WtMCCB6otW7D/D89MnGhqqxeVDoqEeQUa7XdM6lrdNNZno+o/tXsxvfxGViE
         9pIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Q96K00hD2NjD86HPQFbde/I+2OWvsg2PMKdChk2z1WQ=;
        b=Zak41HKdSDTBpIbQftSGg0KsrgNmPyMWUMgrwPxD3q4SBIuABwQGgHVxlUedqEeE9M
         fVt7lG3y3T3nrZCmq4HA9ORUNU4vIr5pIuQmxxPxJS7yyeoYPqDqZLT4ew/iMLDZj//T
         U8ZUZqhTJAfkJLXRW/5THCZG63DK8cFFH1cTjFFsik9lbx2Zs3xiFxQue2S5bb/r2Yre
         mW10ck6d+JofYn0JKVxT7b8cLqoUouxm5EB6WWrzEuDBKvQsp0tPuYSAoMYjt9D29JnC
         ZKiO1jzi99nQf4YTErgh6MY74efRFYPVeIhzVa+xrURXI8iBa8dQYKvFoWBW8Bj13uXi
         PaHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ddvqhdSl;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id h62si194879qkc.3.2021.04.15.10.18.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 10:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ddvqhdSl;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id o5so26016075qkb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 10:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q96K00hD2NjD86HPQFbde/I+2OWvsg2PMKdChk2z1WQ=;
        b=ddvqhdSlR4JBrqD26ZAbHTyS/jISDCdj0isRUj+pXvidKnZWtAKeoAweWjGkUGyXre
         8QrqI69VUqRxqTjbm4P/4j8oWMQK3J1+D583o1BReRErogmSzebk8tnUQdu8VfD1N9Qw
         tfLUtjGTeXpkH2T/HKpZfODuzUCJeXWJ1gFOarOr4JUFKWANjLr07cuGNyQCuS68kfeb
         6ZFijZIXXpGNRPLycR4T97CaAG7lwXcZ0gkhHozZbRFEyjrFhDZ1WmAKw3CUUllwhlvm
         xKzpfOXQ+R93vvDW0/R4HVtcbl9Av/+6E4CYVaZK0C2n1XHD6kD6kYKfi7nFsZtiHFk7
         upUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q96K00hD2NjD86HPQFbde/I+2OWvsg2PMKdChk2z1WQ=;
        b=g6UH/9HigA17FIpYBQXJpogxDl4uJpeB5/THvYUNvcXKgC0Z6mPSfGREv8X9c5i7Bs
         k0WfedyKZS4dzLCX6idRcmld0oPqYqWJY8SrRAgtxuOcLUWzErlKNjGHjihB5fRTpRa7
         95nh4QnjtJCRhNoOgeMvYo+aItIF9o+RsO4rDWTVpN6CUmeQ8jl86OG6QgH4ijNETM0d
         eBumkBop9BmBTizlEtJLGLc66Fz0KbH5BtgCna6imbHMQJdPSB36VDHGzlQMOBpAh1yR
         +2waV9tIW+aVRGdNRGGSSb/+kOiu7J04kz8ClDSGkIY+xaXCqE10KFYgCIUO8xeAR0O8
         1nLg==
X-Gm-Message-State: AOAM5321RreW7iZFk9DsXG1q/VQ0qBo99zKbh19WRN2L0cQ5f6DhrJyA
	73GVFQSaX5xB/+c/6BVasOkoLAmgJHRaK/SP
X-Received: by 2002:a05:620a:a4b:: with SMTP id j11mr4754516qka.19.1618507101535;
        Thu, 15 Apr 2021 10:18:21 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:fda3:4e59:60ec:90e5])
        by smtp.gmail.com with ESMTPSA id c27sm2417598qtg.97.2021.04.15.10.18.20
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 10:18:21 -0700 (PDT)
Date: Thu, 15 Apr 2021 14:18:18 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: tegra-video: Align line break to match
 with the open parenthesis in file vi.c
Message-ID: <20210415171818.GA18601@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Align line break to match with the open parenthesis.
Issue detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Move short argument to the previous line in function call
   since it didn't exceeded 80 characters in line

 drivers/staging/media/tegra-video/vi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 7a09061c..3f06d69 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -1812,8 +1812,8 @@ static int tegra_vi_graph_parse_one(struct tegra_vi_channel *chan,
 			continue;
 		}
 
-		tvge = v4l2_async_notifier_add_fwnode_subdev(&chan->notifier,
-				remote, struct tegra_vi_graph_entity);
+		tvge = v4l2_async_notifier_add_fwnode_subdev(&chan->notifier, remote,
+							     struct tegra_vi_graph_entity);
 		if (IS_ERR(tvge)) {
 			ret = PTR_ERR(tvge);
 			dev_err(vi->dev,
-- 
2.7.4


