X-GM-THRID: 6803797198848917504
X-Received: by 2002:a1f:ae4e:: with SMTP id x75mr10599864vke.28.1584136461506;
        Fri, 13 Mar 2020 14:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a54:: with SMTP id p20ls804521uar.7.gmail; Fri, 13 Mar
 2020 14:54:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtahonWsQGHO7YtGfYNdr8LCfp75AgAG4mNaFwZn5AHLWYJPvup1GT9AdTIzJZV+yjTADAX
X-Received: by 2002:ab0:758b:: with SMTP id q11mr9948306uap.12.1584136460265;
        Fri, 13 Mar 2020 14:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584136460; cv=none;
        d=google.com; s=arc-20160816;
        b=C4yPqWKwM/9NYet2dgYEmAN4pP/1SBPiqF+bNqRWjWw+5I9hXuMTwKsJ9ZdO/RN7su
         Vp/pHxiuxD1ln4d6oAyaousRUV6ok8nOaytQO883HAYoGFIBdbzXjhYGIHFHBiu32//m
         peZiAO5Jj0Z/iyNWmZUtrQEpitF3brr686FEE++adbsUjuPWLg8hGQ7DlKm8JEwfoxbQ
         +gO5vWSJpjOgji3ZTwwsk98fBnZehO/dwq4Ex3En5KoHBC1EwjcpU3OIksoLL3+raCLH
         l4Q7lNalghbgbTW45rlFiF9Ir+F1Nn6spZ4QErZLr6tg1Zh8vbNV4b4ZCaQDWiAQ74OE
         vkXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/dJMlvrvUtVQZyGDitGBxSHlTPpDV9G9Otgq9dm0XHQ=;
        b=LmXW9SQf4DoMouam0lgxgD2c+2NI/CXU/blprq2i16Jq078G0FlYv0OecheR1A6tk8
         ksNRYaZFtgXU2qbr7/IUceGFET4OGMUAKqadj3Izqtoa8cL7zTuzE7fgGAh53nafZXLJ
         z665BhmqF5M8ctsFLt6SdWiPQpHyNG1gr8/bZz2gsdRTzIqaEgcstDkE6xX0arHORPnm
         aO07BY4G2i6VcMxGAUaxsQu+Nt2MZQDt7jiFvGZSTkPpUTdx5WrIlMSrHyce0lRqoWWu
         /k4e+G6fUq0cbe+gCSnaOBYvdaFP7gGP6Ifr1xaTTaA+uowBrDCdGnXyWO2cD9vtiLq6
         GYKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cll0Ly0i;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 205si482687vkw.2.2020.03.13.14.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:54:18 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cll0Ly0i;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x443.google.com with SMTP id i13so6081375pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=/dJMlvrvUtVQZyGDitGBxSHlTPpDV9G9Otgq9dm0XHQ=;
        b=cll0Ly0iqGyYase7sk2y5beuHi7+tcG5cXedb8/0b0cCVnURh2j8hKPNT8UETaEL+f
         E7PIX8gRU/7z/GxvVdSYISBQQoO45bXW99thInsSBBw4NALwZ4ogbp/Cn73rScb9psJY
         ziSMAyeOntAdrw9IGEDyhshLC51oQsmGBvP+U4T2ypvxxvcoVF9hUr3dB1AquYeDNHe0
         TWNTgAAQh5izO/W0jjlDzimYCSf4nDP7pXimNsD/BoeT9PJBcNWbLDZDuNIXtXvZfkk1
         zWPsEI+kbLBKov8k7f5szc9ah2l8bM8teyaQSbYKdCn65AjkTyq8WxqV29kmWaUQ0kgb
         Cpfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/dJMlvrvUtVQZyGDitGBxSHlTPpDV9G9Otgq9dm0XHQ=;
        b=VZ2/HZ3npqmexFDygtne2ZlMCo+qpzMEjxR0xTq41YNjwPr6GRFlm/bK0ansxdiL+D
         EgtvDYEoN2Endah6+aY26ztOZYlMuwp0lKLuamufMGPXuLEpCKtPBCEjRm1nWewo0yvt
         +6lZvTjcgwPGF3tVM5deMHtZTAbeNZ39gwGcYuCMcl4JvAyVLYkWPstpAH2pAYFwwmAn
         LgPe+Ug7onJWD95jJMWUG4U6jVLJOeVxqhrLl9zUy2V7sAonD3KQix0sOyy6VTf9HTuw
         z7IzI+w9Ssfwt6ebh4sPFFZ78c8Q0kbedmaG6Y1Ee2nwuWnQYxUrXfFVsCgqXZahgzEx
         pHcg==
X-Gm-Message-State: ANhLgQ0Pprki6dL/hF1aStr/Kc/OtiR2mf+Eg4JGPlb507ICxyhsHhKq
	BW5m19lsTMZeAfTLNEzcobYBhhMhnZ0=
X-Received: by 2002:a62:750c:: with SMTP id q12mr13442450pfc.304.1584136457750;
        Fri, 13 Mar 2020 14:54:17 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id o29sm3105848pfp.208.2020.03.13.14.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:54:17 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH v2 0/4] patchset for clean-ups in media
Date: Sat, 14 Mar 2020 03:24:02 +0530
Message-Id: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1

Changes since v1:
Renumbered the patches to account for a deleted patch in the series.

Patch 1: No Change
Patch 2: No Change
Patch 3: No Change
Patch 4: Correct subject line from `hanto` to `hantro`. And remove
unnecessary parentheses around `vpu` and `val` as well.
Patch 5: Deleted: No precedence issues possible.

Kaaira Gupta (4):
  staging: media: allegro: align with parenthesis
  staging: media: imx: remove temporary variable
  staging: media: imx: remove parentheses
  staging: media: hantro: remove parentheses

 drivers/staging/media/allegro-dvt/allegro-core.c | 12 ++++++------
 drivers/staging/media/hantro/hantro_postproc.c   | 12 ++++++------
 drivers/staging/media/imx/imx6-mipi-csi2.c       |  9 +++------
 drivers/staging/media/imx/imx7-mipi-csis.c       |  2 +-
 4 files changed, 16 insertions(+), 19 deletions(-)

-- 
2.17.1


