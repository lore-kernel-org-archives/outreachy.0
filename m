X-GM-THRID: 6754555674055671808
X-Received: by 2002:a92:1d44:: with SMTP id d65mr15801126ild.14.1572667616988;
        Fri, 01 Nov 2019 21:06:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:7f8c:: with SMTP id r134ls664686jac.9.gmail; Fri, 01 Nov
 2019 21:06:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyEjbPiOMq3ePkrv/jOTAZ8++VJKGeE+WOjjXibuJTvsssiGr1PmWkK44Cr9Pafb+QFNjSO
X-Received: by 2002:a02:7fca:: with SMTP id r193mr4435681jac.34.1572667615806;
        Fri, 01 Nov 2019 21:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572667615; cv=none;
        d=google.com; s=arc-20160816;
        b=ZftwALzztZmHRPXiynx2iuk8b/lcGZGS3wbQLfaB7fapXMaUnT9ycExo1OXLvEeRk0
         gWNT5M1mc2oe+zCKWxYdV5KZfUzbZ3WvRUZ+frUhJ2pyBPtvyFZfdJWQmCkxydtw+Ia1
         UzpUct+2tqNUUf7C+0l+VBsLsAmMpfund1fqwk9NAlVwgAYP6GnDSDopKXfmG3PSC4zs
         mXFMib3LNl0Wm+nWk1Mm357KUKZO6LzSRXSxAQ02ORlNrn9b33YK9rVRKSBDTmtc3LgF
         +hPq/x371kVBcRLF6Wtkm2QeLAxquY1evQ6zAbdD0KTw1MNbZSXa8rJ5oJgnfo1AWzKW
         jyMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ntTN/uHHD/HCsO9LZhOeG3VRIbbFVAxwcoP/ZmCbuY8=;
        b=0PRGxOcrqPD4jj0ocxKhZKISh/7iXfoGwTOPPKePtTdFzYMQJTQjyxfKFDwF81wu01
         cQAc3Kl0S7kwSpu7aHg13t+7B+ZJbueIoq7nlblucF1QYb0bARTggIs1dx1IHsZmC47c
         WB5QrsMT67K22Tq7Gd5pPFe9oMtl93WG8BazHmF3yhg/AcDXzlyXXtRjbaRXFDe3GJgQ
         ZaL3xzQ1/Uuzjxq+cv4T39jOggiP6+YJAzTX9jMy1J/8AB8cZT1BpSMexdG2VDZ8aOsM
         OvPvVIJLniTeLZ8/1WlyO0CI8wwl0NhiyFHZvOu06+vFUReNdRFRRkP7Dr3XMt4H4aiC
         18sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jA31Fcvb;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id a17si520599iok.0.2019.11.01.21.06.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 21:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jA31Fcvb;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x942.google.com with SMTP id i13so3508112uaq.7
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 21:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ntTN/uHHD/HCsO9LZhOeG3VRIbbFVAxwcoP/ZmCbuY8=;
        b=jA31FcvbB+u8LB6EX9WpE1rAw58SH8ILKuh5oox3ol5oTOF5I6knvgaZ5kjhAMythv
         E4nWIJuWbzCb8Yjqix9DrdujbX+aL0LHA+PxTpypbgXnA2tn3OVgxhdlxRw9WnJFcy16
         z+FFg/Rknhps5nWWKBqlTODZoC7LBnl98W65VeUWZDjDp5VdDGyIefPk0ApZwNStwAAZ
         9C/f0uyGofA+Cq1Rh5nZ0XfgOHyeHWb7EAteVg8qpWxPvD0+Sfc8B9oidFyOqTBKoKHx
         4uSJaTmceexw6YNVZ5ZppqF6gksTaeZ+sXdu8yT+SttdHZk8ImZzPHg/IXiIrJjsFz1A
         N5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ntTN/uHHD/HCsO9LZhOeG3VRIbbFVAxwcoP/ZmCbuY8=;
        b=t6AIS4LoH67JDSCXBFXwKuaDRNOZMKwFL4YnWr8VPXQdY/Ub/ybzjgcQ+XBLRtXMUk
         mGGF6Gmn4eJ1yfRdpCNd/qBbYoZmhxQZpEWC5pZq6KUSy8jAIL/B03n500hi3X0PgqpF
         MFx0dTYwlwzcirRFCuc4QZoqb+FobKIjf4YZXVpeg9Z58wMO+VdBfo9m4LDoq+y8mHNS
         +dOwukyotJL6jrgCbAGo12xMAE1leKsnX4SA61NVaO5HgrW2XolbZCVS9TP5MCT7/9jv
         eBibTBemWe+OjaA2vPaZBSbjbwiWBvGjdAoNzYMqpxwHdMKnvWbsgqzPstOQa+vBLhtz
         QGaA==
X-Gm-Message-State: APjAAAX37gZK0B4w8bpxwYkk29yr8XSxT+HtVOUUFamTSe9S/Gp5Sjyt
	q3aDxFLwMjNMZHkicfvVxE0nzQ==
X-Received: by 2002:ab0:7709:: with SMTP id z9mr6705902uaq.110.1572667615325;
        Fri, 01 Nov 2019 21:06:55 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id x82sm2891007vke.23.2019.11.01.21.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 21:06:54 -0700 (PDT)
Date: Sat, 2 Nov 2019 04:06:54 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH v2 2/2] staging: exfat: Fix logical operation continuation
Message-ID: <ace2cbd5e4c03751fb522e7bbd60149e7ed969ae.1572666556.git.frank@generalsoftwareinc.com>
References: <cover.1572666556.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572666556.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

Operators inside a multiline logical expression should be at the end
of the line not at the beginning. This patch fixes two of those cases
and remove an unnecessary parenthesis too, to comply in that way with
the preferred coding style for the linux kernel.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 77984a73ba6e..5f972588669c 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2980,8 +2980,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
 
 	pr_debug("%s entered\n", __func__);
 
-	if ((attr->ia_valid & ATTR_SIZE)
-		&& (attr->ia_size > i_size_read(inode))) {
+	if ((attr->ia_valid & ATTR_SIZE) &&
+	    attr->ia_size > i_size_read(inode)) {
 		error = exfat_cont_expand(inode, attr->ia_size);
 		if (error || attr->ia_valid == ATTR_SIZE)
 			return error;
@@ -2990,8 +2990,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
 
 	ia_valid = attr->ia_valid;
 
-	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET))
-		&& exfat_allow_set_time(sbi, inode)) {
+	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) &&
+	    exfat_allow_set_time(sbi, inode)) {
 		attr->ia_valid &= ~(ATTR_MTIME_SET |
 				    ATTR_ATIME_SET |
 				    ATTR_TIMES_SET);
-- 
2.17.1


