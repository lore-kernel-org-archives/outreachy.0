X-GM-THRID: 6951120130932736000
X-Received: by 2002:a17:90b:812:: with SMTP id bk18mr11150477pjb.145.1619008642726;
        Wed, 21 Apr 2021 05:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls1421991pjr.1.gmail; Wed, 21
 Apr 2021 05:37:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1MGhW0nPEEaq4Ye5IrENO3byKNtbkNgHbcrfZEp9k8BB7oqUePioGhruXybTgEDXIT0hi
X-Received: by 2002:a17:902:d4d0:b029:eb:59ea:2f32 with SMTP id o16-20020a170902d4d0b02900eb59ea2f32mr33866954plg.58.1619008641607;
        Wed, 21 Apr 2021 05:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619008641; cv=none;
        d=google.com; s=arc-20160816;
        b=ahl/dH1IpBSF50f9X79FkjrZl7L66e2Rs5hJ2rOHT2dGHfGr7zT10fnubAk6jVNeud
         KOsy/NFYpS3FaVygRRDcP/9hLiqbiurbZps+8oZcvTM3Q1hTtIBX3IGuAP7QeUKQaQ4o
         B8fES1y8FxKymwhhx08UmTZyVOuvpiQD29pq9fD7gmom9niR0vEGFyH14v4pWCSvWLfM
         u++2U7R8skMi+I8sII39al3SFcc9YJdp+8/xGqdCTtRzHMEFMjBd36TouLDFHhqoi1pb
         9qrnrysCclC3tYmdW0SsLpToy1O7loscOVa0WMwmLHa3Cpkdxxp2ojg07iZAZttrH043
         jNoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Kp9j2ssncbR9fiPGXbEXBPrYNKseNHOrZVSY8FEsHgA=;
        b=kd2MAfp5daEGz/DCdyZEdaQaTmvt8czRfeAA9zUuDX9M6hm3hR9d3885IUR8Euk2Ol
         f1vE1g0MKWVgEElTLuTLO/ywS0Asz2dLxgcWO88OFZTccZeiOLgkfTDXGow5yQVR3NJx
         GurgaRdaVrzP1oBx4I3RIoMNbhMuogNyQsE7KUj7QLY9LJrJGVjZKYA8Y8hRvuzuVd8S
         wzrwqvG7r+c36VweLWgzOK4eDXfk1driI5rQ3gxd/TmmYisBZJWgb7kYRwJvc8TXQCGu
         01QvAOGArieWezQ+26nrLTT30+drASGGJ5rXEtPmAYC4K0TNN4nHu63AMFZHu/YH7I8h
         mMNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9dQg5DX;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com. [2607:f8b0:4864:20::82f])
        by gmr-mx.google.com with ESMTPS id ci2si189536pjb.2.2021.04.21.05.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 05:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) client-ip=2607:f8b0:4864:20::82f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9dQg5DX;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82f.google.com with SMTP id c6so31088578qtc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 05:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Kp9j2ssncbR9fiPGXbEXBPrYNKseNHOrZVSY8FEsHgA=;
        b=a9dQg5DXj1A1Hg4NBdqacQGGr3YkObBj3LP8mTP6akWFNWDCQ+tLT2jj6zSm1Ti4jw
         CQJGo+kqZf9luljyUVMbMK2vQ6CE2dGd259DJ8gSHVRw2/Hkcug2CgcFH8Or6ZaXW/Bm
         bTej0E4YkztxWqIkXr+78rPt2fln/MOm5s+pmd2x8buqUb6E5AL4obtipg2Sgruq4oTp
         e/dTQqi69eC/ABh1q0Xy5WljMbPpkisuW0h6W9o5ttqv7hiy+nrlhLApBbLdL4Nj6JOY
         TxmaaY22xJxZZ7K2R+Mf2eXRCCLIlX7gKNySolxHABf5MHKbaU+hYZOqsv1v/0UHn5jN
         bIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Kp9j2ssncbR9fiPGXbEXBPrYNKseNHOrZVSY8FEsHgA=;
        b=Ic00+whaf+r901snNVmVT0kyfC7dsf/u6MuK3JEGNeca1qqUrIwalV5CLQQ1h/yK8g
         87GilLSEw+h09KzXFM4GR79IrfzSTBWRb/Z/x+pNXdDOYdSpoCMCcaM/eT5VWQByWYTD
         OWLrbED+0FQLjb+Ut6cC4jltzbx/1YNItVSwnqHQzmJqTv8U8o1s1DXWPW8JMorpz3R0
         6xWhwwa0syBi84j45VCH9JOjx5R0AHkeCNf+vITVhnR7XrCsiW2trD3XGKgmPId+HUPb
         M4TDBJqqcmc9NaVFh9euSXd1/ukY3cNyrWrOaVBYPag0/ZKH0dHZcD7JGbN7PnJdaXav
         mgCQ==
X-Gm-Message-State: AOAM530MYRfjVi3mh7Vs4yCc/nZ6Hl9cIrD4EwiN5Fvv+x72bH+UBlgb
	kc0BlqV3oniBCTZZOziP/GNOYdcu8kghHL0/
X-Received: by 2002:ac8:5ad5:: with SMTP id d21mr21891858qtd.198.1619008641105;
        Wed, 21 Apr 2021 05:37:21 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:d487:66ec:5db5:e8ff:edf2])
        by smtp.gmail.com with ESMTPSA id x22sm1969101qki.21.2021.04.21.05.37.20
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 21 Apr 2021 05:37:20 -0700 (PDT)
Date: Wed, 21 Apr 2021 09:37:18 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: media: atomisp: pci: Change line break to avoid
 an open parenthesis at the end of the line
Message-ID: <20210421123718.GA4597@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change line break to avoid an open parenthesis at the end of the line.
It consequently removed spaces at the start of the subsequent line.
Both issues detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v2:
 - Insert a space between the function type and pointer

Changes since v1:
 - Keep the pointer with the function return type
   instead of left it with the function name
    
 drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 1c0d464..639eca3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
 void atomisp_setup_flash(struct atomisp_sub_device *asd);
 irqreturn_t atomisp_isr(int irq, void *dev);
 irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
-const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
-    u32 mbus_code);
+const struct atomisp_format_bridge *
+get_atomisp_format_bridge_from_mbus(u32 mbus_code);
 bool atomisp_is_mbuscode_raw(uint32_t code);
 int atomisp_get_frame_pgnr(struct atomisp_device *isp,
 			   const struct ia_css_frame *frame, u32 *p_pgnr);
@@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
 
 bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
 
-void atomisp_apply_css_parameters(
-    struct atomisp_sub_device *asd,
-    struct atomisp_css_params *css_param);
+void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
+				  struct atomisp_css_params *css_param);
+
 void atomisp_free_css_parameters(struct atomisp_css_params *css_param);
 
 void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe *pipe);
-- 
2.7.4


