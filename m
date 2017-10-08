X-GM-THRID: 6470825285154504704
X-Received: by 10.28.238.220 with SMTP id j89mr828721wmi.6.1507473922682;
        Sun, 08 Oct 2017 07:45:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.66 with SMTP id x63ls648218wma.10.gmail; Sun, 08 Oct
 2017 07:45:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBDM48BRG7gTuSpmRyJrO187aoWkVeysr3T6CpvlVdVwiz2jpUIPIgae4Tlqro0rTUhExF3
X-Received: by 10.28.136.12 with SMTP id k12mr871713wmd.10.1507473921600;
        Sun, 08 Oct 2017 07:45:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507473921; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/eLfvA8yjYQejYEyQrgGdad8YoUlmBroAa1bfJFX/xPQnQWB9EEch4E88rjpc2mRo
         S+59sB88YP+MnEKwdDoU07iHzueaESo3vjWeMeJJDGSe/7FXJH1tKt3A41n4CW7VNL4/
         znbj1POWM7gGNyQ36TWPFHJmolliZw7RZNvMrsqluwKDJ2/vXsbylvK5NGoH59ilsH5n
         RG8NK7SWqQclVT+CMz9LJk4TY19ykJzb7DY1qkv3u+oyq5f179jndOwSaCp8AheVCyyb
         AgNeD4VkgRwCLQczKCg2aG/yHFni7NZP9l+MyjEUT3A6oGXKNF0js38Fen4UWU+PeC0s
         J5TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version
         :arc-authentication-results;
        bh=YL1MpNI6yixvan1GALMY5oa6iQsQe96+zWspI92bNJg=;
        b=sqn0FXfJ10O3tMULEeOwwtd7HtHKpdArmIfidiOX5Pz/lbUmBhJylEQMxfnNKXhXFY
         itJQxXNs+aKwONaCOTTLhkJrRp+3+qsZBJ/iG/AueAHSKCBVjZcMH9+XOszqRGfcQhvy
         S/4GW4A0V0gMNd1B4BQsNwMrKM9WkUaPqdYI0G/TBw9ZCVBe/kn7t4kf1ZXh1Lurz+bm
         tQKbVlb7Zurf/7lnW+Xj8DyvcR4KMQbiK9o/BwXA/Wo5Z6Z1cQPmbbcgvkMu+qgQyQCw
         tq/mDMk63fkkBEHoJunOOP1NPgykUErT4nx/WsQFVDUoYr7arXAinn0fkw0jyXj1yd00
         9IZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Return-Path: <chris@chris-wilson.co.uk>
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id r65si524264wmf.2.2017.10.08.07.45.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 07:45:21 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 9077349-1500050 
	for multiple; Sun, 08 Oct 2017 15:43:35 +0100
Return-Path: <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
To: Harsha Sharma <harshasharmaiitr@gmail.com>, daniel.vetter@ffwll.ch,
 seanpaul@chromium.org, jani.nikula@linux.intel.com
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20171008140407.13927-1-harshasharmaiitr@gmail.com>
Cc: outreachy-kernel@googlegroups.com, intel-gfx@lists.freedesktop.org,
 "Harsha Sharma" <harshasharmaiitr@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20171008140407.13927-1-harshasharmaiitr@gmail.com>
Message-ID: <150747381515.24532.16488907175098177864@mail.alporthouse.com>
User-Agent: alot/0.3.6
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
Date: Sun, 08 Oct 2017 15:43:35 +0100

Quoting Harsha Sharma (2017-10-08 15:04:07)
> @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *=
dev,
>         ifbdev->preferred_bpp =3D fb->base.format->cpp[0] * 8;
>         ifbdev->fb =3D fb;
>  =

> -       drm_framebuffer_reference(&ifbdev->fb->base);
> +       drm_framebuffer_put(&ifbdev->fb->base);

Whoops.
-Chris

