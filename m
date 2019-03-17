X-GM-THRID: 6668974051336126464
X-Received: by 2002:ab0:4963:: with SMTP id a32mr6991598uad.13.1552782760677;
        Sat, 16 Mar 2019 17:32:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:76cd:: with SMTP id w13ls2246909uaq.2.gmail; Sat, 16 Mar
 2019 17:32:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQCtu3UEstj3h2TvaByxmnxHioVT/d4oSHOk/bHTFhg0yzMfyuflz7vfsgQ6lT+ffJfGXc
X-Received: by 2002:ab0:69d6:: with SMTP id u22mr6995938uaq.9.1552782759952;
        Sat, 16 Mar 2019 17:32:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782759; cv=none;
        d=google.com; s=arc-20160816;
        b=dg0D+A9T8Wb8GvbTqS0V9Msf6HMQPWllElUdlXnGW7VUwIdQ/3MOKStXgnQyDYM9c6
         CQkXqLqSKVn+Kb4Fl4F/haH3zsMdKgE8KoSNTXdMYJX/4cP6Pjn+PVUlR5qIK9nosVhh
         oBXWhyL9ZLyoBNsUATulGLux1wDp0ktvAJwhp5i+VykokEy/8V/Wtvnn0cvIQI3p9LqB
         G9sTpgfmrfbHj/eyWMLS/i7k12rF/IljhTEXGG3UHpNZcQLNQ/A69oPdlGcP8FAuIque
         G87E6wcS/B9wz8rWU9RG8uiPhhwxjPsrCYi5cZZcaKDulK2jFm2Vq3ZjVnpAIyqs2QuV
         1Szw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=DVXTny2trehNGatakXgtU6zH8afkAmLwXhE/v8Kjzng=;
        b=qDfhIIMUex17OMNdNkaSeUD9yMJYCtWKa5tF5ra7LFZ44sKCwqfBLVQtGfHHjHjtTd
         dF8D+U+FilCtvhMyv+dqHjTzIbwXutbPlE+ZE99YRtrezlB9r5qcgqI7OeoEcrnnJ0Oa
         xoN3t+E9qwshvyEgQ8O1DxBvFALrHQyIv151KYgEY3dk4+HGrD23Wl3K5XvarsSGi7rL
         RIMvajoWz9Wc8m2SCwW9t+5rcx2Lw70hlyTka22KtC+ciTB8IWDVQnBY+fR+yNR7LSbU
         h2Y18ibec1qKehK7Bdaa8frXIUiD+B3ahcQlJNzmpXDT6J2cEIsFGEXOpmrlEKZuGVMH
         7QPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjFTZNdP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q85si347507vke.5.2019.03.16.17.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjFTZNdP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id t82so10272000oie.12
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=DVXTny2trehNGatakXgtU6zH8afkAmLwXhE/v8Kjzng=;
        b=gjFTZNdPDppZhXnI3ZTFJmpRsSXP17PJXZPwyvBqUz2iLa54qpZIJStEJ7C4LjoJ7q
         TyAUQiLBZ+Mhysw0E3smFCXar3c2gFl8mZ09PuvOve1caJ1j75iVmEGeA+3g6JORJ5VN
         53KRZW2nVXJuGhKZ7wN7p6RrMz0dbfZEXL/6r6lwwPH54mmvcfEUSVEttWn9+P9S0Zom
         rlz4CuyP8EOZzIxRY4r3bsS4G6q/ds66eNkx7LxZsTTx4btUpwu29OkxUR0JRiMSxvM7
         I7MdMg8tdyKcFUONp4ajtXdWpENYKNEE61k+DKoKxes8B/lrZrVKaqsgI+0MrKfB6dFP
         GeQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=DVXTny2trehNGatakXgtU6zH8afkAmLwXhE/v8Kjzng=;
        b=e6zRbaZB6TjMlbeVpMipcE5faLeHkeurvw40Hq8opq4qcxmQJyvJmHnheM0Eg6T4g7
         bq/oBWUdRW3oSHDKFapBeKwLiy6miSdUBbA0Fcnniz6xarPbRpGrfdFEYwQP8F4q+5dY
         QmZugGq/XPJyBiAtEb3Lwa17DxQAItFugX/4JQ6I/Ci5Gok+awv4MKOsv7WsmIgyuSv2
         cQYupVphv+ris3xUw9V9KHxiPkLwHC5HopnwemBT+c8hVOAqoaC6SKP1SibXfR9ify8q
         AaBcGvAfm1GAK/1g94zWWFUwJgodr2O1Xq0rpUQ1bS+7tez0ink8+xF4muI+9VcyigYO
         nL6w==
X-Gm-Message-State: APjAAAW+ylBWnwqkKkxxr96mQnG2g8yydlMEkh0/AcFDolQXlbqKUrRu
	iP1rkzW5tHX3NG4VwYd+c8E=
X-Received: by 2002:aca:a84a:: with SMTP id r71mr6040788oie.56.1552782759431;
        Sat, 16 Mar 2019 17:32:39 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id c16sm2360991otl.70.2019.03.16.17.32.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:38 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 4/7] Staging: rtl8723bs: Remove unnecessary function declarations
Date: Sat, 16 Mar 2019 19:32:21 -0500
Message-Id: <a439f2d4d1f6a2ab47306bbcb7794379554979fc.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

Remove unnecessary function declarations, as it is never used in a
kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/include/cmd_osdep.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index 0749936df032..6940d86e93cf 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -7,9 +7,6 @@
 #ifndef __CMD_OSDEP_H_
 #define __CMD_OSDEP_H_
 
-
-extern sint _rtw_init_cmd_priv (struct	cmd_priv *pcmdpriv);
-extern sint _rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
 extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
 extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
-- 
2.17.1


