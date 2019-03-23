X-GM-THRID: 6671492660700643328
X-Received: by 2002:a67:fb4a:: with SMTP id e10mr8475370vsr.234.1553327949071;
        Sat, 23 Mar 2019 00:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:49f3:: with SMTP id f48ls1076627uad.4.gmail; Sat, 23 Mar
 2019 00:59:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5DTGhj9gWj5zs3H6ZbxAzu3T5xVQltES/oRA769PJPHuF9YQlc+BdyIlWHBewUqEM6J5a
X-Received: by 2002:ab0:238e:: with SMTP id b14mr7240994uan.52.1553327948249;
        Sat, 23 Mar 2019 00:59:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327948; cv=none;
        d=google.com; s=arc-20160816;
        b=MwG9S70VTki4iwyprbJZ/JuqsQHwqcjtgJLAfkjB0A3bOyrFj+3l5vK6+RExmSW/so
         cv7B5xYR88cUVhg0zXeukIlM5OXJm/bcfSuOvsQva7GSjkagNkcEaSNq2OleHUFEIl1o
         fgc+D6bP7kN949RmsVxP6bClBIPZCj7+wxPjdhSIfiLxz1hRi44rFxIKyaCcZZ8VLe9r
         fH8uf0NqSZpePMDBZWgBdaiPQvMY77z/kLi3QPhbrLqAfZ9X9B5EmV3B4wQjx8IZmnEp
         7Eo3dzeoort9Is/1x1HkzfGkRdGlhbc4RBmwxz6HA6mPRR6njiKfU+ZnSMg5XAvj72A/
         1tug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=TQh8+SXgxG8tHOFv7q6YvWhOdnh58WqQ+5sQV0t7dWU=;
        b=jalFCYXPFFmDJGHSJyMjgoRdWSHNybMN7bJizd15st+xkQxnEL7Gk6QrHIX7LPnCe5
         9WB1q4QSR42KW/dF3TAYCN1i3mZEfs38hMMhME9kDWUHgzscb2AhfJSwS05ybdAjElpa
         UjPIBBlnEv30fCF5lB5rAs18Y3j+4PQXJj259qP8Oy0jwLTUMWDx0dF2c++lZxjTZPUH
         Ns4043jIoLI8t3IuhOuHPPiziq8AFcM3lCAb8o/bQySxAKzwD/6zfkjC4lCdR3SjB6b3
         +notnTYDthM80vyd6JPwRtIPUFeAykXbpo79+CnefI7SCcb2r32oKDQekFlokzAzTumM
         31HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naLpVu38;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k68si385187vkg.5.2019.03.23.00.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naLpVu38;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p10so3051535pff.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=TQh8+SXgxG8tHOFv7q6YvWhOdnh58WqQ+5sQV0t7dWU=;
        b=naLpVu38iVRabdoYdNzXKQasMqgwdPtdG6uM+0/icU0aateYvs8OA+C/lWh/nxQkts
         i+tK3s0xTCiepj2LqSdIAk76QG1uDl1njfXnFebo7fL32SGQ1E5mHs4+bBq90cmCoF+f
         AwH0eBt/mlk/yoy+7mhJWKfEYDzJDDfK5hFi5OQMeix/NsbCD0VGCM0zg/mtyS5RDg4/
         EZ30Qo6pAprvoV0Y7A55HoKMnGER1sj+CzsPkejXbIw1zzFSjItEEvxupWecam9AUfy0
         boPUTTb40c//WuwBW7UCK7qWuSWLt0XQO9XH4wz1w9SOOKDSr37T7TcIt9cOJUfrCiFa
         /SnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=TQh8+SXgxG8tHOFv7q6YvWhOdnh58WqQ+5sQV0t7dWU=;
        b=ujEzHYFaxbMa31UM1TgOVV+B6k+nwPpJuJVVLb7AX2YPw3/eWdnXM8TUcTCrwG+CjY
         xq0xKghbhES4SB4DDgEklKP2Ju5tNVuLvr9zMaFIc6jv9T4m17OdPAsfU7g0KZaT59XG
         OUIg0oOQQz5OHz27Nfdlx90HeYuKiFHMV4TcGLpRiFc0y+re+c0lkENyhIkHbqWTh+kR
         j9S4TbfFtV4SjcU0b+J5hQEX4l/poaxbimb8eGE78CAxxiVFmRSfVq3m4euryJiS9zAI
         AzKJu9dZxGRqim6IgSo5JNZnxJ99Yz9VmBWYVgt4swJskyifsxWyJLelN2ROLamW6Hou
         OtDA==
X-Gm-Message-State: APjAAAXNBCn7+KpnW4AD5QxQaHCKeUtDRt1Xeo/vLQ7T3j4etQeRL8/F
	Rl8u5EGdSe7RNCNPgb+La4sUNA/N
X-Received: by 2002:a62:47d0:: with SMTP id p77mr13138267pfi.95.1553327947110;
        Sat, 23 Mar 2019 00:59:07 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id n24sm22379150pfi.123.2019.03.23.00.59.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 00:59:06 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	pkbehappyallthetime@gmail.com
Subject: [PATCH 5/5] staging: rtl8712: Lines should not end with a parenthesis
Date: Sat, 23 Mar 2019 13:28:31 +0530
Message-Id: <6c161b8014359af7402d6832e21853af7424307f.1553327467.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adjust code to fix the style issue- ‘Lines should not end with a
parenthesis’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 34341bf..3ff64e2 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -300,16 +300,14 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 		for (i = 0; i < PGPKG_MAX_WORDS; i++) {
 			if (BIT(i) & word_en) {
 				if (BIT(i) & pkt.word_en) {
-					if (efuse_one_byte_read(
-							padapter, addr,
-							&value))
+					if (efuse_one_byte_read(padapter, addr,
+								&value))
 						pkt.data[i * 2] = value;
 					else
 						return false;
-					if (efuse_one_byte_read(
-							padapter,
-							addr + 1,
-							&value))
+					if (efuse_one_byte_read(padapter,
+								addr + 1,
+								&value))
 						pkt.data[i * 2 + 1] =
 							value;
 					else
-- 
2.7.4


