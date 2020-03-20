X-GM-THRID: 6806104906273914880
X-Received: by 2002:a19:f008:: with SMTP id p8mr4585395lfc.217.1584695657648;
        Fri, 20 Mar 2020 02:14:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls1147903ljj.11.gmail; Fri, 20
 Mar 2020 02:14:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vti4q+uBCmuIJr0bfj3CwE5/1ziLDEGnS1xDzeIDkrPg35Lf9ILaCLQdyd1YDS/3c/cgrZy
X-Received: by 2002:a2e:870b:: with SMTP id m11mr4756661lji.109.1584695656322;
        Fri, 20 Mar 2020 02:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584695656; cv=none;
        d=google.com; s=arc-20160816;
        b=Kn/q6SQP2Y5BzFWoQ/CEUuAKjEheH9AQVzU1MqWw8HgEZvF+MyT4Yxu8VnUxeffpJA
         ypQuOJfGQA7fHcKNDXkqAvLjUUhdFsNt+A2X6G/Z840kHz8il7w8W1jgqEZEpS+yEkVe
         avxXcGPljM2MPjuuTirADfBrFE0lMsPnZWuRjE9si/jbJ9stm9HH80W5g3NX7ZOtRmeC
         UU9txgvAjObviGu5h7i/VS6KnNcJFtqFAcnGS2AyL49UBgm+cWOl4DWSLAiwlqEsLugT
         PsAD6X5yT/k5810efhjhLl9QJFl+KeNmHGRHRMqUY/KT5uLXjh3S5SQxtex3EOLCVh0d
         ocqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=upZG8VG/Mel78DTzL/+58RkGOBYafcasyQNYl9m7WZ9OgSf+/xFZ4LQCoxh6t3koni
         ZLTGMs6RJ3rsp/YFjhOmFjAiRl6gpOvvjR3qCHpAPojz0YlUDzVJSvxIGR8UVEapqwC3
         YgCCx5K6uXVJgYqAp1YHPr10ey1pe5E4wbyAW3yA4/w2a+Mdfa8dtJ010y4XO3+9Q25c
         wBwSgDyzppkGWyvfyMSu7y4qKyBxO+cAyeGHudUbH/XTsSgAQ1RyEZr+2YtXoRwNyP9h
         ZZJLMDEkoQGVXiawuoqQnyLSmBPEthy3zWkoShgL3AzDd12WMhRoGanlJGmVqMhy+byh
         e2tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m26iqJcU;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id t3si141002lfq.5.2020.03.20.02.14.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 02:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m26iqJcU;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id w1so5599254ljh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 02:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=m26iqJcURsyPPt/UsfN82RZu9Q3LVP6vPJSwwL9QH+u4zOO5yN8J2A7uj3lKDQF/u4
         MEwh5APUTpmR4waxKp4aFfLMg+heOyA90sll6MC4aZLxT7euvQHpsPpywOeOjyHqaIv0
         YfyoJolNFkuAQjGaaXIaGO2oTyfURiJixnmWNqJUGUHpjRz+c/yL9D2AjTExzZ2JPAcq
         Uu9aj3IzM2+ajiIrdZ0c/EA2XWruaVjnNgUZx2dLJvauH0OIQI7FZvIC3Rxjn1am7r0O
         sGc9cgYTlDTMFv/2HZ3ZDSXBqwoULvBESEguvw3ppxywg1Vq+7WL2xzNscTzAwqudgAo
         VJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QU4RN4EtkuJKZhC4tTxbQi7GTpKwNRktYK0ZiyOfs7U=;
        b=UYMG2UKzmCIq+Z8n5bApl/ideLefu4ooB8dm36VBEnUbaIds2HCtm1qajOiKAyj+uw
         lsu2oi5LPGSu46btIht2vPIHVSY55n/DwsXHZw5vBHIkZs1n707YqFRLoCt55HdW45th
         60fezgXXcxIHVaH/YitHM1KeM705JP+Joj8trPHJHe+sHz5jg5ozY6Cc2Gcc2r9TbGn3
         Wxv5fB3sWv2DONuWjEqaVU71fQ7KcWPncmzyUHm5noiozP9PQHrJeQ9ytrz7HFwOO/TD
         8qOeyQ/hhcXWSi4Z3qZlHDmMEDDpG0KQT2b72C/ZGCNPn1MN4pZ+ezjqpikXb+GnJJC9
         1g8Q==
X-Gm-Message-State: ANhLgQ3RWZ9+2XURhiM9m3Dfd2HXDG+EVnwN8hiZh4eyDVj+a10ljlo1
	2esrjP+dbRsz/fHzVecdftlFvMaQaN0=
X-Received: by 2002:a2e:860e:: with SMTP id a14mr4564670lji.218.1584695656109;
        Fri, 20 Mar 2020 02:14:16 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id v200sm3060526lfa.48.2020.03.20.02.14.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 02:14:15 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:14:13 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: Avoid multiple line dereference
Message-ID: <20200320091413.GA6302@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

merge a line -> with a line ending with a sign

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 74dac74..7d5a50a 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1094,8 +1094,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			src_ssid = pmlmepriv->assoc_bssid;
 			if (!memcmp(dst_ssid, src_ssid, ETH_ALEN)) {
 				if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-					if (is_same_network(&pmlmepriv->
-					    cur_network.network,
+					if (is_same_network(&pmlmepriv->cur_network.network,
 					    &pnetwork->network)) {
 						_clr_fwstate_(pmlmepriv,
 							_FW_UNDER_LINKING);
-- 
2.7.4


