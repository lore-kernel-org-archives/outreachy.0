X-GM-THRID: 6332384674802827264
X-Received: by 10.31.92.1 with SMTP id q1mr1144863vkb.42.1474373199777;
        Tue, 20 Sep 2016 05:06:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls1936792otc.1.gmail; Tue, 20 Sep
 2016 05:06:39 -0700 (PDT)
X-Received: by 10.129.81.72 with SMTP id f69mr5736366ywb.66.1474373199478;
        Tue, 20 Sep 2016 05:06:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si6030909pam.0.2016.09.20.05.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 05:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so898703pfl.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 05:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sAJcgNbZGy5vS2fSdn10xZI5gqWtA0D5CzRhUIbM734=;
        b=eSGSO+c4uiuxLHa7ILdGF/OHjyc2Qx2149WVRdnnGmUGSSeHCzawRs5U248vBTIbQW
         RaRmB06dwhFibPwGIVt4mqHeuGT4WUvN7i4uNQNT0qqxKjqY+QxqdGsfcommJ6MfxR9c
         ky4GYuuEWUvuzepVj1F4QzWj5vDf+eLtBY3fu7kh5Ko6zZLAcBSfkJseEB0GahEWtuwR
         ZgKbrIp0hDalSZPB+bkb80PVmXJIrcZgSz+uGV8lPRu6JjRaLjrOJ8OqCyUoh7O6UMUB
         ecYSWPrb+v0UePHc9OAAsR7k+NuSsYNeAq/rSUNiEBTOMUjvjoz3CHrNt2XtSr9yxDK4
         zoow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sAJcgNbZGy5vS2fSdn10xZI5gqWtA0D5CzRhUIbM734=;
        b=kSeumBEsmcSr8ZmYID/RgDCbyIr4g1E1YqNa1RXNMrdXtmbOmGNYDroVWJrio3ze9W
         JuR/qTZgVeadtrBmhh63bmThl3JgCcVQBmlLO/cray75ELEnfHK5IQcp0aSS9oxV2T6G
         DTwWldnTxEEcNLftSl9leF0xzWL5caPELzkwN1Id/+83+AW/uEe8rWACAGJUn4tyVx3m
         x+biXoYtzsBuYJnGFJYe4HasBGvfgRKbYJtqGBdQOA31RWgHHZVB3eK+gTQVO/cn3zrZ
         SPs8v25TmoFuj+Fwcbazqgkfs4332m++hB5QEmRPd47sTBwEAusTgPzM27hFonL3aAf7
         La1g==
X-Gm-Message-State: AE9vXwO2RunYnubBwsXKVoEm7y0XGJlvB/Y6Oxzq/0YVgjmNeUMi9xT3NBivABcThDl8dA==
X-Received: by 10.98.50.2 with SMTP id y2mr55113744pfy.138.1474373199046;
        Tue, 20 Sep 2016 05:06:39 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 138sm54750897pfx.41.2016.09.20.05.06.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 05:06:38 -0700 (PDT)
Date: Tue, 20 Sep 2016 17:36:29 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: sm750fb: Use BIT(x) macro
Message-ID: <20160920120629.GA10935@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces left shift operation (1 << d) by BIT(x) macro.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index f557b6d..a887f32 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -349,7 +349,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 		fl_quo = (rem * 10000 / input);
 
 		for (d = max_d; d >= 0; d--) {
-			X = (1 << d);
+			X = BIT(d);
 			M = quo * X;
 			M += fl_quo * X / 10000;
 			/* round step */
-- 
2.7.4


