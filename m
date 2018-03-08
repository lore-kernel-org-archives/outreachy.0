X-GM-THRID: 6530656197776769024
X-Received: by 10.176.19.178 with SMTP id m47mr13759394uae.119.1520538236342;
        Thu, 08 Mar 2018 11:43:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.71 with SMTP id c7ls607862uad.19.gmail; Thu, 08 Mar
 2018 11:43:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELu2099ng7BQ/vcELAKp6QFijnFoKZnCh7pQWmp6RX2cfY47kO5gm+Z8HkOIwVlRFC4hFWcS
X-Received: by 10.176.92.20 with SMTP id q20mr13624306uaf.26.1520538235460;
        Thu, 08 Mar 2018 11:43:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520538235; cv=none;
        d=google.com; s=arc-20160816;
        b=uHfGrICFnhlHl83pyYkszOYZpbX2Qi5BPyWK2CsasVWM+6RDnHGOBQv03ZlJ7HG52Q
         8+n2iz7z6wDHjhTiHxiexkVFbvELwDxo60cz5odE9dJXWnkvQW+ZRBgCfOunzsXfKDwy
         RJxECb85AXoJzlYxVVyu/AjNYe5A2sXBpjFj6JTOIZOaCEBeeW+yGTxXkmDlHIFG6XPY
         nRFNCJ6vIGZIoghauNuQ1UNy186XU8+ytjRoB3YVZAKiQd3W8W70+VlGpGGNpQ0rNiRt
         1l4ysJ5UXnvPpSV1zI13Fj/4sWWJ6X+x1WrHkc7jEeGuEHV/4BBZwXz+CepYBH/SDgIZ
         /CcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ge6bfn9tLjhYuHwlqmljmPkvijGrUJaoDDiLDlBRf8o=;
        b=tscACAQtkukgMvN172Z6cuqGv6D83fCdoupyHToezIZqXGLFJzHutvcA5xkb5L40dV
         l9WrIbVn1vSdLGmeYmIVq4X+aCiPhlf1RBL/L+XDF8CciR6bAqkI1vps8asYRzxDT9qw
         /LTe6aEv/9DGJGP9yPRzN2QSnXKzN6l8hcxeMErL7ivHdr8ij71uSSxIAyINRUjkMvcr
         qd/6y82gpa+0dxnwLL5rTJRUnrSJqovjsvWrZNZZrfVye9AJahiAmbSwkFy6bxbKR7W3
         RiKdPuZ6DYL4v0z5I1L3z2Yk1MOLdNvJoSoMmMLQtpYqow3H6iD4KqoJRQeilnk0gAZH
         i92Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eN/hTX6W;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id j185si1526905vkh.3.2018.03.08.11.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:43:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eN/hTX6W;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id y8-v6so3870830pll.13
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 11:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ge6bfn9tLjhYuHwlqmljmPkvijGrUJaoDDiLDlBRf8o=;
        b=eN/hTX6WA6sP/x/+LjvE6XrMKKvlysy6Y8XbjU1FjTtDS8CKOV2SQivBRd5jWLLemI
         ZLrEmE206iS/48PT62B5Z6Qb284Nlci2LFTHmwqwgh9lHl8MT4wGb9B+Qf0TSF33Nfa6
         x9QTwdG0bs2RBPkghyV4p4Q+CV9dhBskXpTsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ge6bfn9tLjhYuHwlqmljmPkvijGrUJaoDDiLDlBRf8o=;
        b=acnBnb6d1EeS0agAPVolyBHSpj0U+XHrvjMovUyiowvWss90ifSPFCvCN8nlHav/Zo
         JDDJnECKi1xFX4to5NNNKU6tErRLvGm6yq2D8xhtj/stJqMQp2vRiZkcd72qGv51PqqI
         Sq9g7rhDeNf7QOaxBWmLc3pbAcsFgWq9N9EQwxEkYBZgq1rTTEEtX41diee+KpB1aSyt
         hWMmRkycJoAy5D7IELC3mdikYSKNWx02uSTPDmXUQIt5L56HX5KYlHE2Q3YkHjneUQvq
         Sv/oPz35tZig0g/QI8EtrLqbhf4ZHFmiFTbIOIWaopSvhE2KuVgS9bUppbupTUmgZ9Vy
         ERxA==
X-Gm-Message-State: APf1xPCc5bdhGfdWSzbuNXHuSgeULQhCv14FY6H5I1RBFAXapkWZA/yN
	SKUwnh5GRrXw3jHLU+5A4Y8N2w==
X-Received: by 2002:a17:902:654a:: with SMTP id d10-v6mr24500919pln.117.1520538234213;
        Thu, 08 Mar 2018 11:43:54 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id q15sm25588150pff.65.2018.03.08.11.43.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 11:43:53 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Date: Fri,  9 Mar 2018 01:13:46 +0530
Message-Id: <1520538226-15590-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index af30b70..9db7160 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1973,7 +1973,7 @@ static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		return 1;
 	}
 
-	goto_pos = simple_strtoul(goto_buf, &cp, 10);
+	kstrtoul(goto_buf, 10, &goto_pos);
 
 	if (*cp == 'x') {
 		if (*goto_buf < '0')
-- 
1.9.1


