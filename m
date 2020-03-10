X-GM-THRID: 6802607426621145088
X-Received: by 2002:a62:3604:: with SMTP id d4mr23646966pfa.82.1583871269419;
        Tue, 10 Mar 2020 13:14:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls6596930plp.2.gmail; Tue, 10
 Mar 2020 13:14:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt0mtVg5Q2SEKjifuPNS1j2kOTw4Msz6vdSuXLZc2wqLJHMivYrnXQIgPHHJKsz3KVlxCX5
X-Received: by 2002:a17:90b:3d8:: with SMTP id go24mr3534104pjb.48.1583871268056;
        Tue, 10 Mar 2020 13:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583871268; cv=none;
        d=google.com; s=arc-20160816;
        b=DAHshG3MzzTHhFwqgDfPmjxlmcEtX1Haqe2lC9ezwHZVW9u5ZPHNT0CYUCQETCkZhm
         0DKZuQp/cPtYtQMr/tK+v4+F9b9ZXXnMs7qPB+VXghY5a7oZfAxX8eCAxiksXs997W2T
         0I2F+ADN/yZv+uqFGft9dQH8tJnHMrnYD6VCGaxowmhzDPs0UtKoilJ/yqEIvMdYdO+O
         qU49TIZNMXIpHKU1RLBTASq2xg6WTttXj/66qTq8SJnk175VEm3s6TpLeXUU5c8e0LGK
         e7DmdKkMcEYPiM1zUIk4eWRmdYELHrTik8h8wK+MvnFWL+FWdax35zqYIzcDn796bysA
         Tb6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Rgg0Zw96JmVk2CaBwuTfceZmb8ZMPs5J+skGLp2XArg=;
        b=t52D7nGfsIF0dKA2VyyIg6h8cBHBR6zaCPTrFdHSlrdBkUZIHPdU8Q/lxsgM0jZXAP
         9Xw0mAwNbgh4+6EBS7kvJlIZpGuokJ1HdkVQzt3Ho/elj6/gi5Cz5FQkIGTmbxW2s+NX
         mespTCTl2Qk30d6ZFasDq25DyNMsDA8Cu02WnPYEdzAe3HNJh+1LIhpybWmopGrX2p1a
         XbGXCxryTRJWaUCAyc+D8FjeevhMpBJcdZSTZQGE/VwFhhmKjVJmOLpKEYW1XeUCYon8
         PjHYmmIlBfG+PDl6GXobnuapByLuoekdD1Bg+VsE+ZLMtS3DqzlUSEkHD8a4n9x4iloc
         3GXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQaixMBH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id h10si144619pju.1.2020.03.10.13.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQaixMBH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id y7so897540pjn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 13:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Rgg0Zw96JmVk2CaBwuTfceZmb8ZMPs5J+skGLp2XArg=;
        b=DQaixMBHokonFRoVxgQRxLqRRemMoE4inKIcc9j5Al6iJknWib322qGrircSywMH+Q
         RNWqENWWwKXF9awv132Zy9K/aIhTfNxE6GRLH0zUfQrpICW2ObyopLKvRLa5gyFpU8FU
         WGg/tw2QWL3p4/LVjLPeVSRjv42/HWgU0JoPsyWPtPFB7ytm5wy8ddmLcXDRRP5c1LS4
         2Bpi3b1Xqt1FVrtZXr10Nxgphm7uVORITdXDuNEA2QBSbknzrbH/IvWRSptD8GeW1dd5
         o7GZ/+PD48kYmqcfzGxX155qYEi6i0dRB4FebPK69WbdxYUiD9qKEaFP7bH+TkJwkyM/
         HgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Rgg0Zw96JmVk2CaBwuTfceZmb8ZMPs5J+skGLp2XArg=;
        b=al6IkB0kPD+G52ywc71JI9bt95HwaBinqB4I+HfIVBKRX3tZXlSaJZsNiAj/15ek+S
         qKYlIhP6T3jsAVk3+tN9HjpUlMHMqK758MYazoz8ZpxgaiaKfoxjgM6PrkH/Mu8EomMX
         uK1/Z9D5993RRz2QRyRzFf06QNMWa4jYXi/AGXD+aLslkq9L+WOsYQRxRvssH56xifEm
         NDvJ3TncV2/bNBPqjkOh5TOhEFv3jsJXHJPtcxXZ4e3Lpn3y8F/iwH6zQ3GRPxrSQXl4
         3YjGk+S/u4bUMq29jlZVjs2eYoZ21OLQCCgdYJA2yFSYwWIHiNRcxUiBORcfqnvZrwhm
         RpFQ==
X-Gm-Message-State: ANhLgQ3syNsk1gtCxH+WC5Rr6B/b+N5n1M2n7QcaPLCUYWzSg2brTFKD
	1RbE2+tNaDT3wEN5tsDf51qkBbq7
X-Received: by 2002:a17:90a:2103:: with SMTP id a3mr3463480pje.181.1583871267476;
        Tue, 10 Mar 2020 13:14:27 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id a22sm15925099pfo.56.2020.03.10.13.14.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 13:14:27 -0700 (PDT)
Date: Wed, 11 Mar 2020 01:44:22 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v3] staging: comedi: dt2801: remove old unused code
Message-ID: <20200310201419.GA3417@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

There are two #if 0 blocks that have no recent history of any change.
Remove those code blocks for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes in V3:
	- moved patch revision comments for v2 into this area
Changes in V2:
	- Removed extra spaces after colon in patch description
---
 drivers/staging/comedi/drivers/dt2801.c | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
index a29880981d81..aad02faa2f83 100644
--- a/drivers/staging/comedi/drivers/dt2801.c
+++ b/drivers/staging/comedi/drivers/dt2801.c
@@ -87,17 +87,6 @@
 #define DT2801_STATUS		1
 #define DT2801_CMD		1
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
-	4, {
-		BIP_RANGE(10),
-		BIP_RANGE(5),
-		BIP_RANGE(2.5),
-		BIP_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	4, {
 		BIP_RANGE(10),
@@ -107,17 +96,6 @@ static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
 	}
 };
 
-#if 0
-/* ignore 'defined but not used' warning */
-static const struct comedi_lrange range_dt2801_ai_pgh_unipolar = {
-	4, {
-		UNI_RANGE(10),
-		UNI_RANGE(5),
-		UNI_RANGE(2.5),
-		UNI_RANGE(1.25)
-	}
-};
-#endif
 static const struct comedi_lrange range_dt2801_ai_pgl_unipolar = {
 	4, {
 		UNI_RANGE(10),
-- 
2.17.1


