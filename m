X-GM-THRID: 6616747745212366848
X-Received: by 2002:a17:902:6946:: with SMTP id k6-v6mr267353plt.13.1540581716776;
        Fri, 26 Oct 2018 12:21:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:568f:: with SMTP id h15-v6ls1067659pfj.3.gmail; Fri, 26
 Oct 2018 12:21:55 -0700 (PDT)
X-Google-Smtp-Source: AJdET5enCAPbdNPMQ7d5uFYGqP8hl+RAEbyT2YoHKqNT7ulOdBDROZlP/ihm+N9Kz83mnQ9OPtTf
X-Received: by 2002:a62:1981:: with SMTP id 123-v6mr2611642pfz.65.1540581715975;
        Fri, 26 Oct 2018 12:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540581715; cv=none;
        d=google.com; s=arc-20160816;
        b=SAFNEIBMtNavOWIW8OgXQaaI+2Qpz4H1f0WDMI2I0BJqNa/oJoS0QemuYS/7PDBPYc
         V5Ozm8EDLWngKly/EG5O4/Y8SSVOiPtqCINodTO49YELaVYBg2p2xMwU9Sv9/LOjWDZR
         IRUYYmAjmxhUsjp52WKGjHlCTkgemFahyWyTFSEgJoQlY3jnuVWLhr89U+DUVwOsTAE8
         Wz9IHqrwyRFQhG7veX2wcneoKSu+zwb8Dq9vMKm/sG+tfKNf7OLaITyvVthHhjOskZxo
         nOnKrYH4WNFpFmxtAZi44/LEJBihrbYx0HmcxOc2rqKeVbfXPkhRkwwR1zIVTjgS25nh
         Ls0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LtZcx+CVUn7EikVnICHRi5K+TmBpVqD4Q/OjAbD6y+c=;
        b=aIj9cN1Ostv+B79teQB1lIQA994hfj9i3pwHrjTeFXsxE08TSb84d3FAeVAthG9J61
         a0t0evN4YrjwuBAIt0C9Vi4wd2JaQTqYkirscdfiMg/68cUa/dggnxzDQzq8jMp1KYNw
         wLz0KxJpcQAz3w8892xQxhaguMc/34z+XSZrUYEpQblcXAsow8QtT5QL/oGdaJShBlpk
         UCXbb7XqxvHaw3LRr9wDpsDWSYvpSGWT02tOv9tlwb46R56Kv2TjLOxRLMuqn0r2gTTY
         zWMsFk0DDhx6oSEXKBJFA0+4QBxINoViX3XDZLtYpInYnFf1mfM95f2thB4Vh/q2RuNU
         4I3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gognR37Y;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id 184-v6si688466pgb.4.2018.10.26.12.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gognR37Y;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id u34-v6so2523608qth.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LtZcx+CVUn7EikVnICHRi5K+TmBpVqD4Q/OjAbD6y+c=;
        b=gognR37Yl/wR9pYklgrwhENDoVkkiKTN6BNtb/wMovjk0JCZZrBd1NQh2FR1Ok+3s/
         860m0gd7ulL7bhlStIHcgOPHeszN2C94iKTniYb7foCs8a3stjiQ6P5DSIZAcap02ZVJ
         aJJQCXxNQk6DGuqD03GjuVn7/+/6WTb5IC5ICzGe5wL8eGlKynwwwG3HmGgLefYY7N09
         VfbjVtwxs/4Qp/OFgK+50oK59tpFV3MecNVlggg/adJ9pbL74iwn1ED5qAodo77OGJyf
         DtW0jEZgU2v258jHdYp9bdFOiJjsmlAg64fkExR1tYHu+I4a9dPPxu5dUprmI8kGQYk/
         wudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LtZcx+CVUn7EikVnICHRi5K+TmBpVqD4Q/OjAbD6y+c=;
        b=X9XSqZoyKhqQYllZBtSI/J2H9ZqqhZxFYMAGAawU5/7jAlmycqTkXWvFyN7GM7ZWxj
         qzzXoW6J9EDOS2S7ByZgFEPk0XtJIGHyj+i+KoRMS0VlhjsTo+S9C8mf/qza1woU1VeD
         Sp2YM7E5mlXHJRlBYs96lZ2oK2gY103LNFpziCB+UNQgUAwRi61EFl5jY/owKiHEIhtv
         7e3AMmFJUR8R6LG9yshbFbXyqFNqrWC+VTIHwbr0iWH1IToucU4VdqwwIJORoOt8trb/
         2pBKy0hPr9ksZjJFGBirsTEy2ZtjWt2qMWvARbFETyw0J0MKyAEDSLjloWOin1MkM8S+
         uHlg==
X-Gm-Message-State: AGRZ1gLDzp0EUMYKdcWYRvG1+wQNyfE+2cAnA5Kro2ArsynmwuZZIr27
	lD/y7nU/Ww7wKaQJHIe5JVY=
X-Received: by 2002:aed:20e7:: with SMTP id 94-v6mr4437312qtb.296.1540581715073;
        Fri, 26 Oct 2018 12:21:55 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id t128-v6sm8307402qkh.80.2018.10.26.12.21.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:21:54 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:21:50 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] drm/qxl: Remove trailing whitespace
Message-ID: <fb0e2237bc505c855a0a842c081a39d524c571dc.1540579956.git.shayenneluzmoura@gmail.com>
References: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540579956.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20171215

Remove extra tab and space to clean the checkpath.pl error.

ERROR: trailing whitespace

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/gpu/drm/qxl/qxl_dumb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/qxl/qxl_dumb.c b/drivers/gpu/drm/qxl/qxl_dumb.c
index c666b89eed5d..089e5fcf80e0 100644
--- a/drivers/gpu/drm/qxl/qxl_dumb.c
+++ b/drivers/gpu/drm/qxl/qxl_dumb.c
@@ -52,7 +52,7 @@ int qxl_mode_dumb_create(struct drm_file *file_priv,
 	default:
 		return -EINVAL;
 	}
-	  
+
 	surf.width = args->width;
 	surf.height = args->height;
 	surf.stride = pitch;
-- 
2.19.1


