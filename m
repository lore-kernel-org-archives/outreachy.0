Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17BA7A
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 12:50:25 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id y10so15271896ejw.8
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 05:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8TaSxjlVtMxfrBSAFxIIxTLP3pV3qUvExBA7cAdK7g4=;
        b=gFpTPHQKAtv7h762kYs7iOhwTyoVOlBR3l4RHUHoLdtPa98NZ/YOTS5NEOVgQQ2vzH
         RDl8904I+mO8neZP270zpPhBm0AK6tBODKnBK83ncK6sp1290c3EyD2SYUu4tsvJNe1z
         FPJBbSFW3nFJvcxlUojuqRxVGcja6Um7UiD+w2Nh2NvMEVnQ5D0V27HU99HUmUG7XHJH
         Moq+kETGzHHpGr70/GRb5Eu2mF2HzpVU1//7Luof18Sw19xKY0R4xzCw+y1sJVAXSw/8
         Hdr8DjZqpwRt20KUC6eK1229UTW2T51XprJepXRwfwRCH1/S18U+i28lQQ6Sw4uEm7pU
         Ct5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8TaSxjlVtMxfrBSAFxIIxTLP3pV3qUvExBA7cAdK7g4=;
        b=byMWhwMbYEArET2osFzahyJlq1vgYlEaTqZkranopu3dA8MZba6I32kDB03p+zxzgn
         UDRty6mpPUYDH3SL7IRU0EBpNdDtBX1XhDlimOSXdob/7myhCwI2UReyydfxxyOCgKFp
         xYbE//uvEiA6RY5OtHzEYNuBEv0ZAAmLh2hhpFhTPI0kJPBaLQbdsQ2LcfDPaDcUfizL
         E7EK8nd4pSFTc4buhw4Kr0ODq2YeXQQeyMkOLe7r6W5WFc4RrGSNATH9pKV9EtTT4u5Z
         +f304BrPhDPlSlYoiG059hq97eqJYmSPvmPGqfWvaO2+wzt64T6ApkYgv3JVklQ6GF4d
         J+QQ==
X-Gm-Message-State: AOAM531kXrBcNdZMqPVAdobYakeFb4eORjD0DW3DeC+dtnUtWumf+ulo
	sJBVSjvJPvNrG0H4sxgVlRA=
X-Google-Smtp-Source: ABdhPJwGijLtqVacwGVLRF2+SD3NllVwkuZBm8vUY4hFNa9e8e3fz1MYnswhjUZ4U/29P//i0Cbyng==
X-Received: by 2002:a17:907:eaa:b0:6e8:9105:b3c7 with SMTP id ho42-20020a1709070eaa00b006e89105b3c7mr13076200ejc.26.1650372624183;
        Tue, 19 Apr 2022 05:50:24 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id bm6-20020a170906c04600b006e89a5f5b8fsm5697377ejb.153.2022.04.19.05.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 05:50:22 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Documentation/vm: Include kernel-doc from highmem-internal.h
Date: Tue, 19 Apr 2022 14:50:22 +0200
Message-ID: <7371421.EvYhyI6sBW@leap>
In-Reply-To: <2824835.e9J7NaK4W3@leap>
References: <20220418081740.21001-1-fmdefrancesco@gmail.com> <Yl3Z8Qll+zGo4v/D@iweiny-desk3> <2824835.e9J7NaK4W3@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 19 aprile 2022 14:35:48 CEST Fabio M. De Francesco wrote:
> On luned=C3=AC 18 aprile 2022 23:36:49 CEST Ira Weiny wrote:
> > I thought I saw a patch fly by which changed the comment of=20
> kunmap_atomic() in
> > include/linux/highmem-internal.h?  Did I miss that somewhere?
>=20
> Sorry, in my other email I responded after misunderstanding your question=
=20
> because I had just noticed a typo so that I had something else in my=20
mind.
>=20
> It looks that you are talking about the following patch and, if so, you=20
saw=20
> it correctly:
>=20
> "[PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h" at=20
> https://lore.kernel.org/lkml/20220418175638.30018-1-fmdefrancesco@gmail.c=
om/
>=20
> I forgot to send it to the Outreachy list.=20

No, I'm a bit distracted and I remembered it badly :(

This patch is already here at=20
https://lore.kernel.org/outreachy/20220418175638.30018-1-fmdefrancesco@gmai=
l.com/

=46abio

> I'm about to resend it only to=20
> this list in order to make Outreachy's organizers to know about it.=20
> For v1 already had an "Acked-by:" tag from Mike Rapoport.



