X-GM-THRID: 6666299764348289024
X-Received: by 2002:a17:902:7e0c:: with SMTP id b12mr7181377plm.146.1552118864038;
        Sat, 09 Mar 2019 00:07:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls5896153plt.7.gmail; Sat, 09
 Mar 2019 00:07:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqwL+iQnZlfNaWkEwsyc8wFZ5G4OPNPkN6GWUzeDX/1Mj231hj80Zk240aiFuA+ZmeJkEAWb
X-Received: by 2002:a17:902:b195:: with SMTP id s21mr7136902plr.31.1552118863198;
        Sat, 09 Mar 2019 00:07:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552118863; cv=none;
        d=google.com; s=arc-20160816;
        b=aT+zD9sk1aCvGtFmemJCRflUONHFXhFnS+XoWvZe5a1PTq1bBoOZaJ3AcW9vRaM7AM
         /gE9MNiz6MOllvfOgX5Rhx/5yQcXbUOGP8hfFoCPydWpiL5oeXOjv4gry5efSaAtZxa/
         lGsJsKxOU8ejoJVCSivUjOdD1EEsREY2kEBBGiBTxSpAdnNEQuU4wjuRWzd7t07d7OK4
         1eQN1ecRVwIrdEUtT4b2JwqKbPEYhoIkxLJ3Fin5+6qFVMdI6D9vvmyDx1n2TXC1G2AE
         dK6YPGUKAHGZEjrQ2gHx7Ov0vIdvHhvViZZsgWpqR1mm8BmiHgdOBOsmC3A3gAgyMv7w
         RcCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3AGdzokD8egXocu2xEnz4P1IkoKLuVtT5kkxaFjuMjY=;
        b=L6u4+DA483jN8SF68+AKefcpc5ANvhKNcoLqlOUgUtrwYDREfxWWyaXlihyammT6TW
         99AjlTXq3fY6BCt6kEV2BHn4ew94bZaLobX9KNlYatOV8uUMnGXiHSR4t0DUF0ngBrUO
         vOzBfd0n/SoqYIZW/NzuTChP2T4qgo5MRNI9i43twEU95DyBOf3rh/VW/3cw5NNkhk/b
         OgW9g7eql+0pvZmsZISUcEWTI3n+bv3xtyBNe/ns4qPfhi8WLGfE8gwO/1SsSuAEieGy
         IBGNvjLTD7q8jJoqxqg+i02aSgyC367/Kb29ZI28n54cnDwWHfnzY0NaWQTtEOgRtO5T
         J5Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TYjCDYSG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c12si884352pfc.2.2019.03.09.00.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 00:07:43 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TYjCDYSG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id n125so15859400pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 00:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3AGdzokD8egXocu2xEnz4P1IkoKLuVtT5kkxaFjuMjY=;
        b=TYjCDYSG7OZecH/2SEovIObhqzSGH4jUipm0WAf2VsvzSMIdsnwd5FOt9DWqhrRkr+
         XLkQ++7YTo15B7ssN2BNME+kVHWj1JHXnxuvgwnycyDHMML29vjm9YdWhx2UXo1gqMy/
         SQCtbGEqHhzKpYbmtrd7nzKlTi4OSasct+XbFTV/RmqCusU4ekAcSRGnwR0IaWOEH7nW
         LmfQjhJXNFVJ0b49mnvO7F5Aev2v4XElaQeSVJIlfg0yp0vURqt6sLl6JFgjCcQwMSs0
         2rL/+N9TLGTOaoh/0sDJtEeG14YFyEPJBSKJuAhmdUE0aZ1rszUrl0daDjJwQELNSnmo
         vMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3AGdzokD8egXocu2xEnz4P1IkoKLuVtT5kkxaFjuMjY=;
        b=DSD2PVWt4Y9ujSam8qHFi526PEqLBl+XZjP0WMr+Cxn0hk5bkjYooKrAIHkJj8zVpB
         j7MES/v0w6zT+/5EkAgYTm99XXsUAHz6hFNmjbYo2eaKPXMk5ND1OirvaHOEAFg1HhYF
         wI8Q8C4aGJPjqqAGIwQBjUtQnOabsnTgTncf1K1CSoX3f+n48+MmMaMTuX0zJxbIs3j7
         H/R5pcd9X3j2TiqDEt81I6D3+fERJzYQKwAR1ft0oJpWJ/0IJDCaQRGX7WqtkFUCvg43
         8f4m8t2EXrLTJTKvcYCz/H7bytJXpvBjiHTwkqXCFRRL5H6I7IoAdhvGlXqT7Cixswdh
         9nbQ==
X-Gm-Message-State: APjAAAUkat5qpzE22J7RCNGRo8TO1vCDeqy5GprJ93Aiicxj+bONbtMC
	LnSWgmTTVCqArUNtz0oi/x4=
X-Received: by 2002:aa7:8005:: with SMTP id j5mr22544442pfi.211.1552118862668;
        Sat, 09 Mar 2019 00:07:42 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id 4sm20813969pft.96.2019.03.09.00.07.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 00:07:41 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH Coccinelle] staging: speakup: remove unnecessary assignment statement before return
Date: Sat,  9 Mar 2019 13:37:21 +0530
Message-Id: <20190309080721.26121-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary assignment statement before return from function
find_specifier_end. Issue found by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d36f947..a748eb8052d1 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.17.1


