X-GM-THRID: 6744854230361702400
X-Received: by 2002:a05:620a:218e:: with SMTP id g14mr2082722qka.422.1570408751518;
        Sun, 06 Oct 2019 17:39:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:11b2:: with SMTP id u18ls2621286qvv.16.gmail; Sun,
 06 Oct 2019 17:39:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqykiJFM9/7ApsaHGV7vVN6OHpWECAu19bKL/6F5CDGJcUZ7XRmkHXSCoOXS76+MWELmNPsj
X-Received: by 2002:a0c:8003:: with SMTP id 3mr24890038qva.161.1570408750428;
        Sun, 06 Oct 2019 17:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570408750; cv=none;
        d=google.com; s=arc-20160816;
        b=Ycly7gIFEpz/Cd6gIcsqsM/i527m02TkHjJksz17TTEO6r4mR8XvBT5tJdfqDEHXG9
         +5sr8dU7AKXYHbX3nDArUA881G8kMLwJ6n2mORWm6nGLHEpzkadeJPpmaRJGKTqJRb77
         Ra8cm5KAjYLGLUtTdIcV4Yb1SewsWlSHuNOJh2Etw6o7h1WOgJKDp6QN8jdrraTQTVup
         hBQr/NGwRv9Y5YBkW2xPeoU+XX2yYJ49Yi/ha7Abdp0fcvvmWuRJCZIkGQmHzk8/TxTD
         066lbrsfWRCBdTu+WSBrnO8mqeALIh8LdY7iRi6w9ACp3cJ8vOvOBHikBSkm5yC5rgHd
         CVVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ethHIfH6l8qWDruvEXMFQVRVxb/jgRioUR76fNjnA40=;
        b=JgoEhfGX+5BGgXQ3Pvth9BJMDabNpahtccYu4TDnR9rOrFaOtddwlJexAFxNMA9K91
         U0AyGBH08vtqdWWQo/qBDnf058Wwnqkt8E1FoMn2naMDvMqUgIMGth8/pTQ/PtfG7/oS
         t4R8RtB8wNbWR7AHjkFFs0y9+4J7HE7V7nvxhRvNRY6GJPh7cHjMENVh1SZG2J7zkMhX
         SbDi1bKnoj0kBix3BSUvGsH+W4ii0wHA9QufOR8DKnolcSfQjsqyV6PCcyayovUgD/0E
         vtl/XxZx625oDkk+FeYvcTrW5439q3MNiAkpTY3bC26xsvtiUc4lC/cz9bclscZ/V9Ug
         nDzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVksOn+h;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id w41si1120186qtb.4.2019.10.06.17.39.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 17:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVksOn+h;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id 201so11034426qkd.13
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 17:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ethHIfH6l8qWDruvEXMFQVRVxb/jgRioUR76fNjnA40=;
        b=pVksOn+hvEDwW5Hob0DZvf59zzN5jo0aOyL8jYZPRDJ9DERpX3SJ+wfncSqWxSWftN
         93LfUDB0JHp0ELnAO4acJcAn1inzqLV3CUMj/iDy/rO1od8p/dk47E5NkLrXmw5pdbo6
         1tTQVDOsmJyAK7A+C05r7CvH/fJVGEYcbbpeZ8nfLlij9TqyXLbviFVhGGC5/Hf73fan
         eoltZVGeg3NlRk4MY2MxsK5iLf7ar/rST08gWG2N/RaOKJMcjrwktNHzua0/XQWphWD1
         pzErbwvtiLG+RORqgdPiufwqJMiQNQwaFRsBRqi+oZHiC2EJAtXXCijSQWkljs+udG33
         LTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ethHIfH6l8qWDruvEXMFQVRVxb/jgRioUR76fNjnA40=;
        b=PyYXXgi/Kl4HVMqBYYRm8zUBok2hR0RedYcQe8PqIObsMUpZzebvK7uwAZfO6Dmws5
         jAB/a2B5FeSE19c3zcVc6DntEi433XmJ5bOwFXkHHn8xEpmbIb3Biz+xo1G2bvvvCxKM
         Vq/h2cK70pi7Yn4V4Q0j1uGp2zIoHN6Op6e7GP5HU/yrpD+bbLV4D84Y81cvFPFhiNzN
         WPUs/Sm6dxCE4V8yqF3H6CetSPyeewEQvuadU5eGl4u0Wrn/D8+h6iIC9vnHbBoqEVi4
         n7a2mS9EwOcsrKnhqeGYHWQXTnt8vMsyKBtxVfEKqQmUt6i8QAMeqSUrodymkjVVBiBj
         tK8A==
X-Gm-Message-State: APjAAAUWSVRHC2RAh0GUUcvLR5Pub2/WMWv1CC854hJaYlNJLjCytx1L
	SBwXlQEQa7+096xiGwn1P9Gnknzp8I91Mg==
X-Received: by 2002:a37:883:: with SMTP id 125mr20634082qki.478.1570408749803;
        Sun, 06 Oct 2019 17:39:09 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id m63sm7110774qkc.72.2019.10.06.17.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 17:39:09 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	payal.s.kshirsagar.98@gmail.com,
	himadri18.07@gmail.com,
	colin.king@canonical.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis in file rtl8712_led.c
Date: Sun,  6 Oct 2019 21:39:02 -0300
Message-Id: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index db99129d3169..5901026949f2 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -75,7 +75,7 @@ static void BlinkWorkItemCallback(struct work_struct *work);
  *		Initialize an LED_871x object.
  */
 static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
-		 enum LED_PIN_871x	LedPin)
+			enum LED_PIN_871x	LedPin)
 {
 	pLed->padapter = padapter;
 	pLed->LedPin = LedPin;
-- 
2.20.1


