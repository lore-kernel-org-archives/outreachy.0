X-GM-THRID: 6950995870922833920
X-Received: by 2002:a05:6602:1485:: with SMTP id a5mr13861997iow.135.1618406742055;
        Wed, 14 Apr 2021 06:25:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3410:: with SMTP id b16ls435253ila.1.gmail; Wed, 14 Apr
 2021 06:25:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtI90UrR/UuxHWtdqoAK0I0mo9urRzrxpuMvgFqTmJiAQM5PYEl9wiH36Mr+ll+FRj4IF9
X-Received: by 2002:a92:d342:: with SMTP id a2mr31089554ilh.57.1618406741314;
        Wed, 14 Apr 2021 06:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618406741; cv=none;
        d=google.com; s=arc-20160816;
        b=iax84K7jwGanA414uRFLuAQq2JVjKsf/7/+0FQYH+XJmVy3cBRfVXXp9cTEP+fEICf
         tzDcyZwumIumIkHWBmxZ1jRMeGDDwCq1sp3ix9CatwBJyV5FJwJQxHJy1sW+t3RhZr35
         1wPtBjfVS4ZFlByWuKrxhWaRlAdiNWCd+c0Q46l5CoIyHuZHW8FGXSEUXBs6/v/H6pXt
         VdaD8vZozodtPRYGxcP+vrK639QPA+RBYhIpNZH9X20iheAmJy/YOh9OkCuf55mYqzkq
         7LkYiDGNpotuCg5Xkmh0RiCyxqcjI0pf9CfWuRbEpb0NQ2MiRKRLGMquoqNIcsHCnSi+
         sl8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NS2Bw26/lYixh5RZoHKAJ8ElpXYjSbxdF61bTnSB1is=;
        b=abOaDANGCL53udn2ktpwS11KkIThd+lDJ6cw0/hHhF6wEj2E9F+6gJ5opMKX4ZpqTW
         6MJXJJHGwkx7v2tc218wm/TqZMamRWqFBdmWjC2kT04kUyQ0ir0jtDio5Hc9erTpbo93
         TqdVcq8/1dMho6fZ4Cy71Y04eRgSIhbn5+OU99V+j9ZLKbMyyl/A21MWFpVrWCYTYb0B
         ECpzWUVM4e7EfXm+/9UgZep/uHC0ZEk20sGj7EnyYycY5IRSbY4dFHgqzyMGEhH+iiuc
         WlxPGM5UEwipThBoCyNOWEf/49TBJp8fMOUMvrsxEH80VlOn9NpBonduB+m9Exhfe6Fv
         XpLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=toAJnJVR;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id c1si1258495iot.4.2021.04.14.06.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:25:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=toAJnJVR;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id m16so14737091qtx.9
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 06:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NS2Bw26/lYixh5RZoHKAJ8ElpXYjSbxdF61bTnSB1is=;
        b=toAJnJVRjMrkpQx4FcSUcX6JbpfReRDzI23V/MWQVYtHJ5SdUfaIkhX+9spmMNyD+y
         UnPE0LJ8X2tQ3x7HG1jy146jJLpcGOEAYvLQSoaz01Oqrj6gGtX9gZbKc1aoeGAR1VOY
         DWDXcLrXDZDPn4NODgl8ioTl9jsRIh1gqfryH2XLTg75uqAbtzPnYHsqfRmBHWTZmHN+
         /9TAr2UDC8pFqlv2E9sJwxiqyzcWxkF5QOfwE4BSPETQpeIGtJymBytcBxHElDjEmo/m
         ZbwixI6k3kMkrcf2QmOh3F1oFVDo56xp1mvAQjNZVeI1ASJlbnLpuWbTAxQP36tpBZI7
         zAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NS2Bw26/lYixh5RZoHKAJ8ElpXYjSbxdF61bTnSB1is=;
        b=SR6USV5vT8Hni7YEHijicMQI7JtjBZhvh+SEoAPbfOO6X8GAI33JLx2wi4nBZAaf+h
         SDrqpQ2onLLP8sJtkKTZYxgsNUsn+WzPszHy1Y1GmdzpJEKHUeZ+HSOBW6GD6tDFB4Qm
         kWX3WDifsjro0rcHcIgn03JAFT4mx4dYCChjIroDggvm4Sn8VSv2G7gtUGyuiWdY06kA
         A6PDAKG5AHM+C5aUPnJHlp78SA2vHpdzbk3uIaeDHOHFi7XbDdQgRCzmHeOfBbiL3Y43
         K9gOb87d8efnkUXQHzTVXywhb59sGiWv5ckgpxyQJee+TeVAprXwk0KjVg/JQB08m4zv
         WSXA==
X-Gm-Message-State: AOAM532uiZhfL5qmfpMBIadNuFvZRsbsMZLMdbNoGvhk6Th6EUj13zpc
	hUdR/DX/QNgi/SzMoX7xz6JMIjTEZyTahRrk
X-Received: by 2002:a05:622a:650:: with SMTP id a16mr1628999qtb.316.1618406740656;
        Wed, 14 Apr 2021 06:25:40 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id f14sm7986252qka.54.2021.04.14.06.25.39
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 06:25:40 -0700 (PDT)
Date: Wed, 14 Apr 2021 10:25:37 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: media: omap4iss: Remove unused macro function
Message-ID: <20210414132537.GA15742@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused macro function "v4l2_dev_to_iss_device(dev)".

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v2:
 - No changes in code, just forgot to list the changes made

Changes since v1:
 - Remove only unused macro function v4l2_dev_to_iss_device(dev)
 - Left macro functions "to_iss_device()" and "to_device()"

 drivers/staging/media/omap4iss/iss.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
index b88f952..3f587e0 100644
--- a/drivers/staging/media/omap4iss/iss.h
+++ b/drivers/staging/media/omap4iss/iss.h
@@ -119,9 +119,6 @@ struct iss_device {
 	unsigned int isp_subclk_resources;
 };
 
-#define v4l2_dev_to_iss_device(dev) \
-	container_of(dev, struct iss_device, v4l2_dev)
-
 int omap4iss_get_external_info(struct iss_pipeline *pipe,
 			       struct media_link *link);
 
-- 
2.7.4


