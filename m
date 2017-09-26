X-GM-THRID: 6470117861435113472
X-Received: by 10.25.81.218 with SMTP id g87mr908188lfl.26.1506441724905;
        Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls1697809lje.14.gmail; Tue, 26 Sep
 2017 09:02:04 -0700 (PDT)
X-Received: by 10.46.66.81 with SMTP id p78mr885842lja.33.1506441724364;
        Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441724; cv=none;
        d=google.com; s=arc-20160816;
        b=lNPEBzb8yKBf/swtrA10R54SG1UwRGDP9oqWF+lzgex0t8nII8ZOQqn08Mw8tFhIPC
         KhsJESmhHGUGVokyamU1ZkmozD/t5y9wTqzntxW4fajNhDSMsj7KRfH8iCvShQF2wtiQ
         UscXpwTPQ0EurRsPgM7in6RblO+aWOf06hUAsvYWrMesSmbY7x53URoSqr273gWd/fbd
         8onWt5r9Fssm6j5yCSUL9Uhd7Q5JgbGsD5GoDF3dy3kqzvgrpK3y7qTXZkPbSauuPrJ2
         qEFNNADZtFH3XKtZwEICx+Q5UFwtcl/Dybu8zmhdHXFBQC1zZbfWNx49O5+7j0WnEQc3
         h6Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=sy5mfcbrw0evVj3QTV9mzSH9ppMAPeDuiRonN2kAhqQ=;
        b=TXDJaZptV4imJhFcv0kvun1uEYIX+684/Dg59HBgVOrg5B8BbOoi9sdCF9ETVJzjbg
         WPBt1T6Xj/2cuuhGaAsMEP/CD1lRFgTYFSu7ezX6Ja9VPdPeltIk/dvN5QhgOVMytjD5
         eQ3JLnhRb1BiZO+55Cfy02Hzr1UPT0oT64aByflVQ08cvT9fe4LEOt3WTGfoIjfsifnE
         fhSXskyMWtuZakLin/7aJfLWtsp8FBnuHrI6cTkSDSrJkzHaufGi2WKLo9agD29m5Eeb
         dJVB4PxB4AmtBvpD3DAH5wKUzyNW9EwAyh8JNGugWH78m0vQ1AyUs0Os6Dsub4LulfS6
         eD3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejN7nhqM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 200si947503wmj.0.2017.09.26.09.02.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejN7nhqM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id m127so9463872wmm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sy5mfcbrw0evVj3QTV9mzSH9ppMAPeDuiRonN2kAhqQ=;
        b=ejN7nhqMvve6NuFSGZztjtYCm8tiEPCwAngRXPX844HzNbbQQIHH0E63g9PQirjITc
         bAqCGKV6jQ1R4c4T0LhRIzVRuQuB+8608s9M+cSw7ZEYN51PVLOmvlLw6IYM3L6rdW5+
         0UYO5+8MiJbHIwWF3E5fOg42EWNUeL2sb66MGDuSk8GJzOMG6bMD0OI3PEW0KcYnFyqj
         Fj5JXmtcnfMdgWxShzQFQrshJmw6f/USLmRMqS/+r7PP0FPhkNOqktL3/JS4xw8lCYvM
         RMOh0vZeYx5tNqtRVs9xqTGSaswVQ2VGulwSmtzSYgWWCs740h9f3LBPugbt04u7EhUC
         Sxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sy5mfcbrw0evVj3QTV9mzSH9ppMAPeDuiRonN2kAhqQ=;
        b=LS0kTSaLeM8tBEWDDomDXE1rY9iRA/YC4NSFyjXdPWA4IoetUqKymzWBMmK0DJq+Rg
         esBvB/edAxRD7BmYEpUZfmx10DGSpPfPh6TnSYveG5UgvkJLnbUTXm/byuvMV8D/wf41
         iXJH6OmjHEMwCyumJ886CDk86+i1fusqQ6Fr243Hx58pQ1agV+UzNITysBJ1geUuvBdb
         /F0Q/eQ8yYo8J0XzKbEL7Yr7QmzRt3ZGIXC35Bj15vb/4Z98zSjEQI0+KGUVFrVGuszw
         uDlwqyX3UUjZVA+aGUJimZ6acjacw1ycmo2grxTqrbOqASUyeWyYXYwzADIbFz1QMEJb
         tmjg==
X-Gm-Message-State: AHPjjUglJNXB0x9ChvpfINWyjAVa1X2nKujj3WBqM3iyFRJBkAmkryrU
	39BEuXCtMuLJU/05Z+SKCTA=
X-Google-Smtp-Source: AOwi7QBLR89F/m2/Ctybnp8a2XtO+h6WRSaZy0UXjLgHS1LRK3roqCiAPouxNz6UbiMidCP6Z82pSA==
X-Received: by 10.28.10.142 with SMTP id 136mr3361899wmk.92.1506441719402;
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id w14sm1947103wmd.9.2017.09.26.09.01.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 06/10] Staging: media: atomisp: Add spaces around bitwise OR
Date: Tue, 26 Sep 2017 09:01:34 -0700
Message-Id: <c0085ca22121d8272dd2279b507650e12b724a72.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Add spaces around operator to improve the code
readability.

Issue reported by checkpatch.pl script:
* CHECK: spaces preferred around that '|'

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index abfdfe6..06f6e48 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -1521,7 +1521,7 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 	vma->vm_private_data = bo;
 
 	vma->vm_ops = &hmm_bo_vm_ops;
-	vma->vm_flags |= VM_IO|VM_DONTEXPAND|VM_DONTDUMP;
+	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 
 	/*
 	 * call hmm_bo_vm_open explictly.
-- 
2.7.4


