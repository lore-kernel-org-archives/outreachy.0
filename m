X-GM-THRID: 6802581190455853056
X-Received: by 2002:a17:906:f1cc:: with SMTP id gx12mr19005286ejb.373.1583849357099;
        Tue, 10 Mar 2020 07:09:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:33d6:: with SMTP id w22ls8215492eja.11.gmail; Tue,
 10 Mar 2020 07:09:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtjFDZjqaGcIuPaVLOWucKBUuqNImjrcWzYot+1a6Es4GGQp2afICrND4Xuygc7FrblBkbO
X-Received: by 2002:adf:bb4a:: with SMTP id x10mr24971103wrg.178.1583849355886;
        Tue, 10 Mar 2020 07:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583849355; cv=none;
        d=google.com; s=arc-20160816;
        b=rBzQe/VIcRvRvyeVflZl8yqNRv4bRNbt7VzPDCydMWFGCL+6F59HeB6YzOPYSsax0s
         0Z3xX7fGpdq3H/w+ePM2cEi4aJfh4rTppKWBg6kRdbr3kvSCNQ0TnL3gCXyzFiKfo4tL
         O+N0agUWhXcByrT4E16D156eV3s9qTKW8KhQVQjvtBr0ou9EnASsrPADUCqYLkvKmkoY
         4oraLvCzEwbRwIly1yaAnb/Q61K/iIFNGiRazmZqDo2OwDw/wNOEw+Drrip5Wupw3r36
         cRDbhCY3Z+eBvYi239vqAa8tzsDLKrG6zCyhTBUjkIaFWOJHBcnA7glmIa6TMgHNrpmA
         nP5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=EVmdUErlHgPCTjzcoXBY3tFpgMnQ2jCuYxXXnySyUP4=;
        b=h3hvE4kw2yOw+FUfeK1rOYwewrq4mCKvfnXQYOTDOcDtzfloA6Vtta+tp7a6+4Viv+
         rfTehCDlhIrNloguwLD743Mapf/2TSelsvWNIq1SixqN1PT8qvbGMaxJ2vjNyGpGU6dh
         LgQiJ/y/IXirqiQkxNNlmcDnV4FHouO5fauosLnPdy09tWNNlEBzsQ5nI4qRZa91em8G
         IBHTMOtp4/l9C3ARO5DJcKxzGkfnp3aYbMuuncep+rvGLmHDx0lWG0MiiywqIEmcrbOx
         8FJcac4UuZQ/Y6ci7YWvcefByXUuB996C6JFrL3ugju1i3uLL6X5pyTEV72ighhs0eDF
         3sMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TZdECuf8;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n3si345999wrs.3.2020.03.10.07.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TZdECuf8;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x441.google.com with SMTP id p2so15253505wrw.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=EVmdUErlHgPCTjzcoXBY3tFpgMnQ2jCuYxXXnySyUP4=;
        b=TZdECuf8fOr4qpzoiIV3T9Xs2odSGdLbM+npPJxM3/E20WJGKoUjc+FLZt+2PvukmE
         tJlo6FjkzTFQElxrrDA8Jb9mzUASO8/Xx9nQklbssEVgXq8GX/ZtAv1tGu1McAaIjtrG
         VTB+9xHA4tu6m2jcOf5X5L69Ap3EjsGq0xc88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EVmdUErlHgPCTjzcoXBY3tFpgMnQ2jCuYxXXnySyUP4=;
        b=rhD8laQJaGpXugCd9j7KVFLvnQKbpEtlcrbo/ShGqfjgHll/Uf0uOg6gQ7qkwFmUel
         EqYBpbIImyUBh5t6xK1kS9Uc3LME8AqkZyAmMZpt99WXbukuny02Tdk96DAvzeWFURHk
         KwE8sEAxKMRXn+YsEvggCZeP5pi2/j8wlOnZUb2M/l4xL9435DUvzchcfzeQTW7WpTXn
         9rgnyspP49rKx2crktYKl0TqrH2xL0FXlj2fze4wz8eGFKf1B4P+xJUa/X33hAECHk1B
         cq4H9l18SySuXDWTMHoVxt51bBlQNMe7yMzFoFm/C9TpAs+iWBB/AHYlsgPBVO5l5gqB
         sF0w==
X-Gm-Message-State: ANhLgQ3SnfTDirLrW4KSSN4xszGl1EWt9Q3QgYo2y4009hzx4T0otvcA
	nJHD03pY/IEEmO0jwduwtdD4JW3h/f+xWQ==
X-Received: by 2002:adf:f58f:: with SMTP id f15mr3507700wro.16.1583849355255;
        Tue, 10 Mar 2020 07:09:15 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id v8sm64262427wrw.2.2020.03.10.07.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:09:14 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: vt6655: power.c: remove unused code and improve readability
Date: Tue, 10 Mar 2020 15:09:06 +0100
Message-Id: <cover.1583848946.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Here's a set of patches that performs code cleanup in the file
drivers/staging/vt6655/power.c

Lourdes Pedrajas (2):
  staging: vt6655: power.c: Remove setting ATIM Window in
    PSvEnablePowerSaving()
  staging: vt6655: power.c: code reformatting for improved readability

 drivers/staging/vt6655/power.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1


