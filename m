X-GM-THRID: 6950220202165403648
X-Received: by 2002:a25:2d4:: with SMTP id 203mr21278212ybc.241.1618224277830;
        Mon, 12 Apr 2021 03:44:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6ad:: with SMTP id j13ls7253806ybt.5.gmail; Mon, 12
 Apr 2021 03:44:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzs5TXN1YtqSe8axNJiY7/imOb0G7HxYOuVIrH2EnB8v0nb/o5S2qp4v4wGtSLRxx9tV9Rq
X-Received: by 2002:a25:4508:: with SMTP id s8mr18072732yba.473.1618224276950;
        Mon, 12 Apr 2021 03:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224276; cv=none;
        d=google.com; s=arc-20160816;
        b=rSEo4JZHsVvnJx/8P0To/6e77NAGROd+FIlmloBhsvpTKF0FFKknHtwdKA7spM0mg6
         lBkg8qce5Vq3Wiux1RLc2bZyMLLlq6I4suWofg0ZahAwCapFYNzU1T06W/ADtlELhwl+
         TJ1Dm2o/pjCHsbytKSWQJ2QeF3zdcuVJVVbh7bV8bgepBtlawMXxrm4EbIrJwW727J8r
         97vIW3z2sy3SfS8qI0RTi2r4tMonKLxh/DfN6lC3Md09WV1vOxvZGuC7YD6d/hcHFw3M
         kreXRTTIoLoZXsnOvi/r9qOCZwwVphyWta8F8RXw0zTIwNUY7863TgvtQh5gouPtFxjG
         iz/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X5Zkx3/PmOz226VDaHPUOrqvW4IVZLwxtVFG37YmhL8=;
        b=MsVBa4IRVpTY51OPV+y2TpzOVkxMB6aW8OY/0RMeYHYuY0BtSs0E/yHiWgBTpdK+Q0
         Wa2dHdni6LmTWipUi8oILwWrbXKmhKV9ELkz6X9NWyda6Cc1h4xc/4CnzN1g7jnWFUok
         Yza8W3l9DBbODj3VlOWXaLi96PwroDqF65EydGSX7dwqrrh9TGRRPw7ADjRBdCuxLtc8
         SQmucYrLAj/2HIjcCb0GwAz8EHO0IFQVj32aAGWwlN2sbcSb0bCXMa7K5YfKaoaSCzWr
         ZIJNwFTp4jmjmccFvV0TtHYRiImcoMSVR7+5ZNH/gYE3WL7XU/7c0pdro2dyqU4SRBt/
         8FCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n6rRbm0y;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id k6si411984ybt.0.2021.04.12.03.44.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:44:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n6rRbm0y;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id k8so9047592pgf.4
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=X5Zkx3/PmOz226VDaHPUOrqvW4IVZLwxtVFG37YmhL8=;
        b=n6rRbm0yTIltvNi1N0xtCXbdwwR4pWththrksGAIk8cNX8Y47peQO7IWknYwiDXZLU
         4qagSnIRiu6be8BYQaH3u98xi+zt77IdpQGsF4q163GJ7NMjl/vx6DA7WLnz+87i57vl
         BINM9ezkVYDbmNHfowukC/fiFpqhO9TL+svXSDT3vQ55qerPKK1r70UnPFtRDKQfE78J
         LlpMfn2xqkoffESWahFHngiyHnpiLauczeXgGHB9Uqs+KhcAOMxlLoPkipFuSLHPSdh8
         R28cFkm6+EYRTBMO0VR5C6VQb0tDI77EbK7J+0Zoej8QlmrQejj1kwi12m/rqgolflA/
         o+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=X5Zkx3/PmOz226VDaHPUOrqvW4IVZLwxtVFG37YmhL8=;
        b=IAOpm24RcZVk3EI6TBzaSYR/7rixmtQO+kLwVwDUX6q5N+eG0oVz2RJGprlbCg2mR4
         3O96T3J2pE2JJbBk3j7CAbNzTLVejsn5vqvQUZQk3dGe0DSwElkym/zQSApv0M0M7a88
         mAOcahal6Ms/h7Ytp/p2WqRG6t0fI4VKo+08zgjMdntcNaapQKUkmBBBPP2aUxcLGDM9
         wXjFZ6mAQJ3R96n8QZWGTR7wvGxBsZtn9bKESSn2JPqezpXqZQAiVH/WIQLbq+dLIK6k
         qlgmY2cXfm6nqMsvq57hBYxaHKPl2GCSAsWxRzaPvqXGLWrybGl013uL+bxUfIkHtWa6
         fFjw==
X-Gm-Message-State: AOAM531YEDuwkAIe+Za/zh9l6R6ladGdJT56gHDdh8N9XP42mP86ph5h
	zFzSeHS+RLmucgpigu1LRrw=
X-Received: by 2002:aa7:943b:0:b029:23f:8fa1:5f11 with SMTP id y27-20020aa7943b0000b029023f8fa15f11mr23557569pfo.67.1618224276587;
        Mon, 12 Apr 2021 03:44:36 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id q19sm11005093pgv.38.2021.04.12.03.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:44:36 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:14:27 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@susu.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 2/2] staging: vc04_services: rectify spelling mistake
Message-ID: <967c328610909bc010b0bb82a1f89b71a57fa7a3.1618223171.git.mitaliborkar810@gmail.com>
References: <cover.1618223171.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618223171.git.mitaliborkar810@gmail.com>

Corrected the misspelled word.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/vc04_services/interface/TODO | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/TODO b/drivers/staging/vc04_services/interface/TODO
index adb28f46ba67..39810ce017cd 100644
--- a/drivers/staging/vc04_services/interface/TODO
+++ b/drivers/staging/vc04_services/interface/TODO
@@ -37,7 +37,7 @@ This should be fixed.
 
 Even the VPU firmware doesn't support a VCHI re-connect, the driver
 should properly handle a module unload. This also includes that all
-resouces must be freed (kthreads, debugfs entries, ...) and global
+resources must be freed (kthreads, debugfs entries, ...) and global
 variables avoided.
 
 5) Cleanup logging mechanism
-- 
2.30.2


