X-GM-THRID: 6802879895263248384
X-Received: by 2002:a25:5556:: with SMTP id j83mr10521102ybb.197.1584040014802;
        Thu, 12 Mar 2020 12:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:74cd:: with SMTP id p196ls1867250ybc.7.gmail; Thu, 12
 Mar 2020 12:06:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs9/0fM/PvzEngUM0Vl/NA2H0NCUeqBmPhddAp+Ly9bCUgYhTQJGPtfpPxZnxHIPbz4haiw
X-Received: by 2002:a25:c945:: with SMTP id z66mr11213295ybf.206.1584040013441;
        Thu, 12 Mar 2020 12:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584040013; cv=none;
        d=google.com; s=arc-20160816;
        b=WJa8s5EQ3JB5lF7KYDJTE/aLm5posdLG2uHFRecp84gOCHFw1rFU/T1W6dSWDwPLwR
         XrpuLgAyHUF/EWJv7ciyA3n5EKL6tDJCL9mmntVzjNsV8RkSc7SRd7blYyhoI9wuFWFz
         a61ZckDTz++k6qwp3QHnO00/D8AEe5G72WppBn51MBUkVUIbz6QnhYb/Ih1Y3oWleWx4
         Cyl2Kg55tC530rbm1d9h7537N3xuLAyVkQewwHj3PCm7a//mMipfUNnX4cyj5HVG5K9E
         SsShzsKbviD4+YHPVMp5wRQHEx9pul0vY3u7CWuoQJr3N3JRmoDU2Wbfz5i1W0fuF8Pk
         1EVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6w8VzrLQXrU89o7WRmOLRi5T0P0hagHFVoj4uAXyD6w=;
        b=i3tAJBIYWnO3qQQBGPFxryh/p7AGUjNVl5N9q/gtUb3bjn6x6KMPKqs3lVaALXWu4/
         8Az7s9Gs0hdTcyiERxfUSLcnC/RXmnmrmSNc+Wkf5sAbngBhbW9msw8YpQbBUfmXffBm
         5z9VN3j6RD0T3QmdEwugCvPZOK6iqTra1rrp8YdwZuG6nuFgKtp7LYhQlthse5Cy9vcW
         LkQfM9gBb0MHCN83eqRsAzFnKT/WltPobDcU3103mhCxmVmqTOFIwTopkdzXVsL5WE1M
         MnPzo3IadLcA9J7u8uFvMuA8dIs9OhXG+Z8b76oaNx6QSXvhhNi2rZqcGs4syiihNbJL
         ymgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ElnhYLHm;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w18si499280ybe.0.2020.03.12.12.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ElnhYLHm;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id s2so3521366pgv.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6w8VzrLQXrU89o7WRmOLRi5T0P0hagHFVoj4uAXyD6w=;
        b=ElnhYLHm9eQzp6LRdk2+6Ws4BI03CXwR6QsTbTzCMB2hYSJ8Ad31cfyo/bIWMHDq2M
         P+CwovGIVSG0qdgh0y2mGFEOMpNbftLla7u9h956zYfJ+Rigpdpv20KW/PHdllYElmBr
         7KFchyWGi9PmzTK5ELsDKJt8NjLDIhso05OfgbB/UrPz+fPIfSIslCL4kMhqvR04mB6O
         O9JoQQYxFd+38DJbHyB16JRP78wCR207SP1rlt3CsQr3O5Pv1q9Ihz3ZGqwoxi5PGSAp
         bGrXN5C6XiI3r2hNC46flC6pZ1Lf4PPMwxt2RuZTpqVnuunW0HXbwIgpg9BW+NGdcD8e
         2CtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6w8VzrLQXrU89o7WRmOLRi5T0P0hagHFVoj4uAXyD6w=;
        b=hXlW1eu2J8hzL+hjp5MmuB8wkuBybr0tmU1Evvi8eo4DAhkO/zApJLOWhxeIGl7cmN
         mIlQXfdIalpLr7cf58P19McQN8dUxwpu0G7uko28s+qSEVqg5ncDkg9APtLiDnkCuS2J
         +w0J+RXA4Tn1af4KFBlAkjUsCNB7DcvsZg6d5fg++VduoPPyG4VuFB9pXgNQdZOEkOxl
         oU/344+Z8VFsjb0pRt9O5ya0fyI9+yQdpOCz2XdfyoJAFiT1r45FncOs+uSD4xS5dTTZ
         mydhz53Bhviz6ei5+aYwczBbF5eq4MgY5PaKn/klmstsQ5xckBJTZBP/UryY+gpP5INU
         DEdQ==
X-Gm-Message-State: ANhLgQ2AKrPl24mVFW5NRU/Go8U9r3X/Y/7DsTeNmeCbk78pyuI1Av7j
	HwNtJdLhPLqQ3gRCfsSRYZE9uyyU
X-Received: by 2002:a63:a807:: with SMTP id o7mr8852942pgf.407.1584040012573;
        Thu, 12 Mar 2020 12:06:52 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.gmail.com with ESMTPSA id i124sm8806961pfg.14.2020.03.12.12.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:06:51 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 2/4] staging: qlge: qlge_mpi.c: remove an unneeded variable
Date: Fri, 13 Mar 2020 00:36:22 +0530
Message-Id: <20200312190624.24167-3-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
References: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v2: Nothing has changed.

 drivers/staging/qlge/qlge_mpi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 22ebd6cb8525..60c08d9cc034 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -90,10 +90,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
 
 int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 {
-	int status;
-
-	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
-	return status;
+	return ql_write_mpi_reg(qdev, 0x00001010, 1);
 }
 
 /* Determine if we are in charge of the firwmare. If
-- 
2.17.1


