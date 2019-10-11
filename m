X-GM-THRID: 6746399399110246400
X-Received: by 2002:a17:90a:2ec3:: with SMTP id h3mr15536775pjs.131.1570768683729;
        Thu, 10 Oct 2019 21:38:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls1758270pfb.0.gmail; Thu, 10 Oct
 2019 21:38:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8b1HF7o9cEpu9JQ8NSLFQTy9C3ptm1Nc2QQkbjAlgdHNJHvu80iQDneJ4AHoR/8Qo9gAT
X-Received: by 2002:a63:160a:: with SMTP id w10mr15328619pgl.212.1570768682916;
        Thu, 10 Oct 2019 21:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570768682; cv=none;
        d=google.com; s=arc-20160816;
        b=zbzFE4GDVM9rqcAmbnMiK75+4xPlsWtUoKukKn63LLNflf4/MbHryH4KH5wbfb40cO
         8tJTjCO+IxAda/vK2pUvKINhOXy55bFqIY/2XslTiWONn1W+AnKcbBq8/2WxZZodq/kN
         CqMq3F9w1Nf0B3vgpsl4O6MIybfXPg+pjlINHjnuyOE+29J6YCV/5WHZJZ64Q4aJxrWv
         7eBFUQC/+LtTUY5Io66A5MlOwK7n22iuNZZT1rPjpe+Y1p0Wi8wLAStORlniK0aYKch2
         H1ixuLjXyAflqa99q8IPChGql6R77KpWTJddMaRLvz5rhGC3di1zLErRKlGsLuaIxwKR
         PauQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=foSUYtSZ34SKCUoi24rJ1Y+JxUsQMVSQCoUCfiLig3k=;
        b=SG76whTfeScVo3XN4js4Qu9t4zWbgj2IPHnEKbzoKo0QG3OGiH0VsrUYeil3e8JUJf
         LRReGwoUD2kEU3ayUiThN8o7BrB0IGWv9/QA01ngwWZGb9CjmOcxBpG25PpjUf0qvKWQ
         qxlmtK6nnQekdNk1uEd/fQzIF/XMD9azbufKYVAa0XcNu3yzYINii2J8pSo44ufFjrcb
         Yjp3EuP2paWSAUkaaHZRwD+XgunMyIJhSFgfL9DIrQcrlKOawIFTKkJCFoFjs5/Qdy+h
         TVKbxIKaH22ClhgCbPJR2yQ/4lEYgLFf+P+rhyqRSax+XZ/91QCRwEi1ziLCl9vbF3fJ
         Y8Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NlILslkD;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id g12si740140pfi.5.2019.10.10.21.38.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:38:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NlILslkD;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id y129so5403101vsc.6
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 21:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=foSUYtSZ34SKCUoi24rJ1Y+JxUsQMVSQCoUCfiLig3k=;
        b=NlILslkDZJRYxJF3OT8UnqCMdSRxzC1ngS+CF4Ui8yNYpum9itYtBMp8DQ7YByIm9m
         fEvikiU1dgzPKMNAAKvig0eoJU/KPTBunb/Yfl7OWEXUi3p3AeihX5bQgXaR/VNpN2er
         SPWwzBWcBbye7KtvsRI5GPgsRJri7+itlU+PoPrMgdEU+hKCqAV/Vu0i/t6XrdoYRpat
         WtDs/40p9Yjwktf7kUgoXYbBuZIA81hDZ3YkZx0XBLyYsipBjFeM9e/CJU1nKHrpvbI0
         QNUoPLwOnZhTEZi2PSsgbMr9fGKwrE9j4RnI5JeUtT/pJ/l0WiFy81F7M/UfY1fMnJb3
         Txfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=foSUYtSZ34SKCUoi24rJ1Y+JxUsQMVSQCoUCfiLig3k=;
        b=EyhCCNSE2VAlrb0jEi4If0p9ku1ickq+E9ilVR7FHxsopqxdSoUQYhD7RLgZxr5xs6
         GD2FzbdGwXzzP7K+D9LugZdDKNN4qmwbnrofgWC4jJK9xX8XvZze0y9VF/AtL3Yk8xDS
         WS7/okpKqLNdwL+t0ta2UZJrfnntmzqpXv0v0usSyhvshBhQbg8+8SAE48T/voGfE6pM
         Uw3kU7nM4KdIcKI1BldzrBBr5jMaZBrs1kJ9oj4szij+Emej7IT3jgbDkiOfaQSxKg4u
         cXGUBm1VvgLbZSQxceuXCmC9PwGv56ZZxPz7o5yXlOMNv62zyvbleziqi/yCKj4BPHl2
         5oVw==
X-Gm-Message-State: APjAAAUbNjpNJ1M9v2k267obJGPuInMuP8mk/xgk7a3ZOXClFCC5E5gZ
	YpM6i7N4+q+jzM6bQGUaS/I=
X-Received: by 2002:a05:6102:227c:: with SMTP id v28mr7881900vsd.119.1570768682129;
        Thu, 10 Oct 2019 21:38:02 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id k145sm2282825vka.32.2019.10.10.21.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 21:38:02 -0700 (PDT)
Date: Thu, 10 Oct 2019 23:37:59 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8723bs: Fix indentation warnings
Message-ID: <342439907717abffc9892664dbb5170f2b576f48.1570768179.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1570768179.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570768179.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix indentation warnings to improve the code formatting.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 4f6802b3ade1..08570e78d5e2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1489,7 +1489,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
 	for (j = 0; j < 8; j++)
-		 pframe[payload_index++] = chain_buffer[j];
+		pframe[payload_index++] = chain_buffer[j];
 
 	return _SUCCESS;
 }
@@ -1625,7 +1625,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_index = hdrlen + 8; /*  8 is for extiv */
 
 	for (i = 0; i < num_blocks; i++) {
-			construct_ctr_preload(
+		construct_ctr_preload(
 				ctr_preload,
 				a4_exists,
 				qc_exists,
-- 
2.20.1


