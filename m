X-GM-THRID: 6536501456103538688
X-Received: by 10.101.69.75 with SMTP id x11mr5861590pgr.44.1521897848880;
        Sat, 24 Mar 2018 06:24:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.95.2 with SMTP id t2ls2304606pgb.16.gmail; Sat, 24 Mar 2018
 06:24:08 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsIuOQejivTmMJJFleO13E633llY0whxdWRu32NMx5Qh2X76WE0xPaqzT/+Hirt2mAz6oz0
X-Received: by 10.99.127.20 with SMTP id a20mr9256068pgd.28.1521897848068;
        Sat, 24 Mar 2018 06:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897848; cv=none;
        d=google.com; s=arc-20160816;
        b=zMfcTaReNLRoNF+WgqzLkzyzzsgQZey/o7eKh0BuXOZAIP0jz6GQYZh8E0LR0AWZZq
         QWuJQ7qyPe/Nwu+yOtYlJ36rSNeltANmSx54gVl/96EJlqt/GsjS5RfzNBFSu0zvaizS
         TCuG0YdwMAzfvS+2pe/Udbw6ReAiaxVzfrNS4o3KTnN0IQB9xemvO/PJqPQyzw4jxPNG
         o65DUpcVtfv7xwL7FNBKM21PLtIKgWrl6Xl4yoBr84QFtZEcJFsyPTQ7U+5WcpW5mBw8
         M9q0R0zyYVBbg6F8vpJr2Ohho9+SZAF780tceIJEt2KNJAlFkvFnQ8mzbWdHw9ZKVujB
         aOtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=p0vdg1cXPA0XbgBrumNcBHiA8WTF1BjA9hDube+/ztA=;
        b=BvCZgVYIXHOCBS0XMAE5zdSdy3ugTERMRd690OKJ8XYeh5/h1gS3ELLiyKZDiBt6lw
         wbaUTbSfNQYykEbDUabMLzFsX9BCUYW5Z/n76IACtt3tRxC++V+1Jy33D283VlSvRIdy
         jkPn40zIGzilvQTMqTG5I2W4wnGLHjimha2fEfYIvZTXdEYp3PvfmXfjH1dFPk2lj26C
         Swwx7uROIkMJy+pXVnmtTxneY7ebqJUf6v+cWVgVhv+1V3B1hz8F5J8QAm2sIzFUr3Tm
         NdS/QH99Fce5gUzGciboHUkK/37z1iOkBT+dZGaded08MfiC88tCUi3yTpSupqLwfw2Q
         DWog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=I/xAja8h;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q3-v6si84181pll.5.2018.03.24.06.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=I/xAja8h;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x244.google.com with SMTP id j2so5780187pff.10
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p0vdg1cXPA0XbgBrumNcBHiA8WTF1BjA9hDube+/ztA=;
        b=I/xAja8h22WHAvksBEhayjQvENq0zR2Upo5AiRK7fzecI+0J++1KegtkRye9u78OkO
         AU9ycPKxcURXX3HCZ0yEk0/gtwPxPmd/6idDeofV4gJD0zmGa+L4AROCY4VbiCQFm1FV
         Lm6WqpNa9Y66Bw1a8Knev+Sd56W4dgNnMpvDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=p0vdg1cXPA0XbgBrumNcBHiA8WTF1BjA9hDube+/ztA=;
        b=uET2IEmWZV/Bn8oPbDS2MC+k6PYEOOqon7T7vDlzZpU9lLhgPZ0z3yfrd3MzBjKKfe
         6J7MyjuOqu9R84327+LYHXP5s/MrxzaAPQO1TCWAqTcUIOF39yNva6yFzz6W4zhI4krX
         N3c2KaptSY5OYgto6v/UuGAHCxkU+VJjHXl4F1IcaA81n3jivDd01UWNjQO/oe97DNEf
         yvh4qy/SVCvlPbS6v2GvtJbaLZz2/saljHv8ttYHSIBk4VO+1dgSuEcrdZI+NYLwnryM
         tn17pATxsKYYth/bRk1EeLS2n5GiPHyK5qqWsp/AGDUjz1yasyVzkxpaYVLnNyawRXoW
         q8bg==
X-Gm-Message-State: AElRT7G7MdtBQbpewLR29HvyAWyYYW1nXeVtmTsP+kQqp22UkUV0RoWi
	Hvq33lijrttuJJ6Zb4C/pzZ9PQ==
X-Received: by 10.98.32.199 with SMTP id m68mr2947827pfj.218.1521897847767;
        Sat, 24 Mar 2018 06:24:07 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k78sm22474303pfk.111.2018.03.24.06.24.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:24:07 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 5/5] staging: media: Replace explicit use of function name
Date: Sat, 24 Mar 2018 13:23:46 +0000
Message-Id: <1521897826-28871-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject line clearer.

 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 857b0e8..a5ab161 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -945,7 +945,7 @@ resizer_get_configuration(struct vpfe_resizer_device *resizer,
 	if (copy_to_user((void *)chan_config->config,
 	   (void *)&resizer->config.user_config,
 	   sizeof(struct vpfe_rsz_config_params))) {
-		dev_err(dev, "resizer_get_configuration: Error in copy to user\n");
+		dev_err(dev, "%s: Error in copy to user\n", __func__);
 		return -EFAULT;
 	}
 
-- 
2.7.4


