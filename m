X-GM-THRID: 6950506572644614144
X-Received: by 2002:a17:903:2082:b029:e9:f75:d0ce with SMTP id d2-20020a1709032082b02900e90f75d0cemr29792826plc.24.1618290937121;
        Mon, 12 Apr 2021 22:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2cc5:: with SMTP id s188ls6695520pfs.5.gmail; Mon, 12
 Apr 2021 22:15:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzFQOgYLzA0WuqEfBndy7nybmwzD4NNXEyJsK/D1asKSPMr9C7d+L9y/Q/GNmL7mCunw1q
X-Received: by 2002:a05:6a00:2ce:b029:246:f904:a95 with SMTP id b14-20020a056a0002ceb0290246f9040a95mr18910476pft.64.1618290936103;
        Mon, 12 Apr 2021 22:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618290936; cv=none;
        d=google.com; s=arc-20160816;
        b=U68zqo3qoH513e3lDJKnMNjDoEKfYZOV56gvMj87fEal8ppdF1ZP7SnIjjAlc4sR5b
         QLqm91WNnLCBXYtg+kjdhC3aJV9ADuXxBMqx2OHNs0aSo+4sr+zZ2BKTjmDBV1oBxdWF
         ON555A7FSax1Cz+athPKP1kgMX65m2FBQ3GcqkWYboF/OuIo4cpf9C9uOCoZIoRHSgVn
         lLyMcQaJfdn6v6WLKVOZsBI5Pt4zub2kvpNBoE9QpoUkmubJRFDSF9Un7HtGMo4C5B6z
         +6HXyH3jCTxRlrbCW5N0OAH/lOyMFiXyfIwFmwilipZCjwjXjss+ZR++g4OdCGvEsdEG
         /C8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8FKIyfvJimu5n8dTNB4u4e/nO7qNHfn5pyDyp+5wO5A=;
        b=m1Xxg3gNKZ3up4PQDu4wAfwpK95EApPgHklt3W4Kp717vt5656DGu+awQ0ar/qz0cI
         FVgiUnRAczDvIwZuQeeD/Jtwiq+6ncNZPyGCiPtz5W6WR23iy47VfAZhmkQBODj2q/bl
         9KtRZ6IwTqfsQqYzG/RTX+F1qj0iNXQ4RlI1KWpukuGGanze8DOZE9hPVmrEKtnegzWi
         17OYO9KlSQwFnRK02yVNKYyj1z3DElZrOulkSJizn707x54TJhsX0dWocHOrc2zo4Era
         7IKOk1m95ejp4oJtXTsBWe0g3AQ33UaUEzzjFbBmH53xzqiiFxkxXAjatVkXrJ1EYkpT
         9Acw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kwYX7mZ+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id g23si1338076pfu.3.2021.04.12.22.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 22:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kwYX7mZ+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id j7so7577631plx.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 22:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8FKIyfvJimu5n8dTNB4u4e/nO7qNHfn5pyDyp+5wO5A=;
        b=kwYX7mZ+06IgOFbOJmfyFCBrXT2iZis2iKlsVKmQ6TObfXOKlWf748R2KuJuKBe5wQ
         ZDTAW071raQSQESs/qsmvuwWJA3eMJqOpb2TrREPQjrFuCK3bNyyGyMjFdC5DzeDoopm
         9sKCaMc3O2nkzTFh4YI7AP4seaBiWroGsu72AyIafrceegqRLu7jfwTbUuUpsboFm+1C
         dnXytEElZVTt7Ow2SVVw0BBy1F3NLJZvWW73JGjX9VXyY4NcSecXOHEXeFbYd3NkdMbo
         N9L2tiGy3UqxaekwntF0tQTeDB+Ne7kRcpV5iIh+3PSuoInAfzKpHdy83cYIhvE1k+l0
         AxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8FKIyfvJimu5n8dTNB4u4e/nO7qNHfn5pyDyp+5wO5A=;
        b=D5SgZMht+b8cNLMYD+2ONoUsEdc1qYSBCuasZuVjZgWqQIheGhFItMCfNXa4nkxdzD
         I3zzyJK/DI2xJsGfcMPJ10NDuAwvk0NejUWaFD8RLPf0f+8xHjYoUoEkDIaGXKTKRnt5
         aaLvirlgeVA3nDnx58gWbPMLoq48Fy4rSyrEj6Al7ZKznEgOhpuVKpbIi7KkxfFVHifg
         GsXkEXFWusUV0j96DoUkEEO+1f6FI/vU7+alnjEbJVM/CeOq5GdxQI3+ni0c5KX39fG3
         FDPOKUhHqBDCt6iBhtJq29Q3wuwxsi9qamZWrhWdcNwdq60kdBz3OEVJ+UOAKfbsqVmf
         m+8A==
X-Gm-Message-State: AOAM531cMxD/xaODA3iyhiAENbS5kf6FywY8ebhxaAk/1E1BMAwqD+sk
	KtYPIYRsxo+D5jJAoPonsBc=
X-Received: by 2002:a17:90b:1e01:: with SMTP id pg1mr2956908pjb.156.1618290935759;
        Mon, 12 Apr 2021 22:15:35 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id v1sm960182pjt.1.2021.04.12.22.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 22:15:35 -0700 (PDT)
Date: Tue, 13 Apr 2021 10:45:29 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 1/4] staging: media: intel-ipu3: remove unnecessary blank
 line
Message-ID: <79b543d96fa0bd613090984b98c5665344b4dddf.1618289130.git.mitaliborkar810@gmail.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618289130.git.mitaliborkar810@gmail.com>

Removed an unnecessary blank line to meet linux kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- No changes. 

 drivers/staging/media/ipu3/include/intel-ipu3.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index d95ca9ebfafb..335522e7fc08 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -75,7 +75,6 @@ struct ipu3_uapi_grid_config {
 	(IPU3_UAPI_AWB_MAX_SETS * \
 	 (IPU3_UAPI_AWB_SET_SIZE + IPU3_UAPI_AWB_SPARE_FOR_BUBBLES))
 
-
 /**
  * struct ipu3_uapi_awb_raw_buffer - AWB raw buffer
  *
-- 
2.30.2


