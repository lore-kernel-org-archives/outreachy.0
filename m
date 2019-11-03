X-GM-THRID: 6754760383787958272
X-Received: by 2002:ac2:5328:: with SMTP id f8mr13934733lfh.128.1572800004668;
        Sun, 03 Nov 2019 08:53:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c97:: with SMTP id x23ls1534379lji.2.gmail; Sun, 03 Nov
 2019 08:53:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqyej9cN3vam/lYKFjdoKJYnSq2JZk7xQpp+2ZEybyCZytF3LjhOE0N2Mi8AgZ3D+3DSwFie
X-Received: by 2002:a2e:96cb:: with SMTP id d11mr8973491ljj.82.1572800003557;
        Sun, 03 Nov 2019 08:53:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572800003; cv=none;
        d=google.com; s=arc-20160816;
        b=ZG5/tDEqvMLopa2WLsJVT71q1H6odR4D5HML60lkrhAPnZL80HFiaNOr/WU9LGI3Bj
         Oqzij8E8IlLR063axWp2Khik/jYpcI78RvpXmlZYBs6kZhG2Wt9hKWpa72zsgBcTPO23
         kyYPqIuIx1gEJIXPVSbJHDi7wzJ1WLDNjSbJUo56dJrjG/4CiBFZji4R6AGk2G/em2ai
         JcgfBA0ccimZFxstPU5W8En5mRSAh4VzuvUjMMmcVn8ts6mzq/pFAxKozeBkgco5cu68
         WkuBN2lPE7pAqGlESlrwEHI4sKDIqACgNzDm8hTbIRMts42n1723gGYgMoq0gs7z/IVf
         nhIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hnt5nsAEqac1gpa3nc/zaA5itYrq3S0EOOSzvV2I3iU=;
        b=xBme4NOZsDgJs1yoEo1OV+Vq1DfHT9fchbmLfsB54fx8gpq5HnNdzY99Hpfuv84A0F
         TyA9JWDX6YFTeBEXG1OzFqStTE+icX/XXtJZX2ud3275FNCwU1QFqlI2kj17dwYn+4LQ
         kdKA6+GeuRSWDXq6vIHXFcZPLjKv26WEZAq8yA7jg1NG3kkUXsM3pJqOilnvLXdmAdPi
         Misklo156IQDDLplQkr2DrO6s/zLV+ChK2NkZqvGbTzVp6TQynjcaW8XJvWyosXs+vFS
         ObyagBlryJDOQVy/UXHGvvLbInIKN73OBldHFoUMwCIrq+PgYkqUa1a/TKdr52HowGsr
         d/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNTOZTXg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h21si103134lja.5.2019.11.03.08.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:53:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNTOZTXg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id z19so9485786wmk.3
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hnt5nsAEqac1gpa3nc/zaA5itYrq3S0EOOSzvV2I3iU=;
        b=rNTOZTXgob24QIUItw+XlvxytwQcVRwvNoj8UCAhKXLyQ6fGJR4RXdpbFuvPOF1GVl
         4fFP+k/5Awk0VoXVzRrMFDopRpWG4aEepPyuhkRsyc+JNu7o8rZf7oHYOoPaNDfVRezJ
         Kx8jZNm+TNpPullSyoxoXrESDcNZRvfKpwzjlPTkOWvPaHiPbAtdfSTN3rRFqR2llPOf
         wG3UYTs7HbeqpW0hRVzMxkYRt7Wp1AzGm/8bcqn7fwRf818ZZMlQnQP2I1qCzwFitVbU
         vIqMrymizZfC8hPP3Z6AeHwlDmwPZn6Lmd8pG48b51ObXNPhWS9eCJoGIT6AM7qbu4+/
         T9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hnt5nsAEqac1gpa3nc/zaA5itYrq3S0EOOSzvV2I3iU=;
        b=D9YXONqqMowq8GER/BakwTMkpcr9Eye/FhOkglkt8n+oXH0o7PzjYXwB5hZiVpHPkw
         5MJuTM9JoQU0PACfiT4W6uxP1x5ZTPXFV8JjUFX7fGd9RUffwbptI4GufgGau2bhEsp+
         yhEgwhe9a0xncXId/Gjq76PqWY3UNRYi5mvjFlhtupbSUMdb/9WZxpQzxf828uN54DyJ
         dNW6Z5fh6VLpSC1hay70f9ifd9YeQ3xm5kQrFBD7qLGyq2ByCUsCkDKlCg8UgpU3IR6T
         ATP1UpLKxsmgcodBHUPMpe0gUAforBQ73Taq+VAULk3Wdp3rdTg/kGegUW5516f/VxY8
         Breg==
X-Gm-Message-State: APjAAAVJAW/kM7uAwr4traEju+k9/eSrF3Y2+yC+g0xyS0WaEhSXIsQb
	nJXsIHbsSLhLufvp1RVPd56f6IwmsTua
X-Received: by 2002:a7b:cc89:: with SMTP id p9mr18147624wma.99.1572800002688;
        Sun, 03 Nov 2019 08:53:22 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id o187sm13180408wmo.20.2019.11.03.08.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 08:53:22 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v4 1/2] staging: wfx: replace 0 by NULL as the return value of a pointer-returning function
Date: Sun,  3 Nov 2019 16:53:07 +0000
Message-Id: <20191103165308.23843-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191103165308.23843-1-jbi.octave@gmail.com>
References: <20191103165308.23843-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 0 by NULL as the return value of a pointer-returning function.
Issue detected by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
changes since
v1 submits change of zero to NULL with no accurate log message of what
was done and title.
v2 improves on log message description: remove the word "fixing", rephrase
log message and title.
v3 gives accurate log description on changes and reason behind.
v4 includes a log of changes done on each version.

 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.23.0


