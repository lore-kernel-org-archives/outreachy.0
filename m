Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D22256F
	for <outreachy@lists.linux.dev>; Thu,  3 Nov 2022 16:38:07 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id fz10so1581915qtb.3
        for <outreachy@lists.linux.dev>; Thu, 03 Nov 2022 09:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F3T4XRiNpdZfj/H77Oabf0S2+kevoIm9ZI2uu8tMn+o=;
        b=o16ZcFz3Eum48sP6hoeEvgNMr4xiwRSLl5USDtVkfw1BY/p1eWObpqKmsy3l+Z707+
         7HhZ/maA3QXcBfydFuavq7gPREGX3QW5IqiaxxKJ/V5kIZMi0NI6+6IrsYVXN2wfiBTu
         kcQfw4SapsShnjcrWWDUOeXpMfj/K4t8fbQf+hmcJ3EWQkm8T/+AmvyiETuxW2n3j0YE
         xLDMF1CjhrwV5BkEs8lrTUd8thHPayr7GfhsBkOCfuthQBDeJfzxxhllVOPytFq5CfYB
         9u3FuA8BFXBR8MXPptdIekiMBcLkD9t+8cXHKkYC05Eym60H0rsAs9IUBm7bHInyThou
         cxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F3T4XRiNpdZfj/H77Oabf0S2+kevoIm9ZI2uu8tMn+o=;
        b=Tkdi8nFsOVd68IWK9F8vwcxI8yYmk+4fYtRTIXxB7x8Bg2cPtYJWZdo4+xQLdZvjlW
         ++dVI8ikerGBdJzMIwK40YjPSzN8CaoaxJAlICfJrUDx5LsZelo/yB8972uk+JCAfNNo
         9ojoI4/ao88XGt8pVDfDT5zfAbN1BF07pSm0iqlvZGBCql+2B3KfJDcG1WBkG7cgC4fi
         l18FIxO3v+WxsUYQ39t/jHMmCeoayuSabUD6zaYX6njX2E2+S0MWFxKdswbdVdbkKEtC
         11hOykJqEXYvbXUtppvxFNkldDXSFxm/MKGsRLonZI3DmVYDhVijQXyY7HUrjOtadnrE
         B+fw==
X-Gm-Message-State: ACrzQf328vEf2nCQyqLroXBLa5SswLQS4xoW1HrqXYUzcJj1JFMJ3luE
	t5BZue79jBTf0AkEVlg11bGry9/IpUsFN94bJ9nRT60fHfK4+3Tu
X-Google-Smtp-Source: AMsMyM6jWA1LAn7NmQGfkSNBhlMAP46J9GjRg9M0WLdEn47RdBy8vKVrGicP1cdt11/+tXwPsxaycVMBNZkMSIKws+A=
X-Received: by 2002:a05:622a:2c6:b0:3a5:5bfa:6ff6 with SMTP id
 a6-20020a05622a02c600b003a55bfa6ff6mr1912429qtx.588.1667493486055; Thu, 03
 Nov 2022 09:38:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Thu, 3 Nov 2022 17:37:54 +0100
Message-ID: <CAHJEyKVVG+sVQz33HLXTAmuru3UYPHae771MFckcTfYv7xF+kg@mail.gmail.com>
Subject: Recording wiki contributions
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello,
How do I record my contributions to the wiki?
Is there a link to the wiki contribution history?
