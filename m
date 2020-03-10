X-GM-THRID: 6802607426621145088
X-Received: by 2002:aa7:9f11:: with SMTP id g17mr2843820pfr.224.1583855465177;
        Tue, 10 Mar 2020 08:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:f248:: with SMTP id y8ls4991255pfl.6.gmail; Tue, 10 Mar
 2020 08:51:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZSdnEoor2JnIfJsx+SU8FQQKiNb82cHTufedEYcJcApS3U+6Aqb7CKmqUC3D87AMckmo+
X-Received: by 2002:a62:25c6:: with SMTP id l189mr22165172pfl.136.1583855463788;
        Tue, 10 Mar 2020 08:51:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583855463; cv=none;
        d=google.com; s=arc-20160816;
        b=Bn/a9yNNPg5tAupD3LkdGLLBlH4tMrghB93cOW5FYGY0OpIh/jt1WO5iXtiso7P/d3
         HCRcybjX08erR4t4Rx0u8ih8ZdhM62jF4HrZ4CqiAZfkGP17ksAhUewkV6hEWaw5J2vl
         6J0hEvkMtQXF3uTuu/oxq/Ou6iKCDYbw/uwePAeAem2BsJeKpnREWiLQMYLN9GNhVoMb
         egrXGvVh1ux6FZUpCVmaQ4LP6Ytp3CcJum0f0SG4pzLQqXl7F+/vNYj2NuVgTmQpgIag
         0D8ZzE9PGunAONU3eFNU+N9cs+nq9tL0xhYF6+OqfSU+mmWQg5cK1UBJjSyHwjyZIW+R
         D8Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iqa7foDdsq0RhB7OrMkqu0XD/LH+bGdQuphEk8MsbFI=;
        b=yxZX8d2kPhOXzkXrq1rKJgOmfizlj3c8fTgN6beFEkBAWGbDR15SheQ4Uymoyp0KTt
         PfUcHl2BOf+b+ajqBPSmp1+hT6lwfIpdEXlVcj5Wi4aSE0+0rQBSZOblrlGNUkbMu5pt
         ukH6NhGhH1m1a//i6aM2oj7Gvp0i2OsuN+mBrImo+Nq1CC8ETk1nw7l25upCm68kx9sJ
         tBw5pQhtvlW3QqRs03kv7VsLXxQ69LY+LyFnSLkfgMviZEl43OXYEoOkSh0UhBNdiETU
         J/yOe6nStronTpy+J6TXWSudPOjl6Rw3SaLkzC7EgUe4j1M9Myf+I2UNT7D05bcRyb51
         P5kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BSn68XAK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x12si846776plv.3.2020.03.10.08.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 08:51:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BSn68XAK;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t3so6482994pgn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 08:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iqa7foDdsq0RhB7OrMkqu0XD/LH+bGdQuphEk8MsbFI=;
        b=BSn68XAKUEseZfJBLq3kkrmJ74En0W+wIQsaA1GW8KWQJd+In4TFYc/A+2ABF5EzFe
         pIEhQL7XBzrW+CPe4m3VN+YpcfeJ99XSiGSwWDa+ry/VOPOSsQg/uxveuGetXUK943ul
         FBohH+Gb30QdI5uXptqxw036Ls4daSlF7gUkFJwwP2RA9KifNwlUQqYU+MDGBUCQuvY1
         Il5xQ/cxH6V8K0rJMp1SO4pvP/8ZNwJHXoFc9DZYAwQaf5DyOrD5G/bTwxSEVAum/67p
         Eg6FLXXdZYkz7HOJ06gHXgIMTXKi7hAiWTQyfMZglKbDg59nTBqOTCxV7LH/prtn5sH6
         sfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iqa7foDdsq0RhB7OrMkqu0XD/LH+bGdQuphEk8MsbFI=;
        b=N7eGb/pXrqfqUR5eLURljYUjuU+zD0G4qtHlriOzYLl54rq8+Rv8nCGH4tLPG0oT0N
         1LYOqVMhQPyWhK6RQPki6/8n+TLW73s3wLiiGup5HV4Oarf+FwyBpGTblLW7Z/HSNM2u
         n3RekgwGfBNl2ZusKyUkxxjZ/D5qov3avkKQBwpQ2eBb3evvC+gQdOrH5+bgZK+hzemF
         HIkGHC3EPrHV5/HndBLCXdn4rqJxKeK/zjPKmODvBw0Ip/JUGjyI4jz4ClKQqmrKiPzG
         /Xph+jJIgfPxMYEOEhpAykotgUomJ++Z5f1QVzRlY5Vugy/dG730FPwUIAcRsnRlx8PF
         Ehyw==
X-Gm-Message-State: ANhLgQ0P9zwZ3RMRlVVH/pxRj8lD3stKazZr6eHzF1GOj99gJ66TDiLj
	4RX6cINfDEiXS+vukNl3PTMt3qac
X-Received: by 2002:a62:4ed1:: with SMTP id c200mr12453915pfb.207.1583855463260;
        Tue, 10 Mar 2020 08:51:03 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.69])
        by smtp.gmail.com with ESMTPSA id x19sm25209472pfc.144.2020.03.10.08.51.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 08:51:02 -0700 (PDT)
Date: Tue, 10 Mar 2020 21:20:58 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH] staging : comedi : dt2801 : remove old unused code
Message-ID: <20200310155053.GA27759@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

there are 2 #if 0 blocks that have no recent history of any change. We
can remove those code blocks for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
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


