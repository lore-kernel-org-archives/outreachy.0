X-GM-THRID: 6669000631583244288
X-Received: by 2002:ae9:ed8c:: with SMTP id c134mr6057900qkg.23.1552792429354;
        Sat, 16 Mar 2019 20:13:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba29:: with SMTP id w41ls5207505qvf.6.gmail; Sat, 16 Mar
 2019 20:13:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx11rJwDvs0cR9ObXlZgCoWepGFkTtmJFTjJcoX0BugVWIugZLorH94nI4sAmBCY05fQJrI
X-Received: by 2002:a0c:b048:: with SMTP id l8mr6171652qvc.52.1552792428750;
        Sat, 16 Mar 2019 20:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552792428; cv=none;
        d=google.com; s=arc-20160816;
        b=eye2gyLoqehLEIUWRP1cXEumVlmmdBiqb9gsdFj5ZpmEaDhwrVoMRgJh42Cz4ZxJt1
         Td9S2gyiMTNsPNj3xA2FuCpBwziwK51iE0ddL6WPEMYJfq7txPo3UWVCbji9zbeXM5/3
         xUMP3Q517IgOqBGAM3aT9xWBEVxCXbOLs88pkOf4kFz9XdNIwku8rCaSzrJe1uDv/YbR
         Omj32ExYJm8RB41uxHDqnlMcLfSGskM3/l85CkHjb4BArw6wusobG7n4o9oG7rAZMO22
         khFB+9GqkKrnkN8HujVkI5FhtIIYVucYr2XoZl/YN3RXwb0yG5z8T8yVF8I4mwtEHC6J
         eTPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=ozcW1Egf4yeRLM0Pe5woDPeAvNuV7eFQrYO7bDJxCY6To0n2q7opDiQlq22Nj5XGma
         Xem2d4wOiUKhgYdXQBnpADYO/Eyy3YeRcrynMWulY5Ot9/SmKrvlsSOQ5kq8hN0TJUb9
         WjKx4OmQS5a0Lkkevr2ROYQiYkH+m+/4kzUOaxAAS3BGHlvsuskdO2TBhp4uUY4aRfr6
         hQa/EaQUdGkAIn4oveEvoEUOR3FXgtOIsgwiGz2nqnJHLiofaILIurmmUhf+CAqCNh3x
         mRpfsgunQ8gllJwu9ubawyi+NiuvQR9jQY5UbLCuo0sbv79G8c7VWG77gNJ/jtq0t8KR
         yMzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Olt1SXOA;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y202si246660qka.2.2019.03.16.20.13.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Olt1SXOA;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id y124so8943590pfy.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 20:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=Olt1SXOABKqHIM59OU2Z0GTRcSHIbG0x+xggcRm/HLOVgPbwGF1BxAUefE4DqZZxkU
         Ohq8nRUxqKl/YvxNSRG0Vhs3Sk4aT138GywilNh+6R5XKLgey93UTOffS3yzAL0Anugs
         SqOMS03CjCLa+hNKofz8dqHE5AlnNPMp3RRXgow6e4ui1VNCyPcPjkFJHVjvtS2olY5M
         rderhCKv55yRCTP7dLJTv2ZxH8kbRv+VvdJ0T7L60dWGvngpUmGlyMyXXJy09zbAgnK5
         auQHwBq5yBuXyxmISa4IQB0i3FQHHRK+2R8DAyC5STEnuAunYi+PHBPZd3OCcH1VHSVg
         HMvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=Jt08wz0xM1aVPpDyCXswXqUdYWMkZQsHMzevX3qLKlc867OHM5R1iMLV0N6mL/yYuO
         fIaIxa/7AXfjC8WHSdJ+ykj6to3n+Bd2mWNu/PlxEa6R+uspj4MFsh7CT95plWiRvvk5
         pDOIuWqJ71ZMSRcm240/m+yxm6P+Bk/kBHeuoYDzbVyIMuQIrW76dbchdkKAia86Xg69
         Q8Pv4FeIZRoqKVfkaGsYsEq6Y1HoA6jOfKki3xYuBriZ0UU1vf+tQrk6ZgdmQe/2DZXq
         E0pwgbYMEDmfHlHThhsKCE3hsUgMjsocsUaqFyJpWj8oelYn3T0lBet801a5TExb6SOt
         387g==
X-Gm-Message-State: APjAAAUCXk4ireqMDa3KN+OTKl9YzeUcxCp9nhv2md6+Mv045/tG/D96
	JIhxHLWvMiS2dFamwWzq4bb1HufisU8=
X-Received: by 2002:a17:902:32b:: with SMTP id 40mr12319820pld.122.1552792428064;
        Sat, 16 Mar 2019 20:13:48 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f87sm8721878pff.38.2019.03.16.20.13.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:47 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sun, 17 Mar 2019 08:43:30 +0530
Message-Id: <20190317031331.11965-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317031331.11965-1-bhanusreemahesh@gmail.com>
References: <20190317031331.11965-1-bhanusreemahesh@gmail.com>

Return the value directly instead of storing it in local variable err.
Remove the unused local variable err.
The semantic patch that fixes the first part of the problem is as follows

// <smpl>
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 4b26ec896a96..8857cdb9dafd 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -752,7 +752,6 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 {
 	struct mmc_command cmd;
 	struct mmc_request mrq;
-	u32 err;
 
 	memset(&cmd, 0, sizeof(struct mmc_command));
 	cmd.opcode = MMC_APP_CMD;
@@ -763,8 +762,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 	mrq.cmd = &cmd; cmd.mrq = &mrq;
 	cmd.data = NULL;
 
-	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
-	return err;
+	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
 }
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
-- 
2.17.1


