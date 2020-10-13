X-GM-THRID: 6883171070944215040
X-Received: by 2002:a63:5005:: with SMTP id e5mr715096pgb.236.1602613150735;
        Tue, 13 Oct 2020 11:19:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls295196pjw.3.canary-gmail;
 Tue, 13 Oct 2020 11:19:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGteq1c7pda8YLWWF8Xn3/lgghUmSWdPIRqGcseY+WtvKdrTFJEnHHoQ5RPZ0xNj4dkpWj
X-Received: by 2002:a17:90b:512:: with SMTP id r18mr996736pjz.49.1602613149059;
        Tue, 13 Oct 2020 11:19:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602613149; cv=none;
        d=google.com; s=arc-20160816;
        b=GJ4iUPt+ZCwdUdapvkYeF7HiizHGyii4l2vB8RGbJTcLLT6wEZec25nlM6n7bcq59h
         nToHNzJtrorKEg48LVgp3Y+/G++UWP/5r/nQXlXch/Db+A9JNfsE+4/63PS7uEmb8c2E
         WDQxry12ecJZ8WHuQ4cVz+wKOoRUbsPcKDMqPmqrYORbiiDWlrP18gkSTglwRWtPm91S
         JO4PtIQG67+UA8hsxwOdRVQ70Cd4b9rjisrnAzfGPG21oKMq4tUAgWLqguDhbvkqaMam
         AeAtrcz5+WcpSSySTI7dpD2iKtRlNyqNH1omCB/WreWesm3xmKm1KGKy35008geMkVL+
         l0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=l3NdRJh2K27APMUk0jcltcDKfNEvusRPeLFoymmYli4=;
        b=IlfVgaWvYNNWu3AWozud5B9RE7Y7ADeLFL80kn9jXlldumsD/SvMZQXePzO9U3gHj9
         fQZfS9iGVL5VBQsdaqjngZgznuLlfhlMlUhPq1Fej30dhF0QWgtwDYMMbafPd5RJhE1H
         wpoJ53GunmFtmVaf/hneXCn9FwAOd5CnH6Gw7X765TUPKJDErRpQnnFITH+aymzFAwmq
         K0GVwsMJzmlmgKckNezv8eJYO3+fFTeuOAysYaJHJQoMtGkdb8Ll0s+VMnCXwgV7RnkY
         RpgVfpkJW9yahjd1K2LGaModhJIoZacyXpmO+d4wUoc9tQZY1T5SsnhBH2qQQKExJj+q
         QigA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DjcKTdby;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 19si49205pll.5.2020.10.13.11.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 11:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DjcKTdby;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id h4so429595pjk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 11:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=l3NdRJh2K27APMUk0jcltcDKfNEvusRPeLFoymmYli4=;
        b=DjcKTdbyYqec395W2Ya89XN4TaYr72R0dO/x4TKTtE+eJNW1VkUP4VQMNWyC4Dpl8j
         3vwIuOP0yqzH1cIvYN21DxQnJd3gEmyn+ozbWXw6L5nKUXLxhu8vtmE2JPVLEhhHukHd
         hwRYY7O9eQIlBpHzfaKP5g/XbYrAAPuRk6AEiQFdZGuQdRMvztxyYwvCKBNx9HGjwiDS
         ykIVObL4IA42NpzmdqQ8HgWelaTYk77pS4YPMJy/FNYAF0Gx1Z+oi/l+1y4E2eMoMAVA
         Oi1QHjTYptbeEdzIn70cQtq12Qy8332P3cgVD/rv6IPSr4qX2QBipOk2uFn5XXopXmH8
         3Tsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=l3NdRJh2K27APMUk0jcltcDKfNEvusRPeLFoymmYli4=;
        b=tlEm6jo05UujmfPL2qfxpsI6KXWflVhTpIvUis22/PM3nvHjNH9xvsLibW9aWAtRfd
         il4tRllH01aHjmF9FCBw1+u7sJHZyMGS9V4jrgpPUqhK6kqPrYFy03MNmO/VEBrhBR1M
         9NFy9Tuk0OeHlczJ6H5xr3DuSNsBjZAfSbJgXCFLQlSjBPqv0BpnQGoTJgZ8pIB6V4w1
         BeGMSr2Fht3twiNC+hPomu+y7v1+mZKzwpYkJfdY0oSs1EK/661bPGk6lLbUdiSmomoe
         FJD7g6WZoKkIiY4bnswKrXtLs35vzvrvgwpDz943t54/liq4pwjrjasvBH08bHBaRPgu
         HjDQ==
X-Gm-Message-State: AOAM5300hc3j/uGAoG5GOgowST2sG6uXuoKq/SDurgSiCUVF2coLoCyi
	tZDBqtJi4zjuIDzrAHUUQuzUwwyqt3KtwQ==
X-Received: by 2002:a17:902:b604:b029:d3:7919:bb39 with SMTP id b4-20020a170902b604b02900d37919bb39mr1070873pls.78.1602613148560;
        Tue, 13 Oct 2020 11:19:08 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id h9sm290272pfh.213.2020.10.13.11.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 11:19:08 -0700 (PDT)
Date: Tue, 13 Oct 2020 23:49:03 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: gpio: 104-idi-48: improve code indentation
Message-ID: <20201013181903.GA67299@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Address code indentation warning messages by checkpatch script. Combine
split function parameters on one line. This also resolves the "use tabs
instead of space" warning by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

 drivers/gpio/gpio-104-idi-48.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-48.c
index 94c3a9bc4e75..b132afaf7d99 100644
--- a/drivers/gpio/gpio-104-idi-48.c
+++ b/drivers/gpio/gpio-104-idi-48.c
@@ -132,8 +132,7 @@ static void idi_48_irq_mask(struct irq_data *data)
 
 				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
 
-				raw_spin_unlock_irqrestore(&idi48gpio->lock,
-						           flags);
+				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
 			}
 
 			return;
@@ -166,8 +165,7 @@ static void idi_48_irq_unmask(struct irq_data *data)
 
 				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
 
-				raw_spin_unlock_irqrestore(&idi48gpio->lock,
-						           flags);
+				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
 			}
 
 			return;
-- 
2.25.1


