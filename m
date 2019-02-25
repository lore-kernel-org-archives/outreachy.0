X-GM-THRID: 6661088091510407168
X-Received: by 2002:a24:4245:: with SMTP id i66mr7759635itb.35.1551108575985;
        Mon, 25 Feb 2019 07:29:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls3079670ion.4.gmail; Mon, 25 Feb
 2019 07:29:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqzQi9kdK9yGfvOwbF3jxgKk2afjAsud/NnD7oQI3AW0m5B9D7Rn5zb+Oh6zj3cBDtiIfpn5
X-Received: by 2002:a6b:8b57:: with SMTP id n84mr9114042iod.4.1551108575484;
        Mon, 25 Feb 2019 07:29:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108575; cv=none;
        d=google.com; s=arc-20160816;
        b=yEjQiS/M1E9YeN4yt8HqsKrtWrcQKCA1TlvaGGXv8uzERE3kdzTD62k8NnlCQoGG/V
         6K4hZzf70cZsANazwH0eE+6EAE5GnZ59Ij/9hUjZ0Ds85ztnwyvMHBlu21++bnTMASIE
         u7wR49LEm8qykWeviT4K4YWOlt4/znQ0XkUWEk0iwGXDK1HX0MVnb214/iquANwj+2Bj
         ugFg1dN0QrdMLnC7F3WIDMWnnWKHuKUwGVCFEand3Z8KCuUDUjv7+3ooLWMvc8AUAK+9
         pg1OF90BkB3XqUpy33M3fwzm++wHy6/0bJ7pfUxQkvK/Alcx8Ty6/vcVSB3ELvyX8h1H
         RT3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=pW0O6vAKscqa0Ekvbf4jPi4YJdIolbYmbBiTu+6rEdDXSS+CU5olFYwGxXZnhTP86m
         yi0JEJJr4PqOwlUm/e4n41iqQ8TikvVPfiRUAb0+ctcrHnlkBg27CITCkhm5qwalPKPM
         DTl3Xb4oL1QlXY5IS3MnoD7h8dNkvaKQrGr4mM3uAfuVfFkgr1kA/fL6Mpsn/4KlYjhg
         3W0+9UAQhMjkEj08ZNtlai+/9gYNGx6v2tv2NiTEiC6hbCIgkqSFAY97n+1xCNgJGXGz
         8oggrCkNECiQ9bE7NMUDNgWUdJcOsUYqFdWu0p5OBC/0EEW5te7pgtBXMUhqnikmNCG2
         hTxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWTQKqX3;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c191si558494itc.1.2019.02.25.07.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWTQKqX3;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b2so4638450pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=ZWTQKqX3VavpWrGWnZwT5WFGOM4ZczIj0pOqLk5lL2XisBsrUxLk81lB0QyRdCpl24
         8XzYB6JJbRcCL5yylRAVgGWr42ASfcUev5qEAkNorytG9An2TXcG7KYRVro3gs1WTB6f
         Oxj/7833VUMnqgPZEIMQLvwM3Rth2MrDzvFMsNM9OCGNNAuAEfUPTmoXab/E9r5WvZHJ
         HUE0VnE1ZsiEQqV4c0NLE2j37urBvrDouOsmSHO/nsXRYsB+BAP0D7rcPIdj6b1RaCQB
         hTwGeREB0eO8EMM1cunmST19p4sCIUCagZD38LgrMeBVabVuZ+9rdTY9TZh9JFv+wOBo
         OoSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6suAVZkVE7dqew+0tFdefovdH6dDgJo79Rl04LxPzQc=;
        b=ao6PSCqyvcjo6n0b06fCSEgA2qgEBH1dLLS0oz1fIXI9nbZ/KJktURrxa8xkew/AJS
         Kiuvagq3qDYHWmt8zlU8CMZoIeS+fp7CuZ1GAaNjM1iCvVcuL9FfyLfchCyCdDxgTUON
         +YxpQJVpxxtW1mahiIpYaQRbLe/ZmfS24CvMJEfYaie8oC6EH5RAIHdG1yLAVlNH2H1V
         ftDObqFScKClof+T6ilOHwQzuF8ZVUkKNsDkqZmrXFNhEQW8U2Wv2rm2O3n41b30WR5n
         LjWisIx0Z0F61Jq/lYJupr5sbfLZeNrGesxPgPNG7ae4exbYOf3Qts7wQGowzF/uiKS9
         odEw==
X-Gm-Message-State: AHQUAua+NLtJ+nerOvQQO+1pz6s9NVmFVQX8kHg/186dK7HrJ1H5gfeI
	90fCuENERKh1YtmPackQpOoozlhe9Bk=
X-Received: by 2002:a62:54c5:: with SMTP id i188mr20571505pfb.188.1551108574992;
        Mon, 25 Feb 2019 07:29:34 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2284515pfa.11.2019.02.25.07.29.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:34 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Subject: [PATCH v2 4/4] Staging: greybus: Do not use multiple blank lines
Date: Mon, 25 Feb 2019 20:59:12 +0530
Message-Id: <20190225152912.10274-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225152912.10274-1-bhanusreemahesh@gmail.com>
References: <20190225152912.10274-1-bhanusreemahesh@gmail.com>

Remove unnecessary blank line
issue found with checkpatch.pl:
CHECK: Please don't use multiple blank lines

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/control.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index ffa41d31896d..a9e8b6036cac 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -15,7 +15,6 @@
 #define GB_CONTROL_VERSION_MAJOR	0
 #define GB_CONTROL_VERSION_MINOR	1
 
-
 static int gb_control_get_version(struct gb_control *control)
 {
 	struct gb_interface *intf = control->connection->intf;
-- 
2.17.1


