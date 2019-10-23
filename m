X-GM-THRID: 6751148085003419648
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr2022791wmj.91.1571874271246;
        Wed, 23 Oct 2019 16:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a517:: with SMTP id i23ls2354769wrb.9.gmail; Wed, 23 Oct
 2019 16:44:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzt0pZbcAiJ8SFqdUKd1LNMbiXlTuZalsGrKVvbGaLDmCVeOLBmvfu/E9FyGNvZesXoSWYC
X-Received: by 2002:a5d:4d46:: with SMTP id a6mr1105169wru.196.1571874270320;
        Wed, 23 Oct 2019 16:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874270; cv=none;
        d=google.com; s=arc-20160816;
        b=FLVLwCF/PvMc8s7T+6Zx6u1BernYDM8g+P+EnWqCx4bqTKNzY9OvTZgfd+gmCA/ngH
         YJXjycdzbdYTPeYjn0KyXoWtBUBxP7O4xTLXhzS0EIaN/0V7zCZ+7SIS2Sjnw435p6c5
         fB1x9wHnAzp98VRPNKl7a0Zsh0HW3E3xA2SrCuIiALvo65ij97Xt6fzGblVN64Fm70IT
         f+gCO7pQkYZs+bzICZTCc2gdQ4kD6oDOlUOpkcegrmuu2fbPUi0QY+AwvZHdAP3UmQHA
         CvG/f/t5286jfAAD05jMQRGb+B1Dga746xqlm4q5sQKO13WGPuF9Mmv1QowYuNvqKvF0
         sPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Sn/qDwzBhPSsEWq2IcX6Dp8wFIdFeF2TJI9Bov9PTkw=;
        b=mExZIY1e365LMh5l66gGzW5TMK0qbbtGLkHX9n5Hl324S/3afgxmA4gjB5xQYBYbre
         SknVUY/SUJBd663TH34rnwwhfWmavL6n21U/nGJFA+Sd3Ot8Ek1z/uX6XLoa4K4hwgpX
         8lAWqeik6j3eftgEKIW0eGhXIRW94pZoWPqnT3vzEintFd9Q4ARGG2Wayi/W6NWK+6ni
         ru2NWMNwtnvnhg5I9cNdWJu4xUH/YUlQPRoOkMnQLU5Jwln13y6E/PCAfnPGD/nMIlmh
         hiu5KIrScdJV7Iy0HljA9XjQhIoLUy0BPQrylaLHcRw3M+f3YTZVkmpPrAqbZSSHc2Ls
         ViGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYR/psRu";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q73si46147wme.1.2019.10.23.16.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYR/psRu";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id t16so18758539wrr.1
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Sn/qDwzBhPSsEWq2IcX6Dp8wFIdFeF2TJI9Bov9PTkw=;
        b=WYR/psRuNUNH7WLMgHO8ZMtVbZY8qvm8yYmJzFenHziksebaGrkaJHVHVNWiqSG9qO
         ngGHUZykaWRQ1dFpisFDbLQ3sfRgFyX7XDielXQtgvFx9LYJzd3O2AAbvsckyN773KaP
         KKLZ3kgVchEoaQ6N1Fv0isdlCCX0n4TUyBnc1ytzfv93ftDix24V4LiP8C+Px27O6d8z
         QaARWCXusWRbtkFzK/RPyeSp4md7zisr/ShFf/Pin3l3e65efQ6MqM5/hNskwnHGICTW
         oj4vW5ODd7zJUzXnYQfhp4kVZAWbpnsqqYI8N6uoz7N5ltnrlxJ4oUzIyv5K/7ly7eZz
         6+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Sn/qDwzBhPSsEWq2IcX6Dp8wFIdFeF2TJI9Bov9PTkw=;
        b=WKiG+4ln2bPXJhCJPliDBU/A5OG40uLTTGZV7zlBW5m46BEWQlQocq7q9JYPtXEBjP
         SrSk5lzGLGtADrBih8nqznImKLv7E5nAG5J0xuO1W0+yk9X90LOhihPBGk8vgz7eIbgq
         adKtFRuqQIT47+8hUzl8drWtNUkrLuLC+OjmfIiq2Y18qqNIst2Spu1ZNiNPnwjueu+V
         IKh36K2FDQlddVB1BDUx/q95Gb5z64tOtD4biUGMec9qTYV/Mnw8lWtsWnVAmviJvx0z
         7HcFiWgEBTiZ3TdsGPgcpJbGWOEXUHXAGSNU3lLxColuMFRfR4JQ2ram9e7/642GFtyL
         aw2w==
X-Gm-Message-State: APjAAAW/FeUcO+9tOhPzu7XlQHoUKoAJicFyV1qByvnB3/yViSovMHUr
	zWUVmpNZEkR6jl5StbTw2/RM3G7kHJ4=
X-Received: by 2002:adf:e849:: with SMTP id d9mr1003361wrn.145.1571874270062;
        Wed, 23 Oct 2019 16:44:30 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id o15sm5472089wrv.76.2019.10.23.16.44.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:44:29 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:44:28 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] Staging: comedi: Remove wrapper function declarartion
Message-ID: <20191023234427.GA4613@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove wrapper function "comedi_buf_map_put" declaration
as part of remove all wrappers in drivers/staging/comedi/TODO

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_internal.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/staging/comedi/comedi_internal.h
index df3b1af109f7..73131e625fe5 100644
--- a/drivers/staging/comedi/comedi_internal.h
+++ b/drivers/staging/comedi/comedi_internal.h
@@ -23,12 +23,10 @@ struct comedi_device *comedi_alloc_board_minor(struct device *hardware_device);
 void comedi_release_hardware_device(struct device *hardware_device);
 int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);
 void comedi_free_subdevice_minor(struct comedi_subdevice *s);
-
 int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
 		     unsigned long new_size);
 void comedi_buf_reset(struct comedi_subdevice *s);
 bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
-int comedi_buf_map_put(struct comedi_buf_map *bm);
 int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
 			  void *buf, int len, int write);
 struct comedi_buf_map *comedi_buf_map_from_subdev_get(
-- 
2.17.1


