X-GM-THRID: 6950274232690409472
X-Received: by 2002:a17:906:b34e:: with SMTP id cd14mr4414684ejb.369.1618236823268;
        Mon, 12 Apr 2021 07:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls49671edc.0.gmail; Mon, 12
 Apr 2021 07:13:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjuQJS8jP0GgwdDsgMvdAZgIciKacl0CngmtIuSxiUnxOwbsrdEhgYlYvRJcuLabePdImw
X-Received: by 2002:a05:6402:40ca:: with SMTP id z10mr25114101edb.215.1618236821957;
        Mon, 12 Apr 2021 07:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618236821; cv=none;
        d=google.com; s=arc-20160816;
        b=PcUIZkezc6nx3dCfjW9UflmojOBQpPqzgDKMvyla0uz5G64YqoqAuZ9vteFiNCKL3A
         rY6NuiUMrx3Xx6oZ7xiL+Loh3vy87T0nAXVt4Eb3G9sRayN3h0vgaKvZHxQjh8f6S1uc
         +B0HpsrqRb6N7NUGWYw/V6/37u2JU8pelRvOEEUfDGIjdEakJ4BGsig+/d6oVI5264QX
         cuGb7IU438OOs178o4KNr2k20JQY0OA7WYsLWI8Z21S1fvJoGQJenAVFzYwbtKVcJ5Mm
         w+VjND3lKxaqSV3slHwnv+l/sOo9XhWJLFgBRe6c63NgzsODcI9YaL9ec6UGDTcSB1Mc
         O5XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:content-description:mime-version
         :message-id:subject:to:from:date:dkim-signature;
        bh=lihUvahyQXyjqRENsQCKf9WJ2MvPL1f4gIOKtwIxrQE=;
        b=lBwzPZeKNfPQ0rQOW6gt73DAvxJI336Lq8gQPZpKufZ7mhCF7kSTxE4/SobPmr1/6r
         wpj43pWsUBd0zf6+hXLXtOHFS4NfLGIkJa/25np672VucNaCAifXtQfHm6Q9G9s6CL2E
         3rKYYJ58zekwWBnmhzSUVMxFKKcdbDBr/CeWmC7K7ANz+wXAV28Phwl3w2FTNtiVp8VU
         QXUjlMol6/k+H+S9i2SWbjHsXKjzmV+woBFLatQQkD9q1Ting5tOa4od+ZsflEIC8wV/
         WaOwD3eax4VZl1TmtRhT9ASGNABVsYaQ2qlDWJ8FYxYbLGAPS7FE7JKbSq2x4MVSqLCz
         Wuqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EAj9Mjbr;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id m18si593865edd.5.2021.04.12.07.13.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EAj9Mjbr;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso6966797wmq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 07:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-description
         :content-disposition:user-agent;
        bh=lihUvahyQXyjqRENsQCKf9WJ2MvPL1f4gIOKtwIxrQE=;
        b=EAj9MjbrODc3beLEfDy+9kSMJ4AA4d4VpbvABGPvfE0+524bY7GEKsX81kBygKv/mN
         rRoie5vQi/CDwCJjCIauBCBiHsqx2ow+XtHEK/caa/B7BVrMtXFSOrYoUcSwm1CBj9f1
         MjTU6fhy+pgF6zFOwtfFhyi/HDbkTBJOPfm49LZSL8Stx5lMKt87Eu/uMqK3v6zEXM+j
         A3AjsRBmnp523MtUiZaBvAp5qL54r0wSO+NShl4dawFKKDmPfSVNHrrDYMpjH5ygMBjT
         xf1aOoX+WwpLP3+9j+8Hc8kfvnfSgWcj49hy+qWKcqrcNf6l0hnQ6Jtsregq0YMJMkBN
         9o7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-description:content-disposition:user-agent;
        bh=lihUvahyQXyjqRENsQCKf9WJ2MvPL1f4gIOKtwIxrQE=;
        b=e7etvWfAUy5A6DvJ3m8IkEXEp/RO++VTguY67SUc0FsV3gKs9/FPRDMqhbUhaJsfXF
         D+WH3UNesVhYKfwgEOyVPTiGEWqXeoKEh60n3D1GYop1tqDFTW/FARzCywjn8bSzWik9
         zsuf573RF4gU/V4tkMAaVvZJMj/MCTKnpIdWtQ0l327PswSZ/uK/8/LDjnmrabyOZr8C
         CkRoRMDDalnr0D/x8bNhS19lufjldKKd3jo1rWZcDkj+Mpxva+PYf4Sw9F/PlEisSV+V
         q/LJGDJL9oTzhBzh+S8PkKiVBZaRWrdiUt3ufROZJ9ZsoLhHbQa0UDql+SYVIIZncOAK
         vGWg==
X-Gm-Message-State: AOAM531dTTyyv348xx3/ymPSWmxAxqINPshvDg4KgszaqHgHSK2XuqfA
	nu0Tw56Fo0JlseK4zN5s2YvPM9XcpLIkIdj/
X-Received: by 2002:a1c:49c2:: with SMTP id w185mr26810430wma.163.1618236821499;
        Mon, 12 Apr 2021 07:13:41 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.204])
        by smtp.gmail.com with ESMTPSA id h63sm14966030wmh.13.2021.04.12.07.13.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Apr 2021 07:13:41 -0700 (PDT)
Date: Mon, 12 Apr 2021 10:13:34 -0400
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: greybus: Remove a space because line is too long
Message-ID: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums.
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums

Signed-off-by:  PEGGY TAWAH <tawahpeggy98@gmail.com>

---
 drivers/staging/greybus/arche-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index e374dfc0c92f..1bfec5fae849 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
                                if (arche_pdata->wake_detect_state !=
                                                WD_STATE_COLDBOOT_START) {
                                        arche_platform_set_wake_detect_state(arche_pdata,
-                                                                            WD_STATE_COLDBOOT_TRIG);
+                                                                 WD_STATE_COLDBOOT_TRIG);
                                        spin_unlock_irqrestore(&arche_pdata->wake_lock,
                                                               flags);
                                        return IRQ_WAKE_THREAD;
--
2.17.1



