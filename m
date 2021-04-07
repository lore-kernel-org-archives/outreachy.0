X-GM-THRID: 6948321878027010048
X-Received: by 2002:a0c:ff48:: with SMTP id y8mr2238840qvt.8.1617782255770;
        Wed, 07 Apr 2021 00:57:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls819344qkc.3.gmail; Wed, 07 Apr
 2021 00:57:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1KFn6sspGUIgSfnd3OHqjr/sIcE5a1J+zmfMPp0mcTVHdD3DpBEjfwma+ULlw9LgJsrSN
X-Received: by 2002:a05:620a:22d0:: with SMTP id o16mr1909250qki.376.1617782254933;
        Wed, 07 Apr 2021 00:57:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617782254; cv=none;
        d=google.com; s=arc-20160816;
        b=OhKMAQkT3btT+B5VmRbocT/ATXCLxYCyfcOoMS8R7XS1fBAEZZ7aWFC4fQuV4D3GUp
         5xPE7+Legb2kXsCNFYIGI/yZomIpIs7SKAis2mTSMoVxy7CCU8XcNF8TkUCt+wFuXSG3
         dLE49zqkEJ4GP5WpQqez0tGuAw3esTqLkCZ43TiHQBtqtd3MzFba5rEWxBdHeOs6QYMf
         PYGbq2jiszHnyEs0pOEXHb0jHXNLRFqyxWR9jxc7EPPSD5156X4N2iG9Ei0n60LWOo/Q
         VELFEGHgjYOeOhqFmmxyaoopyv7T74TxnGHOlqmluHA2aUMMIuGX2qRXuguIrHRrX6W/
         GWiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=GyqCSJDTppuuFfpUrZ7k/G3TcyInJOqMzJqN1ipUF+4=;
        b=xuIvYAgS8rA4+JI+IjbL3E7HJM2h6HOdmdbGa/4F1H4QJKgA4YpWatq3S5sRbU4SL7
         Z9996ri661ziNGEMjIgJoyEDlp1rW8LKC1uWLc7tIPQFEgWw4LUYDBx7mSeJJp5WzlMX
         Dgp610D1FOhlykvVChoQwfWkJXMjNyRcV3tXHpcc8MdoupVSXvTsI30TWC4rlHHgakpl
         hVIrwu5GgtwAVzZzZPoAP4QH7nlZ/aBq5LhJL511hg78nhDjbGWtBybBvUM4IMq/u4lX
         dmcQ/PvHB5Kj9OhCM8dBL1DFvqjTQgvv2YuDiW8EBJlRNSZkV/sc6n7nLIDx3KUTgYFC
         HTlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yhg7XiEV;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id a15si3447222qtn.4.2021.04.07.00.57.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 00:57:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yhg7XiEV;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id g10so8912117plt.8
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 00:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition;
        bh=GyqCSJDTppuuFfpUrZ7k/G3TcyInJOqMzJqN1ipUF+4=;
        b=Yhg7XiEVh0NLRIwQs0dPjoCJ9Iy1xihWOS5sk8ACN3rBpTryEIcQXRwx5FHhnVulW4
         mqzX4gVlA2Ax6zuMF9nG1ySEKzZ1vpBApmJOuNYlNWOEcdIrXhjkWIb6rncZZYwuJsl2
         Xqpqhmw/EMERxT3b9NHEKZjwZ7gdptQuiuWIj7QlxIejY5/YaeWthEh13s06y9oxEPey
         WWmly4Ve9FF2vM3VS/GyKmy/bVMRRwKTqXZRdRKukjxzqkCyByPLVjsrsBwo7xDdF06W
         3TEpP33LFKm87imAyUmDjcixr4MpwMe/haJ9g8aKHaX5wnxALB2/HwUgETEZ1riTVP5X
         yuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=GyqCSJDTppuuFfpUrZ7k/G3TcyInJOqMzJqN1ipUF+4=;
        b=eDi9wzRhh2YXj1o9tQesOvSxPA9BH+HqPfdOv3UOzvJnA48JljCM5l1A1OEvKX0iky
         bYiVI4VfWPTnCtn9C6ihIilTmxvrlydeMXNyA9+CwV48JgQcpJnsVlq3vANtPZNqFyNM
         0FKTUWa5VuLpX48VDkiXdRNK31SBgFu5TfEQ9kKv/xaZ9li21cw8Io2yDtXonKWfeuKJ
         35svmodYR41YnPd3FPuLGOn32eunVc7ukM9kYjiwZ4KZvUun7KpEzYgwxoyhVMHIarsM
         NnoSV0uYyaFNCv7xbrfxSCHPQOmGAKyURXRmYKcFG9PEB7bDCasFX9Ytzq4ZNE/5vojA
         eCpg==
X-Gm-Message-State: AOAM530c7thM/hEGtjOn+WJM7UOpVWMK9C7w9pL6ln747bArLz/YKJV7
	/V8nv1fq1Bw5FS/uTyLKiS8NmDOrQDAarrq2
X-Received: by 2002:a17:90b:142:: with SMTP id em2mr2109427pjb.59.1617782254060;
        Wed, 07 Apr 2021 00:57:34 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.146.48])
        by smtp.gmail.com with ESMTPSA id n23sm4335230pgl.49.2021.04.07.00.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 00:57:33 -0700 (PDT)
From: Mitali Borkar <mitaliborkar810@gmail.com>
X-Google-Original-From: Mitali Borkar <mitaliborkar810@example.com>
Date: Wed, 7 Apr 2021 13:27:29 +0530
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8712: fix avoid CamelCase in xmit_osdep.h
Message-ID: <YG1l6QIKRMjqgPiD@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed Check:Avoid CamelCase by renaming SetFilter to set_filter
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@example.com>
---
 drivers/staging/rtl8712/xmit_osdep.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
index b76021b568f8..7ad2ac6f5ff0 100644
--- a/drivers/staging/rtl8712/xmit_osdep.h
+++ b/drivers/staging/rtl8712/xmit_osdep.h
@@ -35,7 +35,7 @@ struct xmit_frame;
 struct xmit_buf;
 
 int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev);
-void r8712_SetFilter(struct work_struct *work);
+void r8712_set_filter(struct work_struct *work);
 int r8712_xmit_resource_alloc(struct _adapter *padapter,
 			      struct xmit_buf *pxmitbuf);
 void r8712_xmit_resource_free(struct _adapter *padapter,
-- 
2.30.2


