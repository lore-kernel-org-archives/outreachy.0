X-GM-THRID: 6465937630940889088
X-Received: by 10.159.194.201 with SMTP id u9mr2859542plz.2.1505468434044;
        Fri, 15 Sep 2017 02:40:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.59.88 with SMTP id i85ls5954172ioa.24.gmail; Fri, 15 Sep
 2017 02:40:33 -0700 (PDT)
X-Received: by 10.129.137.199 with SMTP id z190mr2415260ywf.63.1505468433455;
        Fri, 15 Sep 2017 02:40:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505468433; cv=none;
        d=google.com; s=arc-20160816;
        b=F1LUiJns1o9Njm1WuxAaOpro7/0+0XNFLmhZ6G1H4mkjJpefufYF0faoNoeJl5PmIw
         WaML1wWP6QAhx+QcGoGcBH1qBG7QXjWABAbPdC6m7ZxyQM6IZzjZbSwfyENpzEk14q+A
         woQa7e6efhxWKthg1E4OjoOaAqThrIcYm7Vf/uoQAMZaDjkykdqGy6avMSH6PeZNfhU4
         aIiNoAXION/pQ90JR4EoxdgGfmd/UuJ53HnCmi4/Jr8l9ek7pTS6crtxJVAd0WCFlJbo
         AC12+/+0nb2BBiAttUHS5VdkfSR2Sf0ujXbNXZ/pl7cuuB3BmJ+1GVDGesWGf+5UoHDy
         PLMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=W3MFQ7GGy5WkNhCMnhlrW83ZXwISoM03qTp+CqVmnRdI4RSrEP6+x/j6YQZY9D8d/k
         Da8t/0D8T5Ccwjld3LaXrPdIrPaYtJUUm5GVbfIaVDQ0r/5TusZxia6jZs1DIUQWFrsW
         BqpYQBSdHtAU2FF+heQPAQEPAHJkBZQM+2TZoIVcJDFcDw/jC6v0sPqT6nuP9wzXlrUN
         wpKz+Pu9mrbwJZx+UEyUXQzRvKDTUWMDO3GL6x4mKhwZ1w0UWvsS7w/R36cphe23NEf3
         LycCteKIJsY12+G+jY2Jmop4Xgl24p5DYS5AY1zqGLxngG7/Kh0mZ+k1le17fpjVUbIU
         NM0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ePzQ+pfX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q15si48641pfi.7.2017.09.15.02.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:40:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ePzQ+pfX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so1083035pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 02:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=ePzQ+pfX5M0VH0DDO5kbUWyFEqk9xxKsQSeVr6M2BaYOFlHKyJeVVEZO5B3xG1f0Ut
         ndJTq07n4VBBk6oMXouJwOcM2kzz4+f5WjexNCbHQbiFPRphPPO3zOrgsuGOIf6CXt3s
         aDylMsdcYqd3icM4PbJ0NfJrOikV5pRagoLCiDlYL/DZyRVwaAEhvWXp5XU5FS+0JqHz
         niHQUaOEs/iAqosgAyD6jpxGASn9+aLbML4Zx3UPuS0ZzCwk6EfKpCkGkakRZoAUpTtU
         1NHmW6N2tSYE2+K8RDCJXtyIV4F1Fqyl5LaEHknYDS+d9z2Xisl8UW2Id6vR8FS3NCmM
         Z4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=B0D/dnKIAHtQurvRKn8WdUyk2fGMmcl52n9SYB617GkSsNSrbNoe11+qeXgRRffupM
         dnEnhEwnG2rVohyNoK6OrvlXYlrnVu/mp8MKaV6T44VZpibapZqLICLg93Q3sBZECNof
         ykNkUEMb/TUmgLwrRvmtODo+M6S7t1ZgSgw2OY7ge+8XxQXp3uu7Bg+dn9v3HNB5VMbd
         c/y/LnNsP4DBEQ6CdB8czZc4ZwoBpSV/EvXZUiVCKC4PaIcB7U1GqPlH2xIgOKuGogFk
         VAJAuoLviA4CV0Ql+lhpb24mWgarconJWeaXteyk+BN76L6mumAwuo4zyRTmQTff+b7q
         +0nA==
X-Gm-Message-State: AHPjjUi27UElymf+XjHd4qNIClE1IMj0D3wl5leDWtBjwqc0q6ZhrAI9
	SHd9kLzg8EF5LQ==
X-Google-Smtp-Source: ADKCNb46bJlaKDCLqtko2vOclbI5UkdWYvfSdEdVKaUS8htLQtrqHpjvWJ0HQ1pnlG1e5xWO1EWvgw==
X-Received: by 10.84.199.194 with SMTP id d2mr19150832plh.346.1505468433201;
        Fri, 15 Sep 2017 02:40:33 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id 195sm1702824pgg.42.2017.09.15.02.40.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 02:40:32 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 3/4] staging: lustre: lllite: fix multi line comments alignment in file
Date: Fri, 15 Sep 2017 15:10:11 +0530
Message-Id: <121b56d314150f0af1ec556a7036fca4c2cfc9cc.1505468281.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: Block comments should align the * on each line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index bd17b38..d1fa32b 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -386,8 +386,8 @@ static int ll_intent_file_open(struct dentry *de, void *lmm, int lmmsize,
 	ll_finish_md_op_data(op_data);
 	if (rc == -ESTALE) {
 		/* reason for keep own exit path - don`t flood log
-		* with messages with -ESTALE errors.
-		*/
+		 * with messages with -ESTALE errors.
+		 */
 		if (!it_disposition(itp, DISP_OPEN_OPEN) ||
 		    it_open_error(DISP_OPEN_OPEN, itp))
 			goto out;
-- 
2.7.4


