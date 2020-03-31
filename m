X-GM-THRID: 6810513252473110528
X-Received: by 2002:ac2:46d3:: with SMTP id p19mr7128775lfo.125.1585696184447;
        Tue, 31 Mar 2020 16:09:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4d15:: with SMTP id r21ls3953531lfi.0.gmail; Tue, 31 Mar
 2020 16:09:43 -0700 (PDT)
X-Google-Smtp-Source: APiQypLFFZ1yrJQNximlv4CuQpb+h01/on0h1CinSzjrcLydbOJ3b75Y0v/micfHlK/b+nwJ6hCZ
X-Received: by 2002:a05:6512:4c4:: with SMTP id w4mr12942492lfq.153.1585696183321;
        Tue, 31 Mar 2020 16:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696183; cv=none;
        d=google.com; s=arc-20160816;
        b=bEFVj29+ae1VlfqfD2XpPL9cUAhepUCM0+XzsRoAaOtUljLcX9A52HD1BbswWFzAgo
         sNxi4fslmJhhZJzTNN89rp2w1O+Mlkk23iiEjzJG+re3Mg83ZhuYChlSh1tVZLrqrpwg
         K5LoNpZVzQ28s4ZCDLwVShZcaItq3YwLV5v0JFXSoBugBo4Yt3NJh7NM3mc5cBE22Nwx
         aZwsw2MYCY5Pa28HBXZm7d0H/BYG0uHbK0bL0lo9eb2o+vamTVpVKWcn8qoDvfWcMSm+
         pEhqFtgTA1Id5Mt6BNATF6vidVCeEiT1yaLf1OGz9rVRNivtdK2EgIr/6A42nfqxBA0E
         BJRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tCsqgHYkog4chTxy1kDzl3lpCW14Lks/ryArxtovmg0=;
        b=OI1Vuv1ysTPjZy2HNmIEzpKEuknlsjN46m/KLZMpkGGwL9LsE17WJfCm3R1jadK841
         Oxnv5px8ja5TBXbc4hFGtvtqq2wLv801/rXw/+iH+nZq0JbfVA/QWLrJuKRU2vEpICsS
         ngNGP7AnIDXVLXHJVH91yXxhsRsfR9YJ4NRkkKCVsd9nTJydsJsP5kttWWpOUB9kQSGw
         n5K7oYSU/oIFKtKQVry0BCke6WFRntHqWuEh5i72RBlrUB8+QZLQToQh8Eiyb/08CI3l
         0lJJx/aXauc32ZCLoofj3AwzqGxnOJcX2mCDmgA2EwRpKW+BMpNM0PpZwVtA60ku6T6T
         304Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Op7Z88SX;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id w15si16848ljm.5.2020.03.31.16.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Op7Z88SX;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id j17so18772826lfe.7
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tCsqgHYkog4chTxy1kDzl3lpCW14Lks/ryArxtovmg0=;
        b=Op7Z88SXEjCXXWzUSnNNM+7+jqKi7YA+Z3PzrnayxxV2c5gVq9TLeAX9T3Hms2GGmm
         uD6RIDVQh0m/G2wlB7EMWxnzLV3lBR4E+hT0vKRYfmGF4a5ixa9rb3SAEsH0WTLVj7Dc
         F7wXBpwXD34tKMs0d9Yqwwhx0DhrdE6pBD+4Z964zhK0HRkhfxNSQVI8bu495m6BTW46
         6imxJ8QeE9FgNKMMRS77bqassQl2Aj1dRS5TeR6YVoUGwybHCa/ik0sFcAKdwPuzQowB
         yA1DohfS2WjoBmVkA/5bVR0ELre2pMfo71lBIv4GlMnjWhbFc6dz4CYEMccBNm0X0KPu
         LxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tCsqgHYkog4chTxy1kDzl3lpCW14Lks/ryArxtovmg0=;
        b=NfyjNO6Jr/AIf6L87IG8mmqpwYGCGMFoiMGn4LGcOONjKUtTz31tRDYrNfaPB2Vh3W
         7mgcrv43uQczl76XFKyUPM4TH8rh+7feb85doztypZ3pQ0y9YPz+LGIovEsRhH9SvOVJ
         cTTjxRKDcTApVTIop38nWLb8UskptxQougQlFkFe/dtLXbGbrfqvcKr1k1d8H/oRlSsf
         MhdqGocby3ETGlaYGJiNADNQilgWjwzz9AwmTOModM2YX+pphXs4ztDg/NRoot7kRecO
         z5wOBJhr5Sw9HwW4NT1VUF2pdA8a6iV9M0RVomNq2OYt18UblOBLUWklrR5Za2QDWcKa
         HBng==
X-Gm-Message-State: AGi0PubP3KEYZLzJwj6HnfJ4Dp1eoo4/uL1TwE8MtcF1r0TuMEfuPpZn
	3+BziJW6jvmvVPiaLLPSftw=
X-Received: by 2002:a05:6512:48e:: with SMTP id v14mr12355139lfq.35.1585696183117;
        Tue, 31 Mar 2020 16:09:43 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.67.114])
        by smtp.gmail.com with ESMTPSA id o21sm54042ljg.71.2020.03.31.16.09.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 31 Mar 2020 16:09:42 -0700 (PDT)
Date: Wed, 1 Apr 2020 02:09:40 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, rspringer@google.com, toddpoynor@google.com,
	benchan@chromium.org
Subject: [PATCH] staging: gasket: using octal permissions instead of symbolic
 permissions
Message-ID: <20200331230940.GA12376@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Since octal permissions is preffered to symbolic permissions,
octal permissions is used.Problem found checkpatch.pl.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 1d0eed6..28dc422 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.7.4


