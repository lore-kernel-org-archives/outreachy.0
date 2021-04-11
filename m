X-GM-THRID: 6949954642104025088
X-Received: by 2002:a25:eb02:: with SMTP id d2mr30128244ybs.225.1618162412461;
        Sun, 11 Apr 2021 10:33:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls6387465ybj.0.gmail; Sun, 11 Apr
 2021 10:33:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwKtSSKCmOGTHC7KZVQ6pPrW5fBoSGZ5DffrzSLn4ECc6lUC0pG93hfqkuwO7ahxDuKaHD
X-Received: by 2002:a25:d113:: with SMTP id i19mr14215258ybg.39.1618162411375;
        Sun, 11 Apr 2021 10:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618162411; cv=none;
        d=google.com; s=arc-20160816;
        b=jS2Uk/1WistOPds+IQx25iVMDog0gmy/idtICHB34MUd1l1saKSjjfbFaY0i02Go7T
         ZygWpkV3m2ScVBWwWu8MAkM4tfFyuL4kQmM2309oEVeSZwud/fWN++F+nN3krYAmlEK4
         8feoSPgSAS0kwY22Qc/Ey7f0/+ovEvE1+yX4/5e3jxCIFpgZggkS7l+hdByRJ+oMTveS
         7f+BjHsZ4/ygrb9Rqy3fHtbtVi/v5yZZiXri/evDVbSdMJSqtp3Y33mSjNlb+Z0K1I56
         ANkdDFihgUi8heMwopXKUu7kKV0+D2pos2ox9ju280wiHHtOPjgXVKLhaUd65Z4VlKl1
         aZOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=4iE0QwYtOYUIJkBsUJWv+G7D+vD/AGIYmK25klck3y0=;
        b=aA84V4ZsYXZSl/YZJ0R6X+sGq69qUzfYgB7W+H2rfiGP0kjcmVVmNEm4zqRNmR6yXf
         pwvsnM9iRLhS+izmcmvuDxeTqe/TVbuGSys9iSvj4J584Lhrhe1FHUq5xzydaIsH+GFM
         ts2b+Z+3cFPJVpUBFztKCPqmQpS6KjHJDGN4Vj8hmWqkUIsRrKnReVELjsBKlVkhSQgc
         5Erbmks+L1Gpe1ltQCsWnZYImJauccW4pkYjeIwAoInGB0XWW7xftpD60Q28SsYATbVG
         YeOMpDzX3RUA4G/jDJ0rdk2/AYPTW1ZtMSdizrC9i0Oaco3iudIqVQJmL3JQvVDinIGg
         fPQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZSz+Xmu;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id i1si599738ybe.2.2021.04.11.10.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 10:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZSz+Xmu;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id p12so7563342pgj.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 10:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=4iE0QwYtOYUIJkBsUJWv+G7D+vD/AGIYmK25klck3y0=;
        b=sZSz+Xmu+nEJccFoszRmGiVuedsK1gEd7UgKgIuGaB1/lmB7k2UHKL1yZEuiYlr66a
         emCDhVLbn4qNOY1+KJcDYc2y6hxNp+bgaI1BIjX8JXc5vBZQLeDQPgBjzQBi9qMzoFv6
         dNmEW9wpzykAqm/iw509q7eIr2a67kZMgP8my8c7ZO6QGKXPRNQ1xhsGP+ThVASp7MS8
         mYlkgWko5uc81VJP3S4gbz/XEs35MMv9MuyD4QsD+OpXt07VyyDHxvpCIwgiXFp7RTCn
         hv6Qyeatfhuvb39sdYhYN64LfbYN80XPmVYOaYecCdfzvFchBycuxOW4S1hm7wUF7ihc
         xeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=4iE0QwYtOYUIJkBsUJWv+G7D+vD/AGIYmK25klck3y0=;
        b=e76nN+hKXKM+lfAJrHoIT9cUjTgxJhtfKeMWGRs1mirGImyFdoVALt7TIehfDQkyJQ
         ycmwUhlO5PTyGnZSbqj1HdZoJpGxnu5WI6cRCJESZG6LOGNaT7FL1LhlxkJvyb0bSwqn
         YBFi96sxJHffr3LXJCJYVA/joXAV14DTz4hql2yf3HglBgL0qpsHA4frK7SdSpjQ9+K0
         oHub3hl/NT9FYs2tDQ5+pBLDkj6vl/6eUo1zAEduLTdWcNF5CQV8yMkMfZbS6mrrEqfD
         UKJQELvk8z2Fuq4AQpleWiRn8Z/oKLmaHnYAaswcDWcGvzOKI5ryOkQm8uHgFC2yFJje
         JOVw==
X-Gm-Message-State: AOAM530JrrSP9KZDzpfvPz+v5J9G8Rsn8KHzAOsB64Jr29IH3/DYCW47
	yJYcodfAjYFgcEmrkS4PXZg=
X-Received: by 2002:a63:181c:: with SMTP id y28mr23783254pgl.175.1618162410938;
        Sun, 11 Apr 2021 10:33:30 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id t10sm8403802pjy.16.2021.04.11.10.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 10:33:30 -0700 (PDT)
Date: Sun, 11 Apr 2021 23:03:23 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rts5208: remove unnecessary ftrace-like logging
Message-ID: <YHMy457UGosfeaC0@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed unnecessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rts5208/xd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 0f369935fb6c..a305e15dfb9c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -1628,7 +1628,6 @@ static int xd_finish_write(struct rtsx_chip *chip,
 	int retval, zone_no;
 	u16 log_off;
 
-	dev_dbg(rtsx_dev(chip), "%s ", __func__);
 	dev_dbg(rtsx_dev(chip), "old_blk = 0x%x, ", old_blk);
 	dev_dbg(rtsx_dev(chip),	"new_blk = 0x%x, ", new_blk);
 	dev_dbg(rtsx_dev(chip), "log_blk = 0x%x\n", log_blk);
@@ -1806,7 +1805,6 @@ int xd_delay_write(struct rtsx_chip *chip)
 	int retval;
 
 	if (delay_write->delay_write_flag) {
-		dev_dbg(rtsx_dev(chip), "%s\n", __func__);
 		retval = xd_switch_clock(chip);
 		if (retval != STATUS_SUCCESS)
 			return STATUS_FAIL;
-- 
2.30.2


