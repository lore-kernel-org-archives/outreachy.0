X-GM-THRID: 6749323707377778688
X-Received: by 2002:a25:7810:: with SMTP id t16mr13679937ybc.165.1571606760416;
        Sun, 20 Oct 2019 14:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e192:: with SMTP id k140ls785369ywe.6.gmail; Sun, 20 Oct
 2019 14:25:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2EssCL+QjEBk5yMg/UJ5WXVif4RvwQeqE3BeP3Up/hciiiQ6YvdEMfqgiWZZ50WocQ+Tp
X-Received: by 2002:a81:c8b:: with SMTP id 133mr2626336ywm.429.1571606758866;
        Sun, 20 Oct 2019 14:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571606758; cv=none;
        d=google.com; s=arc-20160816;
        b=RVrIglL2Z6p6fC2It4cD1IVaxBORRfGoRU74KhckJpCjGU8pDzNfjcP0fZHhmDAI8b
         2UhsFYSbnDlcz78N+CC2rbKQK20fmSxk66JGxBfJrRYA/sSjdJgW1KWJfyhDo0Ep62jY
         1CbSh14qt55KUQm0q9Cs8trRWR/wCg9NWrniNSAFkKkxYMNqpJYKZPJDLscXL145mMKO
         /cPZi365iMUKLAA5EOvJOuaGpdRXloNjGe9DQhcuW92YCyDGetOQ3IJoVFufNNNbg5q6
         VD4JvE2rhrWx67h3ut/81h0SxaeSCTvzRZZoMFdZHZUF0JIcF9/mjm5NCy/hwfv2Xtl9
         IoQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=nEjFPKk3yjJW/m+tdq7U2Jx2Xb2KV5wIP7QTQSpUIj6ic67YlhM7gBo5jPM44uCL/U
         8/zh9uVhGfYnUMf4HkOPTIEDFXayT5deKPWHQJqam1XpDB9+ESBeGXbvxFuKXXHZLhy5
         brn3LQ800qY/sv76IS2X96NdqhhB3Ogp4B+CSwf1VWlVBIZgMPMh+4ghbIaR37ptWYLR
         JQtUKzrIrrGLozcEPSRwRPHLOf91Wnlfc/SW9WApZzLa14/E8RJZJkfYz5/T4UUKrnxJ
         KIzByNTGRf2/7XY+5mqh73+HmXW/9thOBt4KdaQSpNRXXrvufreYdlL+qHjy0vst4KSa
         egMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrlMTHMs;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id r9si751284ybc.0.2019.10.20.14.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 14:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrlMTHMs;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x942.google.com with SMTP id l13so3224558uap.8
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 14:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=FrlMTHMsWDPlefRCEtDWh9e9wXzJns6CTzec8W4ZjZ8Isk9JYq33asf7YUEJInI/K2
         6bXSb/vbedX8cCoDwdb61zwUmZXFhJO5xaF3Jsu8pw8fvNK4Q0V0EXQVlnizSFa6WDXq
         6sHDaoFn7Ej/bnIa7A2qGSmMByEG7HZAH1qEWnnTD7OBUyUt7bdPOWmNwZlA0KEQqXxL
         7Ln6D5cZh7S5Ng+S6rAP0n6fOoIKSa7zZQ6YjvCKfNmWRYFl0mNkhlDHoGxnRHBkp1ag
         z9eWXiZOiv7bMH8zMdVamBONMeSii/VyVF/vSzJbroOUTxQZ5+8uRhoduH11C2U5rkbh
         vOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=eJ8p+jX0xy+MRKrFOWgEfZ8j/+iVAxMt743ArvRvYjI=;
        b=EWL7FfN8vGnYLvOOuoTLf849H8t1Q/U7wuHG2CZAl2M+lHmZnYD/6xy9EkC6FwsSOQ
         1X0JCD5mHikTQ3C/79PyYKg2Fq/lLaydSSYYx2wl7Up11s1GwTrSVYh1jHEtwSf/4OeB
         +oQ9411OR7ZhvH45YOtTL+l2DSOymt/uM0rJCoz9K13ONxz7BVaUKUABk31SQxF5ANQK
         B+W8DSHlTIOzeIW0Ha8ip0p8jFiXCBqSvgT6xYgDVCZvXqvkczDs3rsOxB/di/6t3JZM
         xqvccEI8odGDfzSPvaTp/dkX2x8ZOzYxZyVQIDD3DUZ+Et39A/l6yZvwFKm0qUGKx1YJ
         tblA==
X-Gm-Message-State: APjAAAUM5dp4V2xBDjqKu6VAnozvEj6RqTXHqdl8drrzH22eCidTar64
	9N/iekqcGD3glfHNK1VJjROvD9YN3mmX7Q==
X-Received: by 2002:ab0:1582:: with SMTP id i2mr11305106uae.140.1571606758540;
        Sun, 20 Oct 2019 14:25:58 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-28-46-160.dynamic.etb.net.co. [186.28.46.160])
        by smtp.gmail.com with ESMTPSA id i3sm2882396uai.20.2019.10.20.14.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 14:25:57 -0700 (PDT)
Date: Sun, 20 Oct 2019 16:25:56 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Adjustments in function call
Message-ID: <cover.1571605959.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

V2: Update the message of the second commit to include the updated
    patch version and to use the Suggested-By tag.
V3: Update the first commit to include the Suggested-By tag and
    the second commit to update the patch version.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


