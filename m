X-GM-THRID: 6749323707377778688
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr13736643pgm.120.1572144315482;
        Sat, 26 Oct 2019 19:45:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:850e:: with SMTP id v14ls1552463pfn.1.gmail; Sat, 26 Oct
 2019 19:45:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3gWP+SVuI9jwSRuQd7L4Eve9kzi+F1aXcUYoDl2ojtiiPSyXFc57QMJdbc3+rVe+8qG8K
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr13736561pgm.120.1572144314285;
        Sat, 26 Oct 2019 19:45:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572144314; cv=none;
        d=google.com; s=arc-20160816;
        b=xutWoWGkNu11ypvRNPrgfklaVYFZ4PS/JaP2QxuXTkqicIm1LORqz6bz90sm2KI4LA
         Yjl8gVMUgttt65UbKL53buaGoSaFLAQCB90hTyYxnYtepUP80AC6RvwB9zEem72/tKNw
         PY7+G9KX4NCno6uYNU1ZrX8jgMxtwddhssVWCj844NrEHuwgyeHWeeM2AGC2r57guNTz
         YF+6KPN/GMeOhOOnECtXHhQCI8kv1n8s8k+uXqopT32gQjIyq+msm2DlZyXikYsPYXpF
         qFtfHBeLqO8xFWcrApEELdXu9rZUuvf/q82mPfdzfDAJiN44+5QB6oQ1qA9s69hetTGM
         rICw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=HZaEqi5rbDW3nJZwTkzHaEQ9R0n5JA3LqMOBGU/veUkgRZ5Hyo7+B45f4IDhQAj3q1
         H9tr4qk/hA9rhpVvxCBk2Rp1lsIGS7by5odjETCDIDw3D3fNHxt77wTePs1tWJu4P/0M
         dn4ytsQwyO1DbHV9SmjMRACQ+gCYobayKlsIv93Lpx/TLWH9raXlieNFl82NalFLHhU3
         BCQKVlKJwrrYcyWkFSnTHn6wZ7ZuNJe4TCQkNk8pRuYsIgthcdTZ0/ic0N7I7DhU0fVI
         pO0b5D1LdyPARqHR7zJnKV1kE9WnEWLELS20OwXzmvBXRsZ8lzcboObUuezDL8Yqs7SD
         GquQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3Vs8+kd;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id b17si308725plz.1.2019.10.26.19.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 19:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3Vs8+kd;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id d17so9439616qto.3
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 19:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=T3Vs8+kd81XTuDrPekh2sEGYcOA9YfXPPdFxVAsuMifDvw4VYrBbU6BrKWJbRNydMQ
         F7pjAzn6mj/1W9GrJDvDFJIeDnGp5WgC65UumkXx9skrmN7e/syL4xF6hEvWgggN9HSr
         a+jXS1/6NVa5xDz6zdNYfJZN2QtDVRr8/dIHMf8taHiswlJGTtFD0LoEsy6I0QOCUKqP
         WAZG4VnoAgS1VpSF1qzd4ay12ezGxZswsSj6xkGqnYmjDPhKiUaPhkyKbliz/B8FyieP
         +riAGkv7A/+n1S2Gi982Zfj2CMMlkhplOUih0nIbLXXJb82SQsxCf+a6+4JQYrO5Y+88
         fmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=mCNL6bqw0CKBxJReDuNYqR2wxnl8UMPI9wj97/aw51gGb7UkVvjrYSuII5HfFf/wkD
         nNvQs33a80QH2Mg8OIdqIP554q12ipsN60oHUZsmmHuHbYM0L0I/ugn3lfLd/GRG/dXf
         TP+O+LzD/e55Vo0kQ9ezOJOtP0pmku/simIESXlCa3/+QMJWzT6X8f5Ba3wPP4Fn34yX
         GNH6YfnJgxRm5uQ9LBWiGvJxLFWajuwTnaUFyAn8B3tNq4dlJ4HV/wfmWyTYV0EwqSiS
         Q89fhhkbqE74dIdKQ4La8cUJrJMyjndTZxKrtzw+yqIwqBYCX2pmwLiT2z0UlGo+gHHy
         aS5w==
X-Gm-Message-State: APjAAAWec6d6tqmcNRCN3WKhh3PQ3/fCkzvWMs+cwm9ASQC2ZpNxllOM
	WwfENENjdLhSHELjQzaFhPRn6jd3lOG0Nw==
X-Received: by 2002:a0c:902f:: with SMTP id o44mr10989197qvo.192.1572144313483;
        Sat, 26 Oct 2019 19:45:13 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([172.98.66.16])
        by smtp.gmail.com with ESMTPSA id j17sm3806991qki.99.2019.10.26.19.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 19:45:13 -0700 (PDT)
Date: Sat, 26 Oct 2019 21:45:10 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v3 0/2] Adjustments in function call
Message-ID: <cover.1572144163.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

V2: Update the message of the second commit to include the updated
    patch version and to use the Suggested-By tag.
V3: Update the first commit to include the Suggested-By tag and
    the second commit to update the patch version.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


