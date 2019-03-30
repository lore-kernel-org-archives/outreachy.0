X-GM-THRID: 6674054447222489088
X-Received: by 2002:a9d:5f01:: with SMTP id f1mr3356147oti.36.1553924392424;
        Fri, 29 Mar 2019 22:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:748b:: with SMTP id t11ls1220999otk.7.gmail; Fri, 29 Mar
 2019 22:39:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwus9yITeQNRMIH+3qTaq9IrfH+unz/IarxqsgbfBXnfGY/OUBipS9DjKQnLiX+mqB2NWE6
X-Received: by 2002:a9d:7302:: with SMTP id e2mr4023571otk.54.1553924391458;
        Fri, 29 Mar 2019 22:39:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553924391; cv=none;
        d=google.com; s=arc-20160816;
        b=V+X51nDPyUe+6QW8OcAvRdPIoUXU4AvKdWttflgaVmfJKFhVehysD2DZmURs32QXbB
         dOFE2LVBJ0MjmYClRyGgLdepYwu9xf0Z7jcL6iCXvzozegrz3XtmfCXoKgnajsnDb7HU
         WcALNMAvaAgAXDv9oZkqxh7C5YJ7n7Z+KNGdZvvg/eK5MMK34tGURAHV+XJ97cgkSAAy
         4H+p1dlGnP89g0V/gKoUyt8qfLchtY1+mQ0fG0Yxb69ZcdYyyBnv31pFF460hJmQOPBV
         rrGaXmTY2zsNQ+aoBbDkABt4eHskP0Qh6MjMP339FBd4VtZtTGvhIaCce8VizkYlH6yW
         YmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WNV1f5VihzEG/fD1LdS2P/jlDzMKpwv3tWuQ2mMg5/0=;
        b=VaVTet//GHrpc4Xmsb44ffBtJSe0PDSf3RrnkAlsco7ZGnxowxpBy7b7b4eOFoiPNO
         XrehM91SxpXhV8iJ4sBsReoG0EaT+IMnwdA5kUWRkJsYcGPWc20NMChPFmh+qqUHiR3c
         K8pLNtyPRVfZl3xuwj/QLD30ojWPYNdqeclZA8rKJeupACPGN9uXzVcov/WJHaKdIf8o
         whYu1XYeVOztfp7tqnzLb8WrBC7kgj8RL3XkvzSi3J2w/kxfCyTFZ5CXfzpYudEQzlAd
         NJ6+3+QYn4qIRNBAJX4P+NvOzKguyqRoetiLCAwh9drm+a1rOKH1DUmyTOttTqcmK0F8
         EuEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzfkEz17;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c13si213797oto.3.2019.03.29.22.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PzfkEz17;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id cv12so1976447plb.9
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WNV1f5VihzEG/fD1LdS2P/jlDzMKpwv3tWuQ2mMg5/0=;
        b=PzfkEz17MhofD6NYUzk/XQtUla0yXd2v4fWmqTKOTT+NRFRw1U1E7sW1X3aJ7kZWQ2
         g077dVTr2Z5qA7OsZcm1oJ/+FZUfW2Ut+uEwTKxA7qtylZjQQUfFQGSOdVqM6C5HMQ5F
         a4aC9rl8NC6yhQ6bWTHpd6njwAuro5rvDGUohGlYE8Jp6qkJnfLLoOYylFQ8cjzXnAZ4
         H0sm4Zf8DARxON3v4TGkQUNOlSrgvopv+3V8O77miE06mlnr6n125CsY8z4HSZttI+Bk
         xn6opk+OtmWbo+vY55AfDjitnnDvtXcDtiAkSaZRp6eHBHllfb8U/ikzu/825vcyp1oQ
         XNgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WNV1f5VihzEG/fD1LdS2P/jlDzMKpwv3tWuQ2mMg5/0=;
        b=fD0Udy3pxvyhC/GBl81EkJ9CY3YsAuX0HSZ59mWWWMIV+9bSSnlkEZoyAp0MUeAuLU
         lxJIhJJDnA1c6UbEbHkUQMcgryxxPC9Hr6+8yUoKEjpOd5C89kHvo663ctzDHNWNcqnj
         XBjwO+VOIa9cdZKUJUQOa701PZU1d6/6jk2gxifW3ibFHPn+Rz6uLo41ykMC4OAQayCB
         IVbK/xvFKMegR2MteeW9fIbVKTT+eEMhEeHp62wvgcNwOVQvNAb5q/+hGhTsaZJmniZ9
         QfDRsIVcZDiWD1/ESSYobr+IOGi/5lcK0LOaf1dNQitQvVgq7TC6cVZ0o/ItkYR2Vup1
         Oh8A==
X-Gm-Message-State: APjAAAURDqOWShhJHmJa9daju93CCBVy39VcFjI4xTa8eqALUEmDH4jx
	UkbiO+fmJGhhGKfPailqowcUXg9i
X-Received: by 2002:a17:902:266:: with SMTP id 93mr53627076plc.161.1553924390495;
        Fri, 29 Mar 2019 22:39:50 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id n75sm6853582pfb.39.2019.03.29.22.39.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:39:49 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtlwifi: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 11:09:36 +0530
Message-Id: <1553924376-12422-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Remove unnecessary parentheses around the right hand side of an
assignment.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
index 52b85b3..473eeb6 100644
--- a/drivers/staging/rtlwifi/phydm/phydm.c
+++ b/drivers/staging/rtlwifi/phydm/phydm.c
@@ -1542,7 +1542,7 @@ static void phydm_set_csi_mask_reg(void *dm_void, u32 tone_idx_tmp,
 
 	if (tone_direction == FREQ_POSITIVE) {
 		if (tone_idx_tmp >= (tone_num - 1))
-			tone_idx_tmp = (tone_num - 1);
+			tone_idx_tmp = tone_num - 1;
 
 		byte_offset = (u8)(tone_idx_tmp >> 3);
 		bit_offset = (u8)(tone_idx_tmp & 0x7);
@@ -1767,7 +1767,7 @@ static u8 phydm_calculate_intf_distance(void *dm_void, u32 bw, u32 fc,
 		int_distance = (fc >= f_interference) ? (fc - f_interference) :
 							(f_interference - fc);
 		tone_idx_tmp =
-			(int_distance << 5); /* =10*(int_distance /0.3125) */
+			int_distance << 5; /* =10*(int_distance /0.3125) */
 		ODM_RT_TRACE(
 			dm, ODM_COMP_API,
 			"int_distance = ((%d MHz)) Mhz, tone_idx_tmp = ((%d.%d))\n",
-- 
2.7.4


