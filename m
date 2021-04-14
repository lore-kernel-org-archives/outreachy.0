X-GM-THRID: 6950999915860328448
X-Received: by 2002:a63:485b:: with SMTP id x27mr38657973pgk.0.1618405784423;
        Wed, 14 Apr 2021 06:09:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:1393:: with SMTP id t19ls909449pfg.3.gmail; Wed, 14
 Apr 2021 06:09:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyR1eLK7DfblRNXjzCAOvgEQxZ3H5SVYWyFYzyq19pfGnfoc3TEJmMQh99l6NryYhGV8WJB
X-Received: by 2002:a62:160c:0:b029:20a:7b41:f10f with SMTP id 12-20020a62160c0000b029020a7b41f10fmr34019114pfw.67.1618405783180;
        Wed, 14 Apr 2021 06:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618405783; cv=none;
        d=google.com; s=arc-20160816;
        b=uTvMLJDGNXf88wgHVwQnITOafPZQQCgJB6oaIIc7aDT6YPZ6P/qV8ssAKcRr8PoYqm
         tdmh0DF9gYTXim2wjXrV3Jz1BinIX7Dlo8c3LqqaxnBOznfDxuDZlxFyIiQOfwS6o5bt
         AB2QFgb+7f6DbufxK3S/yugqAbFoT9LkEJ3ZWmEQjmk17BTqJNKsoV/bjgcuaNIdL+dX
         qcZ0Wef2bAj5JDfKbligTcHyB0I56WRXRJFzK95kezfm915uNuLwn+n+DsbmUIwlZl5b
         3wkIkmaWhjSc3LwXTF6IJrynbXbUN5cLjlkki6XDlSejcWAU2u1L5hvWyN1nmsT6TbB2
         YWbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=elncytFW+zb3qUFxfSlLsAeQiq/hOBit9WYqXcP+TbM=;
        b=mCOcH78pWE/GomtWnmBer5WZNUs+d5BirfgWp+0tQi6VQ2dg3iM+ndhNht/hhAL4jJ
         1+PBXp8XJ62XQbHU7abAU0df1a5GRhgK4MTpnhRtVArYYrnw4hIBojvDJCBOoRvSgwX+
         PzeFOXbqU3VCmFfxquFtvD8KghowuYBwUVgCfAGDHLOzyY1/IZYf4akls7N6/meo/yeq
         MBzIoLM/loIH60jWArcOcYuAYPeqwyXkHwwMU7kiymQbiZOotK3hbQDAaIy7pj4NeNzn
         2OYeIcyIMs82BE4yTW5iY0Tz10VyW2Tsa9CAe7K7dwh2yWa6dSBbTfHZJDKX/eOW967m
         uPPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQkv9kwM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id g23si1819472pfu.3.2021.04.14.06.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQkv9kwM;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x835.google.com with SMTP id 18so1935556qtz.6
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 06:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=elncytFW+zb3qUFxfSlLsAeQiq/hOBit9WYqXcP+TbM=;
        b=qQkv9kwMDgVjNDgE8+1XHzGKiVU3D7+1BMbay98l8IO5vpr6gzVdPUqBxyUoufZwpR
         64BnoOrEnoaJOZLB4/0K3A76+ytyVltzkGa5UPoz+DVmqCtVO4UnmEVeP0yXTTAeDvYk
         oouF7MpHMsDTJOgsjmKne0JciOMZmKPsfTj9PSg3E4Awjj3UeMP0+nSmAcm8c0Y/Nbeg
         kPL9C2NyFEmy1ZFHaaol+R8vZg1PRgdtdyedrWz4nvoZxGmirTsltCKRGQWQ9N9e35aa
         waPCIyNOBn3zZ5vFwQzzxehxjmG1PQYpSml3ygnIh4AHDRHayPc/Cg2xdlauZUT7iJnH
         x8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=elncytFW+zb3qUFxfSlLsAeQiq/hOBit9WYqXcP+TbM=;
        b=TU5D27cto/xQPYoHYgz4E99c+VSb+8od+TePrScYQxv+Gf5VOEzI4fKoQSymJao/tZ
         xO78isK0PK5f7nemaNVRLZqE4NCwbpXzsP0dkz5xqFx7bv/mAMvibJ7Os+gUFnByOf0D
         3IU2CrwdJuIQFk5543P6hks77mKa0Ch7Rpk3EtQkgRHzmebZ4B42ByewezflOFAMQZuT
         8d6YgHPKA4+ODOvA3GFbbnSHAKkxk3W3MueyafhJmqxUCxaiR0Ec6raFLhBrHBP7eqNS
         InW6wR5QCHwINDE7UfXcVCInYlq6lNkQ6trcNG4bI/mZSArajNLtThgzzBU7OEvw7VEH
         1rwQ==
X-Gm-Message-State: AOAM531Ml8v6J/fjQZMsN3OXBLBxHELKEYw5sifg8zSbt4tKMYF1jqXO
	28AeuN3Wp800VUMX1cDiLJjR6tX60kwdk32b
X-Received: by 2002:ac8:5c0b:: with SMTP id i11mr18904800qti.368.1618405782136;
        Wed, 14 Apr 2021 06:09:42 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id b83sm6523257qkc.97.2021.04.14.06.09.41
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 06:09:41 -0700 (PDT)
Date: Wed, 14 Apr 2021 10:09:39 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: tegra-video: Align line break to match with
 the open parenthesis in file vi.c
Message-ID: <20210414130939.GA15290@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Align line break to match with the open parenthesis.
Issue detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/tegra-video/vi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 7a09061c..9878d1e 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -1813,7 +1813,8 @@ static int tegra_vi_graph_parse_one(struct tegra_vi_channel *chan,
 		}
 
 		tvge = v4l2_async_notifier_add_fwnode_subdev(&chan->notifier,
-				remote, struct tegra_vi_graph_entity);
+							     remote,
+							     struct tegra_vi_graph_entity);
 		if (IS_ERR(tvge)) {
 			ret = PTR_ERR(tvge);
 			dev_err(vi->dev,
-- 
2.7.4


