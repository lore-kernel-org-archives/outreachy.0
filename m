X-GM-THRID: 6249299693524746240
X-Received: by 10.107.11.23 with SMTP id v23mr21219498ioi.13.1455037625636;
        Tue, 09 Feb 2016 09:07:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.243 with SMTP id t19ls212196igr.28.gmail; Tue, 09 Feb
 2016 09:07:05 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr35707321iod.29.1455037625287;
        Tue, 09 Feb 2016 09:07:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id t198si785836ywe.3.2016.02.09.09.07.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 09:07:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id 14so4945533qgg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 09:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9J1QhJR30V9wGS7XCQJBoJiEn2Tb+CZ/B+i1McPEgP4=;
        b=RERRUPxvRqDWptA9wc6oFfgLbu9y07Xq3FtocqFCCgEOg+sW5az18Tm2KE61m706ml
         5zFR+EAV+2XhrC1SvukvBtckBxGw5P+g/3rEBjruR0G79naX6yBDic57q/5bQ2XjNEXN
         6SMM8l5ejqeQJmG7yZQslg2czxEIoo5WtfeUfb9B0niCkpNDUfY0TciY7Vk9qpIiOKNv
         fQAXTshM/3W0KyY/DHfL5K9DfhZe0SMlhbPZg0JDqAQJoaF60A3J2Mp+THDuS/gLiYXI
         0LSx6U/uAz6PfaGfY1UjvVaBoIhu45rfCQYCiyWtjAdyHaKA4fioUiCv7IlsB0HOff89
         GU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=9J1QhJR30V9wGS7XCQJBoJiEn2Tb+CZ/B+i1McPEgP4=;
        b=R7Ne3LDtz90IgNBqX7fqoWOQStvIMmfAWrLEHc0KKKHfPwUbAs+jKipS3BbujJQnhm
         owA3B3UbVvknpFuSZre0vZXHqNu6VJlgiBJnlKlilKay0ZD7iiHvTk67EUkiaGQwKlCj
         bVtCBgCpvGBGLu/y1Ci7mJcSTgqtKThIT6xtQIOQDvYIgfh/OUYB0e/JBRmVUOuvoBgM
         4uTMc5YyWf5rg8b0T9XbfeEsNkJ2Hf05JPjxi1RlOdCG9F61QZuXVjMB8QnZ1Xn38ZBD
         pVnqWeU9LFiDPUI+9/0z06CYrd4U9YVy6y6aQNmkJDsyAPHVvoxlRzTr2GTv4wzfMhjU
         zaVg==
X-Gm-Message-State: AG10YORn8q9DZYoZZeTsLngrCgXFI9eBtNF96OY4BcTafb1nVpTyKIxEbOhghK46c1xRzg==
X-Received: by 10.140.140.6 with SMTP id 6mr43621016qhm.29.1455037625132;
        Tue, 09 Feb 2016 09:07:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id a88sm4145936qkj.32.2016.02.09.09.07.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 09:07:04 -0800 (PST)
Date: Tue, 9 Feb 2016 17:06:27 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: rdma: Use kcalloc instead of kzalloc
Message-ID: <20160209220627.GA9912@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kcalloc rather than kzalloc when multiplied by size to prevent
integer overflows. This change also makes code nicer to read.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v3:
 * This patch makes changes since Greg's tree rather than my previous
   patch
   
 drivers/staging/rdma/hfi1/efivar.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
index 7dc5bae..e569f9f 100644
--- a/drivers/staging/rdma/hfi1/efivar.c
+++ b/drivers/staging/rdma/hfi1/efivar.c
@@ -83,8 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
 	if (!efi_enabled(EFI_RUNTIME_SERVICES))
 		return -EOPNOTSUPP;
 
-	uni_name = kzalloc(sizeof(efi_char16_t) * (strlen(name) + 1),
-			   GFP_KERNEL);
+	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t), GFP_KERNEL);
 	temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
 
 	if (!uni_name || !temp_buffer) {
-- 
2.5.0


