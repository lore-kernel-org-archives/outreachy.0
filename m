X-GM-THRID: 6947867046648479744
X-Received: by 2002:a37:b206:: with SMTP id b6mr27279702qkf.275.1617676366593;
        Mon, 05 Apr 2021 19:32:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls9713144qkg.1.gmail; Mon, 05
 Apr 2021 19:32:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGjif4JGi1aMXc6/D/y5ropOXLmZLacXKl4VDjY18RVVN8tvLJ6n6/gqZU3OREUTIkBg9i
X-Received: by 2002:a37:8905:: with SMTP id l5mr27875676qkd.321.1617676365720;
        Mon, 05 Apr 2021 19:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676365; cv=none;
        d=google.com; s=arc-20160816;
        b=S4lbtPVAyBGI1ZTwm9Jrrya9CkT9QrpEWmUDoEUhlwKCmOCjr64CVfO/VLJnwoRKqn
         /CZwRwniWCRtbHsvomKI/CIC3VJDfjmbqnpnC9skr945X18aCPw6EDj0C74umbtqgMcn
         3+MNybXOoXJ3yDmQT1s2Tz56oF4bXYqFTbyI602fDTNXOOcjiE5wTr88V7ZS+Y5h6XIa
         1uEoBHrTAjZXYZ4c/7eSI2q+x+3S+yMVdgFeeQWGm/U3vFYxNmU2jC4ghXEohBGvgavV
         +uDiKvm3Fq+b03LU9ai5xp7e/5N2XKl52EDOi7IkBDlYWKUc+GSjg4d94RUfWlbdqKuj
         EA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=MQjkCNA0ARaI3+BBDoCvhZ6gKeUVeHPj810XjZy2HGQ=;
        b=xdbCSq/uUtJjLhd73CJQjQJ/6yszl+YSI6w2BVqAFRrbZSHqBttng+z3p6FqUWWXdY
         qpiCoulEuHCtko3V4gtrAE4MoC/lwwkoV/tU4itlkXhQDyO9H6xCOonVD0FBkpVdFQJv
         jZDZqlUjnZv2zUeGyutZZAYHurshQBaTLwRlGL2C3hFn18z47z0tdUxhTpeT0XlZvzt3
         Fuz6hVzHHpTGy+HbcIeLeFHMqrbJ8YuI3i1prxmSxQvwo3FCIBsPz2vZGYOt8KHCSZVs
         4fQDPuhH7l/a6KRq3iaBBmsQpmlkpWr36G0kdKHypvtPprrhMofMGD49+hdZ1D8uxlwl
         llAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMc+KqIW;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b2si2983251qtq.5.2021.04.05.19.32.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMc+KqIW;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id cl21-20020a17090af695b02900c61ac0f0e9so516712pjb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 19:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MQjkCNA0ARaI3+BBDoCvhZ6gKeUVeHPj810XjZy2HGQ=;
        b=GMc+KqIWnN4Hg00WTSr0Elcj15axXHI8s8YCEvrknTeNA9W1QR7G8MakUmqK60v7Nc
         X7taWapNxFLSlcpP840bo692TzfiLog6Kaxr+u7VW3w5Y7tqdy55DrQnCg1MIc5Kk3W1
         0audgYvAW038bQiv+KkTSz5OYmRT5wmUM+UKzvjiAQL47TogVzHRqXmlOXOldF6KUZm9
         GdhQ6P+77lt5QT/07qnrg1s2D/5MoA8LFJQjTKS3uNGI+zXaoumIYjsPOa/72R+gGnr9
         eolzpQZyTTSKdSTaDsIjBvjDUSJH16o4kzQ+A3LycGe2mDlg6J8isx+r6BITJcnh1+nq
         mk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MQjkCNA0ARaI3+BBDoCvhZ6gKeUVeHPj810XjZy2HGQ=;
        b=AIecYQ7rdHE/DvX7RLIxezjR3YWvhlSKq2DKJdeJwGW6GTvH4i2UpGOQMI1O+rrAmK
         JxP3tgTOUnlEmR/ebnateVq3jRVZakEbQly9JL0XuHyqzNLQs5Nzc71wIbmhfTIn4EXf
         09qVG6VxeZ4GtgrS5tE5bcNiMUCHsaLhqcUExKsmCdriuSK6D1hZIRWtBBVeWvx1dRgf
         uT7Syx2XAOUs50pl+MW1SUd6vrbgb1m1cFfXDuIvkjF2DT3asJJwV0tvv3rT7P+jJF5U
         HTOwQdVNPuRrTM17+vowvGnmF5f+gF3NQ0dPpouyZh6UGEtQFHIYTbj4Zqi7CKMeTnEN
         q1Xw==
X-Gm-Message-State: AOAM5314PIl/kf95dzPwI2u0jhFtvkBQ+V7DggtalDnHhvqzmYL+EREQ
	it0lXcYUK5MP1ZUl2agoFKA=
X-Received: by 2002:a17:90a:3905:: with SMTP id y5mr2130349pjb.91.1617676365039;
        Mon, 05 Apr 2021 19:32:45 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id e7sm281196pfv.107.2021.04.05.19.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 19:32:44 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 2/4] staging: rtl8712: remove a blank line
Date: Mon,  5 Apr 2021 19:32:18 -0700
Message-Id: <81801604460c8cad8770cb2e1290e1587bf88075.1617674639.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>

A duplicate blank line is removed so that only a single blank line
separates two functions. Identified by checkpatch.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index d8a366338a2b..4be81c2546fe 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -317,7 +317,6 @@ void r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 			 0x0000ffff)));
 }
 
-
 void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 			      struct xmit_frame *pxmitframe)
 {
-- 
2.17.1


