X-GM-THRID: 6467514574021066752
X-Received: by 10.13.224.4 with SMTP id j4mr947649ywe.80.1505835603557;
        Tue, 19 Sep 2017 08:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.216.68 with SMTP id b65ls8000219itg.1.canary-gmail; Tue, 19
 Sep 2017 08:40:03 -0700 (PDT)
X-Received: by 10.31.151.202 with SMTP id z193mr890404vkd.124.1505835602966;
        Tue, 19 Sep 2017 08:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835602; cv=none;
        d=google.com; s=arc-20160816;
        b=dqfQae/XsyYA5vd0L5ttctKdZA/rmECjcmr3kruYZVtkcOnoJxjvkNzQMkx1+o+pB7
         4uJLN0pOq03IGXADpxVVcJOKmXxOW82w5bAPJSWLKeiPhb9Okejkj8uO25P96la1DqQQ
         CuWOb9x/adFIod5sM+FtuZh4+jDBHfGKSFjS0+zaV83pLaCunieA9UFSXPy1pVTW8K+S
         4CzgBzC8HH9mqsUvL9QZGBqeu/ynS8Tf2O32c5yIfaJ0VD82jXGr3580MASVn/E3cV1e
         7K1R/dY1WrZ/7yiAjPcZu6ucQx2tnepgSYTh0rd+QBAP++CNCgy61A/JFWnHWU168sU/
         52UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=Kr3sLs4Q+M4RQ8LgTVb7jEV8h8KgS41BZQNIVUmzNaSvuqCBoUfmMdsbvWpCOY96KM
         rc65yb/JJP4gssT6LzlPQIUMYMRjVicziU1HYa2Cso6L+8SD+niEg4kLlQINUJvbA7SD
         SUDWpPFZMucO7P8E6B6OIRkHqbeLohSFEYkn82QMyHMngWEbdqq1HHXaEKGnhdV4fMON
         snea6opIvOoYItKfvxtVSaVF2tcr/BQr47PzTbNZra6KEOGo0Rwn++2wt8Lf57HrhDCY
         29W1JOMwTNWUDWO/A/6HnGAjwthsk2z79jqAo+9NdndDq66O11o041Qa0l/AWtK0QCd8
         JahQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SN1HSPLh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id k76si269289pfa.10.2017.09.19.08.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SN1HSPLh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so602pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=SN1HSPLhGDXPzEyoygoiZ5kEd4Vd/ZARx+4RPmeMK9AvDWq7zroAhgI0zR1da1qqdA
         gQHO+lcc7MS9aZop+UfqbG8qTfT5tjB9BijI1Y9WW5evWZZE2wNioRiQyG0U6JtrZkfk
         GhYLDdbCnk12QIz1gTOf/ABs7tGZKjZHXIjTwWhITJwH3INygme6LBwklVUpfLG+1lWo
         zJCaP1MXNf5iNrEUFhIenApAalXxnppbY6/8zB9xI9LXrtkyC1wcehkRc7DgtTLBXysU
         OIc1EX999dCM3H/O/KLfVt0XFTC230N1OyXOGO1LMvs2jUijmRpIcV6DArvT2g8i2XX1
         WOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=fiFFlNWCkX3Y/6c+MlfuP6JFMLnBm0CNkl4Ol2enQ1k=;
        b=mmS3adTCMz7UUBWUZ9BqIpFueg74xnC1gLZrN4zYOJVd9QLonbv/Jv/7D73yQwaHp8
         9tMOil/URPsBkmkswB/RN/4uapl6M6USAifmbkW4s1Nsn2/yatgcD1Peher+bYwuEZJx
         cTS4JBxfMQV3OMf+DG/sijzWgTilUIox15npss0eQT69GDCcyFDcOosPIiwfCv/kXubP
         TerAsons8J9XKT9si3zMI/V4Y38cuveeumQTSWX908y2IqHo6XHP3XzPtFXqVK2iV5Mn
         o8P1HFtneOWUV1yXUqbwreL6YYSw+wEFLXWXjbQJzmFfATtEpUODVn2i5Vp3oYQNc82h
         7y3w==
X-Gm-Message-State: AHPjjUj2KaMwFVNyLe/T4hTmi1demkjCsSPfatdZuc9u59GHmKjI65pF
	JUg0pT2+SH1EkzmWu6i33BI=
X-Google-Smtp-Source: AOwi7QCaOI5LPsvvdr8wTaJqoU2LyJJKvKNdKQKdjd+vD80ZR/3v8jLKwiO5JqFaBtB/riJlw2kKiA==
X-Received: by 10.98.110.70 with SMTP id j67mr1651970pfc.63.1505835602609;
        Tue, 19 Sep 2017 08:40:02 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id e7sm3864336pfi.188.2017.09.19.08.40.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:02 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 04/12] staging: lustre: drop macro that has no uses
Date: Tue, 19 Sep 2017 21:09:16 +0530
Message-Id: <75013ad8f7b244215fe1b51167971fb47aad530b.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


