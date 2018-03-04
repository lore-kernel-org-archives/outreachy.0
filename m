X-GM-THRID: 6528628385749401600
X-Received: by 10.28.141.4 with SMTP id p4mr679141wmd.15.1520154604734;
        Sun, 04 Mar 2018 01:10:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.10 with SMTP id i10ls1004834wmf.3.canary-gmail; Sun, 04
 Mar 2018 01:10:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELu0BAsuQy6ZJe67rfuCAOmofVYkYZ3X0Iziiaoubb1om0/KE8MdIUE+aUh8J/IXGeBoMe4V
X-Received: by 10.28.211.129 with SMTP id k123mr126211wmg.17.1520154604043;
        Sun, 04 Mar 2018 01:10:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520154604; cv=none;
        d=google.com; s=arc-20160816;
        b=CcEyE2tcfsPaFd1oHKCN8Fr2MJp8o52TzB1cQureyMg4CXdil1JKMjFGo2KoDhUriG
         3E01XZowanWTrNwwLFLrOQt0ewODwNvbf3LlG9u/0B045lywXaQ2y+8aL+5/GKNMYSBn
         Yvp4u4MNI3Us/QJHr9PTKlmE56oNRGSQYTMav/MP5dIuMX8hcmgOqhQd/YyLhLTAPG0N
         EtV1rfUQozaq48tCYlHapOKilQ7IQ3iDngieStBG4Yo1D+CLKZDH2AFLFJETdKYo2JuN
         uIXK9WyYvIJZoa83hnqlY6M39mSmcQCLZk/0+s81euljFnE9AemNlF7wqK46zeCaQXY+
         2ZWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=TrccVzbXP4jEYOUpJoBmQhYbiiUG49fmTPhgudpR2kk=;
        b=OMmuYb//RypCAvlScrRKO8Hj+VPT206om9c+sSbgp29aQxhukL9p8Nvo5PZUQXdgR/
         D7oVoYL7MmUYj8774qL7+74h/DNM24eLON+bYdQqLHFQMtkTkwv+mC7Xl6+CTGdkad0e
         4zuF6zNbF+axihOhSvFyfDKjTu1Cmg6G14pQSeB46uHhDgkG1UjJM5lbKes3MyM0yZ8B
         ybbhXeOrfvv80UebkDpqkYTbSH6FHuhLQjuM3cj3FUsbNJ/oE5nAVu8JkC04akUzzg35
         1UTF0JEcg7nnbt991R7vvX3wvcnUr3+57w/RF5Eu3xh0c/EvCAnxzKUtv6FqHrsyk5Un
         OcGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aga3Ceot;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id a138si163988wmd.0.2018.03.04.01.10.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 01:10:04 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aga3Ceot;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id x7so10121403wmc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 01:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TrccVzbXP4jEYOUpJoBmQhYbiiUG49fmTPhgudpR2kk=;
        b=Aga3CeotoxEnCH8cbh/sQaMvVTudevZEOe91h2eF3hMFlmgQ10coC7i31LPJFMPp8n
         mkwWozNUS5tSwWAkLKmN/hmeAsH9bw2Yk4u75Uec9ujXkRuFWb45OAlQur+arysz1E/d
         K62IZFBm1yfbDQobOgmOhBSXvZBUGqOizjgvle44SsNE5fZY3Bj8fM6juXJpm+KkmQD5
         7ApWmJmH8jc4H1XbhpwC0HTvNrVLCQjy88TfJre0EXi/7u4e6ToWrxQ/qBBgvvnRMzKj
         Jwjmc283AFsFI3YWsvv5skA72ZBso/baWbegpAlL4oUGPwFFBik+khpINZoxhEn87TM7
         sUoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=TrccVzbXP4jEYOUpJoBmQhYbiiUG49fmTPhgudpR2kk=;
        b=HEiX8zuE5b/xfTw2SQyOlwwjd4q4rXivDPZXO+RfhWI9jl2oL+hVNEZ0wMemtIgDxV
         9wKA2f+fP50h4hflyp6hNniIJ++Ly5kqn2D6VPDcFqvGwHL3XDZGRgvMTA4a3E5430bV
         jXorC90+bZiFUIjgqbGlXrtPDaCc8DrK0wssFt0QsKHKNWQL4vezHejPb+GyAzDaOip5
         34c89g6v/eQbiu0aKmdOhItZ1moYCYM9MLYEB3pp9xhf/9AYFS6o4sm8ZcaDJq1KOLNV
         qtLK9fjdrSvORh0QXmvzNKWJkz3TZERFOXk9UVOsIMXeHxihuJH+t2g2iXa6SyE9cFGU
         LIwQ==
X-Gm-Message-State: AElRT7GCF5vpAmzG63zOZBVomf5HnHHokhcmiIvLRitqAouW+POxWywj
	XVFvqzm3TiJTeLP4Zdw/8Vmdy6RV
X-Received: by 10.28.92.17 with SMTP id q17mr5064968wmb.97.1520154603712;
        Sun, 04 Mar 2018 01:10:03 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id y1sm7871635wrh.80.2018.03.04.01.10.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 01:10:03 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: lustre: obdclass: Add 'const' to char* array
Date: Sun,  4 Mar 2018 11:09:04 +0200
Message-Id: <972f6d2db61a5b28df0dcfeaf57bfc3df2bac801.1520153895.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>
In-Reply-To: <cover.1520153895.git.dafna3@gmail.com>
References: <cover.1520153895.git.dafna3@gmail.com>

Replace 'const char*' arrays with 'const char * const'
since the values in the arrays are not changed.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 3b683b7..9ca29a2 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -224,7 +224,7 @@ EXPORT_SYMBOL(cl_lock_release);
 
 const char *cl_lock_mode_name(const enum cl_lock_mode mode)
 {
-	static const char *names[] = {
+	static const char * const names[] = {
 		[CLM_READ]    = "R",
 		[CLM_WRITE]   = "W",
 		[CLM_GROUP]   = "G"
diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 7b18d77..7809f6a 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -495,7 +495,7 @@ static struct cache_stats cl_env_stats = {
 int cl_site_stats_print(const struct cl_site *site, struct seq_file *m)
 {
 	size_t i;
-	static const char *pstate[] = {
+	static const char * const pstate[] = {
 		[CPS_CACHED]  = "c",
 		[CPS_OWNED]   = "o",
 		[CPS_PAGEOUT] = "w",
-- 
2.7.4


