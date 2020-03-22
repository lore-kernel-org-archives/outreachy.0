X-GM-THRID: 6807036987972780032
X-Received: by 2002:aca:af97:: with SMTP id y145mr13376119oie.24.1584886803380;
        Sun, 22 Mar 2020 07:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls4837755otg.9.gmail; Sun, 22 Mar
 2020 07:20:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vskZkJlv2qVPlfgAs21fHJEWGJy+ywgYL0yONBFWCHNsB9o9SFUR5ECgD1rsXKgWSXACMIF
X-Received: by 2002:a9d:8d0:: with SMTP id 74mr14599804otf.39.1584886801668;
        Sun, 22 Mar 2020 07:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584886801; cv=none;
        d=google.com; s=arc-20160816;
        b=IiwLRoy6CX0apHBbrWZU3eQMJ6rZTkPC/mRq0eHYb/XfOKFBx/ZGZSbhHJKg7qA3kR
         WR8KAcYn6+EqRP3Jum18q7UMEYLp2dPEnMiJkv+UGg4BC7FE9hkmQ1fBaVYx27D5LmHU
         ImBQFGMABmUXcYy/A3pwdxoxL7oeqyGqSLgMxYrNUu9YAOusbzGtJ1E+/hld5zvp10aD
         cs7ptjVvS9DcZ+9irhVQvwWP+mHeto/0ByBmIlvzqHYv3KAjmsKC9BEeWBRvAiy2fzLV
         uZNgA7OAbEKTaDwWs616U6U2pX76SuqKPlfdQoiLKraXl9awfubPi6o/GzDFa1YZ8AKB
         L3gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=yW6PuKsGhKOnPJq1CS+p7K2bjfLsoNIESmcKgh89dQw6UD9avRHJGkRHAM+rb/d6wA
         7ZnInunDpqR/Mv6hnob771CSOhdAKq/TbOVFJCPAqRsPtV10uXx5KLCjgN6COCSQcm8p
         skTvT5tp7smBdSy50g5/0FlzuiLnKlDXLGSgx7uDs2IGbdtjKSBajRUy9l/Zi5tZeJmr
         rY0HOask/ofb+PTtc4oh8XQlOEvqouvCFaHphMw5XE002q+wL9/HtRODCi/6yoblaguk
         7jv3IW2rLqYaDtkwzXQpC5YH4BpovGuJszXhZf0cCRquUEQnxRGJivpLbeB+eSpBMUwX
         PkUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQxX8inG;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id n5si272688otf.3.2020.03.22.07.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQxX8inG;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id ck23so4803733pjb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 07:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=gQxX8inGkYT2jQ0/Df9oFZyZMlfoMV5p/JaSLg8uBbKwhmwyn6PDhK/1YCpAatRibB
         kEsm5zmwEzpJyfU1kLezGAUP+jxH4jRNfklwndGSkuvFhEKZBBMgZlO2w41aQZwbTLU6
         IOBwGXbgjk5lxmXNZAHeYPEU4lZFEJ2aBekCg/K+a5S0e0XN7A6hTlEcUXk46IWpLsKi
         EOAKcQQyQy7YvtTQgCr/RtSZMUbpqZcRR/0x7I8K7jcgzEIGoSMtzPODpPK/SXkbffqM
         IiZy9PmBAaTUqfcT/58RQ/w+g+cZ00hVxJRHZkvQhAw6v9b8QlfzKlFx0V2Gs6ylJHq3
         V1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=CRXCYsscqlixuAH+4yOZhalXOnhooIBg4HhBvw+53/t2zz0RNP22QrcDXxKRgrBzak
         Z5RnlMMNMfBe6COoA0+s9KvQLVJiwyPicbqtKKGUMBhlkdy7e3w1Ti24PBgvaO3fFJBK
         25eFQyxba3LRoALgEjM5wnVw72vk+O/eWFA4L7jBEdr+WaA8HEtCYx36PU/r9E/Eq3au
         VWnDd87/SOAk7USTzQGlLOnC80TarI+XbVpPIyaB3deFGnpCO6pHDzIuq/I68QMqH6MB
         C+4Ke+FatuXTX46nA1LPpc36O9cDCuMi9j2Ex26MCOTX7uTVuPXuKbIz2dXn0vk/9gk5
         f1ow==
X-Gm-Message-State: ANhLgQ3TVPjpzhGKS23dxqkjnTz2McYiY9trT6LS0lqGrBw0DHEzVook
	JNRgYpykD8Q/Ht3Z1ked0qv+cO9b7mXg2w==
X-Received: by 2002:a17:90a:d34b:: with SMTP id i11mr18982494pjx.180.1584886800547;
        Sun, 22 Mar 2020 07:20:00 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([47.29.231.191])
        by smtp.gmail.com with ESMTPSA id i20sm2967404pfd.89.2020.03.22.07.19.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 07:19:59 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:49:52 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, perex@perex.cz
Subject: [PATCH] staging: hp100: Add space around operator +
Message-ID: <20200322141945.GA31741@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add space around operator + to improve code readability.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..00b3db8144c3 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -119,7 +119,7 @@
 #define HP100_REGION_SIZE	0x20	/* for ioports */
 #define HP100_SIG_LEN		8	/* same as EISA_SIG_LEN */
 
-#define HP100_MAX_PACKET_SIZE	(1536+4)
+#define HP100_MAX_PACKET_SIZE	(1536 + 4)
 #define HP100_MIN_PACKET_SIZE	60
 
 #ifndef HP100_DEFAULT_RX_RATIO
-- 
2.17.1


