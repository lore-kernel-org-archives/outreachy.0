Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.45
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793782217;
	b=rJnIB/mimg+PMPLPenTvtkFe2/sxC4Rla0OscINlMJwwO6rbVIMTMJ8NH7Yb3WUW2m5G
	 Zn4BuN5+MM3FbjjLMCaP+KZRnAk6bosY7Iw6zIBGHBx1yLA5O2c1T6AiSp17wqACN0HEC
	 lkMlcvSOZENjGUGzJRSaZ1T2oGFRW3waTss3zkC3RXixOcVjtiHB188jKkoXG/i4TpCX6
	 NyXVpoW6T0mQAmZ7DfULLXxPMH0DHpctu2UMcs6+HoOdrdeicvhcbEJSs66xMj4cXCHqH
	 d3/LNTnXh519s5It10gMEG8CD8BbT12moDvvRfgYp+BVnNmayonRkyqkW4Qt3UMMxEg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793782217;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=w9glRVuI2Gg13FYTC/bwt9DPF6VcHniNevTZFfAomXQ=;
	b=a4XvzZkIotndBOi1+hqNl87jHVnlo6RqPY9vSA022DpGHgLB6J8H96CqVkDRomJbmtJv
	 +v1HGh+OHrfOtC7Q4r5bUHU0fFObSVb1xxZeEQu2cqm+IuT2/+ZKrtxtB1nnhxMCzcpsM
	 SP060cnjwos8zv3VX3YROvANoaoANcobUDseh2xy4DK76a9b9yqX7CGW3XnN9HfVJaOm3
	 twDC8A2MClqgUiERFpWvfTzURygegnkoFH980eJGzgKHSi9DGQ2CaLTiMfA8myOAXjA2g
	 pd989YeO0Hg9JZzuuAAcng/XzePd6WshuT0nUlk99ikjHj8bSCNxJ6DdCeij4wSoyMw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=qa5B1wEF;
	arc=none smtp.remote-ip=74.125.82.45
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB18606A338
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 08:50:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org DBB18606A338
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=qa5B1wEF
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1aefd1bf74aso350777c88.1
        for <outreachy@lists.linux.dev>; Wed, 04 Nov 2026 00:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793782216; x=1794387016; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=w9glRVuI2Gg13FYTC/bwt9DPF6VcHniNevTZFfAomXQ=;
        b=qa5B1wEFeSqicrsxEIMYyUBiBzGH5FNbQ7Ix7OGk5qZ0VpFRlsIegjDiYBTzFyASIp
         vHjWLMLPUJrMMtNAR+5zlA3yiylEW+PoNWDZex+534c1qpaeaiwmAWAunBnIH5QyGWc2
         T7xUYKOCBOvg1gM4J5KFRjAEJAW58lks31XgWEzMsCDRZG1INVnarW4EDJFKNVjeNakQ
         mGhLm4Dcky74jDsNzPVKgHwVYpG6ABTEp5xnYIkl8wtaTKaLjSbbjphwl8fb2YZe0Q7v
         24J287OWg3WtoSHHvX3SWn4hRHoLy6Az2c5RGahOxOYwUmBGSTU3XdakloNfj+smFMy/
         qrWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793782216; x=1794387016;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w9glRVuI2Gg13FYTC/bwt9DPF6VcHniNevTZFfAomXQ=;
        b=rWpYJOvchOaKzbYBHveF+oQd69r5MO1C0ebkWAZ71FSNDAa57ii/3Ds/PTbdsIzz8E
         nJJMmNywdn9fPw/ag50atkVVQGc6B/MK547c9yMESZh1dVC7Q8wcRONBu4duw9qttYMD
         7bt8AAwIeKA42r1yIqeJZTxYUhUuS/r70rSBlaBTzhSkxVi0yJShPUD3Y2gJpDpCHHK+
         44P+ANi6VsQJGX2go0gEZMeIxShX6duzHB8UeXImRctrD7o2Toucui9wRkN4LM/yaWwm
         3E2IZupnvyfe934Eo9t4MfnrIdjMDXdiuQnawfa64KB6mQTWoyBFZ+QYrUOCsCHuGewm
         Jdhg==
X-Gm-Message-State: APuU4Z9rbgvrEtsWhSHLyPJgK+ynKvhR82dSbEDletlMlAzEKLIWq9Cq
	IMYhLGLAQ7032p8g1K5OSrVQFf08wBriFSTgSh7v7pjxwRbG5MwHis7RJKmlQVSp
X-Gm-Gg: AYBFou2WdhBOSRibTBNSKZRMmLkdv8wOvbcK60WVypExTzCad3r3IgT2iwerGY58/xx
	wAEKP6gIcEjkfEinMKE+Hi7Q1P0TNH4LyyHqFGjjrGHqXIP0jioBPvhLXvS7qycYvvhKs9MSyhe
	la2IuPK75IThr78o+dovlq2i6Gg25Wjhh0N9WlGZrSDjlOdIZ+cgKZqZTVJX32IAsQQmcMz9Tfd
	v5M122sphRLodkPoskY1Fh6giI6PU3Wd7zR5fdX4SdOa391Pw/PjheM/AH+ZjS3W6QgDW2kRIry
	GNBJRAoseEmY2JwfeJwTD1TFGi9olhgVUF+y0aeRSWqzVo1JU9g0X5jP2TbTWA28lW2QDm7GefD
	zhP+BoipeVYF1fS7dG+CkTLKSpNNJ7X8U2EavUVrVDGzSoYKpy9LjHq93N4QFKfLqknI6yFxZtp
	XQK0sOefdlfbDSFVjZ4ef2Tu1QKsu4GNesL9XdOgJvE3+S4wK9WVCQdnkjYDwwxfuTq4cf7OGPC
	SF1ONbg6fXdURlPxg7Plbfo6Ep5+ptTnnxyi/yMs/Ug/N1P3RrlIQr5dsPpYOM1Fpjd6x2RDr8z
	DUd7JMBuLKJzrS3dlc1rJU4d69dpTR1jILHAakYC67EbThAonYLODfzPqhc3I91OS1D2yCrb
X-Received: by 2002:a05:7022:f105:b0:14b:1ef8:698d with SMTP id a92af1059eb24-1ac5b3fcbe0mr18607061c88.15.1793782215653;
        Wed, 04 Nov 2026 00:50:15 -0800 (PST)
Received: from Anonymous.localdomain ([223.181.62.51])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c47076sm5326336c88.16.2026.11.04.00.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 00:50:15 -0800 (PST)
From: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
To: outreachy@lists.linux.dev
Cc: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Subject: [PATCH] staging: media: av7110: wrap long pr_info line
Date: Wed,  4 Nov 2026 08:49:57 +0000
Message-ID: <20261104084957.130340-1-husainsitamuwala21@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch.pl check:

CHECK: line length of 103 exceeds 100 columns

Wrap the pr_info() call in init_av7110_av() so the line stays within
the 100 column limit. No functional change.

Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
---
 drivers/staging/media/av7110/av7110.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/av7110/av7110.c b/drivers/staging/media/av7110/av7110.c
index 432404eceaea..78e8eda2b160 100644
--- a/drivers/staging/media/av7110/av7110.c
+++ b/drivers/staging/media/av7110/av7110.c
@@ -168,7 +168,8 @@ static void init_av7110_av(struct av7110 *av7110)
 		av7110->adac_type = DVB_ADAC_NONE;
 	} else {
 		av7110->adac_type = adac;
-		pr_info("adac type set to %d @ card %d\n", av7110->adac_type, av7110->dvb_adapter.num);
+		pr_info("adac type set to %d @ card %d\n", av7110->adac_type,
+			av7110->dvb_adapter.num);
 	}
 
 	if (av7110->adac_type == DVB_ADAC_NONE || av7110->adac_type == DVB_ADAC_MSP34x0) {
-- 
2.53.0

