X-GM-THRID: 6885032371191545856
X-Received: by 2002:a9d:734f:: with SMTP id l15mr10259965otk.260.1603046518759;
        Sun, 18 Oct 2020 11:41:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1782424otk.2.gmail; Sun, 18 Oct
 2020 11:41:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzwEYeRreCMB8fGNwD/lFtZDLQhZptl4WYUuJCFEkSFWmujoGBlcYzZ73Uw6y4ux45S5vf
X-Received: by 2002:a9d:7384:: with SMTP id j4mr10010855otk.191.1603046517760;
        Sun, 18 Oct 2020 11:41:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603046517; cv=none;
        d=google.com; s=arc-20160816;
        b=rSOTx1R8nPkMKmx/kLooWcUBPg0AQoG4gM8KYhqxXmA6xFZmrsz/nf2LH/ojW8oMG3
         CGLTbRlqKZJ7TRBta3MkH/ONqgQUSuNJ8B4a3BvMhmbxPk0j3hAkuig+Sbzu18PzGIns
         ThNK+Ee60/Ce3yd3ZWO3HBlsTnR+iTMc9K+EVsfA9benWzuqAySseReXCY0zQoS9Ju6R
         SJVseJUcrlipPyit+tYBKH4DrmtJmUX+tyenaSmif1s1voBAzpn69wj4QZT2OzeasfhA
         8V3SioiwasKIoyZNFJ77TBttBajcDRdSxlz+gf3M08t2haqviFYK/uLGHC4YbrqCJaFe
         qQNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=XMnskWPsReVADPRXwJd73LumiJoBkh8fqLriIu0BLk4=;
        b=yumnMNnNanUrH29ZTMaROLf9QNShQNFnSIkGgHdJHZ00dhwvArWAx8ar7I5BL82EXT
         WHefsB3c+K+hLSXOh6X+6QUrRR+5Tw1E0rUP/3vfSy78e9HcexJq8sK+C0b0MU59j1zi
         BoUIPIJpg2OxRxBLJcYk1iYLzb7ldBqGzNMIHGIIxI9WQeYWePC+gv1V6g+dS6mGjMpc
         vs1k10CVY2C245rtEDrlGk/77zM8p9HRK5SKqY9cO8DvLSyLWKwCVbq3o7JOTrDALgc3
         +1VVWvKU8c1kSRh108EI1SiNZY0Jl62gq2xLwn2+7HhZztP1XwaP6yAxTm1jTEVEedb/
         UMtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QGgaTHLl;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id w26si461441oih.1.2020.10.18.11.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 11:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QGgaTHLl;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id hk7so4326859pjb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=XMnskWPsReVADPRXwJd73LumiJoBkh8fqLriIu0BLk4=;
        b=QGgaTHLlF58/pDd8YTXHRHLlWm19do8JNvZ/yxKuiyNDrCrrnmYE5XJETvEEtigMPr
         7LlyvTVCj14owunKDoRqm6J3nB2Mx8FKMdJ5rq78hYM94oY87rOCbFOwnZlWKF2AM5NR
         W/kxloNdGEWpm3uWGrPvG92gVKzhj0I+T1zvDcKC86edILvvzWhVWGg93CqjXGNWiEvX
         aeiSbWPl+pDRPYtc7v0SMfHeZE8c+THPb/uPv4nBAWdkZMY01jP7EThmi9C5VDKDsGCb
         hvgVJrYRcGfPlUD5ww7U3KJuicYqG3m3TT0cU15aVohQcEcDpdvTbzMOnRBvKzonvnLp
         hg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=XMnskWPsReVADPRXwJd73LumiJoBkh8fqLriIu0BLk4=;
        b=jr29risUMvYfa/B9wL+DkKoOQ29Kplj/TT+RdnAOBD10ZRXZr7UxbXFjhCeYVwpj+j
         EOPr4/uz8mChtQnvtBTOw/nqI0f+Gpa17XqNQkX7ygK2ANRhmA3fHvcM0ScdChfCIVx0
         bteX37KWFrj4BUL9JQMK+GElxsf5H7uO7iyn7Wlj/gke+OEsAvKmyvmvhIowbeigTkkv
         dGPja+bwVsII3WC0zojxDDaLeIhIcegXnzcG9OGgbuqCZ3QzxBvzuJvdrEjgzkrM/1Sk
         Zoe0jxtlSOQ8bblq/5Ny9Ewr7vpjyyWD7LP6kruA80s2CmVWEUptn7DJ5nJhtFvdwb5e
         IXig==
X-Gm-Message-State: AOAM533kawuS7T+tc+lIQ/MTeFYfjPvcXO6+nfQfkZdgyXwylFvbFzD7
	+xfHuLX8+l5923M+qtdTL3zAUAHS5nMN6w==
X-Received: by 2002:a17:90a:e00f:: with SMTP id u15mr14629863pjy.87.1603046517054;
        Sun, 18 Oct 2020 11:41:57 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id v3sm9083051pfu.165.2020.10.18.11.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 11:41:56 -0700 (PDT)
Date: Mon, 19 Oct 2020 00:11:52 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH] staging: fbtft: Use sysfs_emit for show(device *...)
 functions
Message-ID: <20201018184152.GA53499@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Convert snprintf calls in device show functions to sysfs_emit for
PAGE_SIZE buffer safety.
Warning generated by: scripts/coccinelle/api/device_attr_show.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 26e52cc2de64..39e8d28066cb 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -199,7 +199,7 @@ static ssize_t show_debug(struct device *device,
 	struct fb_info *fb_info = dev_get_drvdata(device);
 	struct fbtft_par *par = fb_info->par;
 
-	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
+	return sysfs_emit(buf, "%lu\n", par->debug);
 }
 
 static struct device_attribute debug_device_attr =
-- 
2.25.1


