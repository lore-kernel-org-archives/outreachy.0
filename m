X-GM-THRID: 6669079539693387776
X-Received: by 2002:a05:6830:8b:: with SMTP id a11mr5663005oto.33.1552766081378;
        Sat, 16 Mar 2019 12:54:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls1420443otl.4.gmail; Sat, 16 Mar
 2019 12:54:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1Tz4t9JUca82b6ijkYizD970r3APzsv11kR5nNdbn4IvX/509gbII8SwkJCzuPrTuXwaq
X-Received: by 2002:a9d:7654:: with SMTP id o20mr5313005otl.70.1552766080600;
        Sat, 16 Mar 2019 12:54:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552766080; cv=none;
        d=google.com; s=arc-20160816;
        b=CyGC+4JrWHMnrbI0RiTrHLqeMAURFlFuOhI2zheD6H5KwDzVno3k4oEXMcWQAmBbfm
         BnaMfpbDaoRBkKZKgUD9EY0CDtN6nF9XX+NiSEyvZdLyJolP7dWkbfNGojN6sylkrhUJ
         bKn0CQBqs4YRewxan0dmSFosoOZim/nwrP57J3uykZprTXlrlAZIXTcdR0jM6gODtcrT
         XdeAlcc8cJCEvuVeRzWCQ3Io1sMTZ9Bz+JQfCt9ZJVSpX5HL3XZ8UXuJ7+3j1ZH8kgyY
         8JFyabRiyD+pFN7F3AX4Ayb/Qwe+od4U2OPPgMGt+eC84kJPsg6wGQeK37hnhxB5fG75
         DwJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=bnuGqOwTmew5QigThuWtTZRmPhbX64v5vbBISMu+ngg=;
        b=hqMt79rh+QCdDX1DE+yFG78Brpe/Fh6dVCXAE4Xhuc/XIScygyonAoUa/oQCQSnBaH
         iFhFDE4MG9vtDTy/H6IzSYabnn8xk4spsS7+Rb/AtizRbsyApDKs3ZDeHmyQ2+XfDwpW
         W6XGx7mUDRCtYF0wLGB1bunfmtNAC3YuMDpQWOr958WPT5IqcJE+jxsbHVW9y+7FM1mJ
         sira/crEDehxnhG2OgrlE1wxKrB0rB2LCqbbDTWBwvw46h2eC7SkoSANoR5/lXnw5kXY
         2//oVblyLDagz52Jypdqz24ii29C+DYhLf9bJhJ+U4ZvJWlyofK+gtRhfcTPocDOKlgy
         dW5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ks5JpYyk;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p8si203393oig.5.2019.03.16.12.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ks5JpYyk;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i7so5483859pgq.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bnuGqOwTmew5QigThuWtTZRmPhbX64v5vbBISMu+ngg=;
        b=ks5JpYykduYTdkFZsQhstQ8SqwsB1i4P6rSwVI64yeF63zs1JtEnLrddxQ85MtAbXH
         I5timzMCAgNHfLZuiWpRm+E5N+hwhnninB00Ig1WHIV5GWCRjZxqXgzJx9i6zEFXpuaR
         IRqJ1PiQEcYXoNNlrWuWHuKApFCLp9ySgM7mbp4bUf7d3IxauptuUyxopIMPBmPawaqT
         6qs42wSJ4biVkSe4vzlNQlyS/gLrgKF+ZOJDRK6TDlhO01+6IlT3gERDNBajK5IIk1pi
         TwNAx6IeFHtleypNifaT+lcoETqWydxLDeNZTky/YhBK/YVkJgP9kTjnvrzzmiaY1CHk
         YqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bnuGqOwTmew5QigThuWtTZRmPhbX64v5vbBISMu+ngg=;
        b=X99ovY/hQTmWncfRsAicKeAM6r6Jj9gFS3md23wRAgpomY80dn1G8FEZd7Q3UlNPGY
         KbNiign/HSQsHTyBaytIfWUUu1IcsVP7dlslNBNlprA/IggDLR09nzWyPsdHyOj0lwic
         Vcyb7+vxH5crhQIzKoZGoluf1yAcPv+FZ5KGoiFg7MrWODKVjdjrKdXcIsV1e6hjuIJO
         NSF2/qmv7CziUxvBOQwEUurVisipyonhM6zkyjH+jDfEdbQdSdBt/LgRAnKkuwLrViLN
         aRUxziZNc+7GftG8psazOkcBP1l0hChMsN1tvmJP52zYq7hE9BrGc1sbY3sd0fllc3Oo
         xsFw==
X-Gm-Message-State: APjAAAUjued7iHlos1Fs7u2nn5ucqe6saQdqNWQednqjCTjke7F5pilt
	03KKB4zvVoNzmP3/02CK0pM=
X-Received: by 2002:a17:902:b708:: with SMTP id d8mr11006011pls.322.1552766079879;
        Sat, 16 Mar 2019 12:54:39 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.217.69])
        by smtp.gmail.com with ESMTPSA id w26sm2340525pfn.27.2019.03.16.12.54.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:54:39 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] Staging: gasket: Create a new variable to improve readability 
Date: Sun, 17 Mar 2019 01:24:27 +0530
Message-Id: <20190316195427.2673-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

- Define a new variable temp_table.
- Modify it to maintain Linux Kernel Coding style.

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 7c2ffa467557..d0fffb51c9c4 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -526,21 +526,22 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 	}
 
 	type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
+	struct gasket_page_table *temp_table = gasket_dev->page_table[0]
 	switch (type) {
 	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries
-				       (gasket_dev->page_table[0]));
+				gasket_page_table_num_entries(temp_table);
+				       
 		break;
 	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries
-				       (gasket_dev->page_table[0]));
+				gasket_page_table_num_entries(temp_table);
+				       
 		break;
 	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_active_pages
-				       (gasket_dev->page_table[0]));
+				gasket_page_table_num_active_pages(temp_table);
+				       
 		break;
 	default:
 		dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
-- 
2.17.1


